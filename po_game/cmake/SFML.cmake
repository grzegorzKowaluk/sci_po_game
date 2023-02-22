include(ExternalProject)

ExternalProject_Add(SFML
    PREFIX third_party
    GIT_REPOSITORY "https://github.com/SFML/SFML.git"
    GIT_TAG "2.5.1"
    CMAKE_ARGS -DSFML_BUILD_AUDIO=OFF -DSFML_BUILD_NETWORK=OFF
    INSTALL_COMMAND ""
    UPDATE_COMMAND ""
)

ExternalProject_Add_Step(SFML
    CopyDynamicLibraries
    DEPENDEES install
    COMMAND ${CMAKE_COMMAND} -E copy_if_different "${CMAKE_BINARY_DIR}/third_party/src/SFML-build/lib/\$(Configuration)/$<IF:$<CONFIG:Debug>,sfml-system-d-2.dll,sfml-system-2.dll>" "${CMAKE_BINARY_DIR}/\$(Configuration)/$<IF:$<CONFIG:Debug>,sfml-system-d-2.dll,sfml-system-2.dll>"
    COMMAND ${CMAKE_COMMAND} -E copy_if_different "${CMAKE_BINARY_DIR}/third_party/src/SFML-build/lib/\$(Configuration)/$<IF:$<CONFIG:Debug>,sfml-window-d-2.dll,sfml-window-2.dll>" "${CMAKE_BINARY_DIR}/\$(Configuration)/$<IF:$<CONFIG:Debug>,sfml-window-d-2.dll,sfml-window-2.dll>"
    COMMAND ${CMAKE_COMMAND} -E copy_if_different "${CMAKE_BINARY_DIR}/third_party/src/SFML-build/lib/\$(Configuration)/$<IF:$<CONFIG:Debug>,sfml-graphics-d-2.dll,sfml-graphics-2.dll>" "${CMAKE_BINARY_DIR}/\$(Configuration)/$<IF:$<CONFIG:Debug>,sfml-graphics-d-2.dll,sfml-graphics-2.dll>"
)

set(SCI_PO_GAME_SFML_INCLUDE_DIR "${CMAKE_BINARY_DIR}/third_party/src/SFML/include")
set(SCI_PO_GAME_SFML_LIBRARY_DIR "${CMAKE_BINARY_DIR}/third_party/src/SFML-build/lib")
set(SCI_PO_GAME_SFML_LIBRARIES
    "$<IF:$<CONFIG:Debug>,sfml-main-d.dll,sfml-main.dll>"
    "$<IF:$<CONFIG:Debug>,sfml-system-d.dll,sfml-system.dll>"
    "$<IF:$<CONFIG:Debug>,sfml-window-d.dll,sfml-window.dll>"
    "$<IF:$<CONFIG:Debug>,sfml-graphics-d.dll,sfml-graphics.dll>"
)
