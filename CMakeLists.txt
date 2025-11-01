cmake_minimum_required(VERSION 3.10)
project(punettsquare LANGUAGES C)

# Find GTK 3
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK REQUIRED gtk+-3.0)

# Optional: put the binary in build/src/
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/src)

# Include GTK headers
include_directories(${GTK_INCLUDE_DIRS})
link_directories(${GTK_LIBRARY_DIRS})
add_definitions(${GTK_CFLAGS_OTHER})

# Add executable
add_executable(punettsquare src/main.c)

# Link GTK libraries
target_link_libraries(punettsquare ${GTK_LIBRARIES})
