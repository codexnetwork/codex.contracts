cmake_minimum_required(VERSION 3.5)
project(codex_contracts)
include(ExternalProject)

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
   set(TEST_BUILD_TYPE "Debug")
   set(CMAKE_BUILD_TYPE "Release")
else()
   set(TEST_BUILD_TYPE ${CMAKE_BUILD_TYPE})
endif()

add_subdirectory(contracts)