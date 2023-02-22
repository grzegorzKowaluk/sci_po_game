cmake_minimum_required(VERSION 3.20)

set_property(GLOBAL PROPERTY USE_FOLDER ON)

include("src/CMakeSources.cmake")

project(sci_project)

add_executable(project_executable)

target_include_directories(project_executable PRIVATE
    src
)

target_sources(project_executable PRIVATE
    ${SCI_PROJECT_SOURCES}
)
