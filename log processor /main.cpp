#include <iostream>
#include <fstream>
#include <string>
#include <thread>
#include <mutex>
#include <vector>
#include <sqlite3.h>

// Mutex for database access
std::mutex db_mutex;

// Function to process a single log line
void processLogLine(const std::string& line, sqlite3* db) {
    // Example: Parse log line (e.g., extract timestamp, level, and message)
    std::string timestamp = "2024-11-18 00:00:00"; // Dummy timestamp
    std::string level = "INFO";                   // Dummy level
    std::string message = line;                   // Full line as message

    // Insert into database
    std::lock_guard<std::mutex> lock(db_mutex);
    std::string sql = "INSERT INTO logs (timestamp, level, message) VALUES ('" +
                      timestamp + "', '" + level + "', '" + message + "');";
    char* errMsg = nullptr;
    if (sqlite3_exec(db, sql.c_str(), nullptr, nullptr, &errMsg) != SQLITE_OK) {
        std::cerr << "Error inserting log: " << errMsg << std::endl;
        sqlite3_free(errMsg);
    }
}

// Worker function for threads
void processFileChunk(const std::vector<std::string>& lines, sqlite3* db) {
    for (const auto& line : lines) {
        processLogLine(line, db);
    }
}

int main() {
    const std::string logFile = "log1.txt";

    // Open log file
    std::ifstream file(logFile);
    if (!file.is_open()) {
        std::cerr << "Failed to open file: " << logFile << std::endl;
        return 1;
    }

    // Initialize SQLite database
    sqlite3* db;
    if (sqlite3_open("logs.db", &db) != SQLITE_OK) {
        std::cerr << "Failed to open database" << std::endl;
        return 1;
    }

    // Create logs table
    const char* createTableSQL =
        "CREATE TABLE IF NOT EXISTS logs ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT, "
        "timestamp TEXT, "
        "level TEXT, "
        "message TEXT);";
    char* errMsg = nullptr;
    if (sqlite3_exec(db, createTableSQL, nullptr, nullptr, &errMsg) != SQLITE_OK) {
        std::cerr << "Error creating table: " << errMsg << std::endl;
        sqlite3_free(errMsg);
        return 1;
    }

    // Read lines into a vector
    std::vector<std::string> lines;
    std::string line;
    while (std::getline(file, line)) {
        lines.push_back(line);
    }
    file.close();

    // Divide lines into chunks for multithreading
    size_t threadCount = std::thread::hardware_concurrency();
    size_t chunkSize = lines.size() / threadCount;
    std::vector<std::thread> threads;

    for (size_t i = 0; i < threadCount; ++i) {
        auto start = lines.begin() + i * chunkSize;
        auto end = (i == threadCount - 1) ? lines.end() : start + chunkSize;
        threads.emplace_back(processFileChunk, std::vector<std::string>(start, end), db);
    }

    // Join threads
    for (auto& t : threads) {
        t.join();
    }

    // Close database
    sqlite3_close(db);

    std::cout << "Log processing completed." << std::endl;
    return 0;
}
