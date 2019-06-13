# Contracts For Codex

## Add New Contract

use init tool in this:

```bash
forceio-init -project hello
```

add project to CMakeLists.txt

```cmake
add_subdirectory(hello)
```

note the `forceio-init` is use for create a independent contract project,
so it need to change CMakeLists file to add project into contracts.

```cmake
project(hello)

include(ExternalProject)
# if no cdt root is given use default path
if(FORCEIO_CDT_ROOT STREQUAL "" OR NOT FORCEIO_CDT_ROOT)
   find_package(forceio.cdt)
endif()

ExternalProject_Add(
   hello_project
   SOURCE_DIR ${PROJECT_SOURCE_DIR}/src
   BINARY_DIR ${CMAKE_BINARY_DIR}/contracts/hello
   CMAKE_ARGS -DCMAKE_TOOLCHAIN_FILE=${FORCEIO_CDT_ROOT}/lib/cmake/forceio.cdt/EosioWasmToolchain.cmake
   UPDATE_COMMAND ""
   PATCH_COMMAND ""
   TEST_COMMAND ""
   INSTALL_COMMAND ""
   BUILD_ALWAYS 1
)
```

At first, it need add a project:

```cmake
project(hello)
```

second, change `CMAKE_SOURCE_DIR` to `PROJECT_SOURCE_DIR`.
