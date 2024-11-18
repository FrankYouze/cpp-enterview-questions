## Set the minimum version of CMake
cmake_minimum_required(VERSION 3.10)

# Project name
project(LogProcessor)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Find the SQLite3 library
find_package(SQLite3 REQUIRED)

# Add the executable target
add_executable(LogProcessor main.cpp)

# Include SQLite3 header directories
target_include_directories(LogProcessor PRIVATE ${SQLite3_INCLUDE_DIRS})

# Link the SQLite3 library
target_link_libraries(LogProcessor PRIVATE ${SQLite3_LIBRARIES})

# Display an error if SQLite3 is not found
if (NOT SQLite3_FOUND)
    message(FATAL_ERROR "SQLite3 library not found! Please install SQLite3 development files.")
endif()
