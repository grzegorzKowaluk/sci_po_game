cmake_minimum_required (VERSION 3.20)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER "CMake")

project(po_game)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

include("cmake/SFML.cmake")
include("source/CMakeSources.cmake")

add_executable(po_game ${SCI_PO_GAME_SOURCE})

target_compile_options(po_game PRIVATE
    "/MP"
    "/W4"
    # "/WX"
)

target_include_directories(po_game PUBLIC
    ${SCI_PO_GAME_SFML_INCLUDE_DIR}
    "source"
)

target_link_directories(po_game PUBLIC
    ${SCI_PO_GAME_SFML_LIBRARY_DIR}
)

target_link_libraries(po_game
    ${SCI_PO_GAME_SFML_LIBRARIES}
)

add_dependencies(po_game
    SFML
)

add_custom_command(
    TARGET po_game
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/assets ${CMAKE_BINARY_DIR}/assets
)
