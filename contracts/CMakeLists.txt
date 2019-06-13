cmake_minimum_required(VERSION 3.13)

message("TODO: Need Imp Contracts By CDT For Codex")

project(contracts)

set(CODEX_WASM_OLD_BEHAVIOR "Off")
find_package(codex.cdt)

add_subdirectory(hello)