include(ExternalProject)
cmake_policy(SET CMP0048 NEW)
cmake_minimum_required(VERSION 3.9)

project(sclang-dev VERSION 0.0.1)

# if the Scintillator main build directory was not manually specified, attempt to guess it from repository structure.
if (NOT INSTALL_EXT_DIR)
    message(FATAL_ERROR must provide a value for INSTALL_EXT_DIR)
else()
    message(STATUS "Scintillator build directory set to: ${INSTALL_EXT_DIR}")
endif()

ExternalProject_add(supercollider
    PREFIX ext
    STEP_TARGETS install
    GIT_REPOSITORY https://github.com/supercollider/supercollider
    GIT_TAG 3.11
    GIT_SHALLOW ON
    GIT_PROGRESS ON
    UPDATE_COMMAND ""
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${INSTALL_EXT_DIR} -DSUPERNOVA=OFF -DSC_ABLETON_LINK=OFF -DSC_EL=OFF
)

