
set(SCI_PROJECT_SOURCES_NOGROUP
    src/main.cpp
)

set(SCI_PROJECT_SOURCES_SCI
    src/object.cpp
    src/object.hpp
)

source_group("" FILES ${SCI_PROJECT_SOURCES_NOGROUP})
source_group("sci" FILES ${SCI_PROJECT_SOURCES_SCI})

set(SCI_PROJECT_SOURCES
    ${SCI_PROJECT_SOURCES_NOGROUP}
    ${SCI_PROJECT_SOURCES_SCI}
)
