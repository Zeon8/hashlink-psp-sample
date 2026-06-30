cmake_minimum_required(VERSION 3.11)

add_definitions(-DHL_NO_THREADS)
set(WITH_LIBS OFF)
set(BUILD_SHARED_LIBS OFF)
set(WITH_VM OFF)
set(BUILD_TESTING OFF)
set(WITH_FMT OFF)
set(WITH_OPENAL OFF)
set(WITH_SDL OFF)
set(WITH_SQLITE OFF)
set(WITH_SSL OFF)
set(WITH_OPENAL OFF)
set(WITH_UI OFF)
set(WITH_UV OFF)
set(WITH_VIDEO OFF)
set(WITH_HEAPS OFF)
add_subdirectory(hashlink)

project(hello)

include_directories(src/generated)
add_executable(${PROJECT_NAME} src/main.c src/generated/hello.c)

target_link_libraries(${PROJECT_NAME} PRIVATE
    pspdebug
    pspdisplay
    pspge
    libhl
)

# Create an EBOOT.PBP file
create_pbp_file(
    TARGET ${PROJECT_NAME}
    ICON_PATH NULL
    BACKGROUND_PATH NULL
    PREVIEW_PATH NULL
    TITLE ${PROJECT_NAME}
    VERSION 01.00
)


