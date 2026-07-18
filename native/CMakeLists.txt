cmake_minimum_required(VERSION 3.11)
project(hashlink_demo)

find_package(raylib)

set(HAXE_PATH $ENV{HAXEPATH})
add_subdirectory(${HAXE_PATH}/lib/hashlink-psp/git ${CMAKE_BINARY_DIR}/hashlink-psp)

add_executable(${PROJECT_NAME} src/main.c src/raylib_bindings.c src/generated/demo.c)
target_include_directories(${PROJECT_NAME} PRIVATE src/generated)

target_link_libraries(${PROJECT_NAME} PRIVATE
    pspdebug
    pspdisplay
    pspge
    libhl
    raylib
)

# Create an EBOOT.PBP file
create_pbp_file(
    TARGET ${PROJECT_NAME}
    ICON_PATH ${PROJECT_SOURCE_DIR}/ICON0.png
    BACKGROUND_PATH NULL
    PREVIEW_PATH NULL
    TITLE "HashLink Demo"
    VERSION 01.00
)

configure_file(${PROJECT_SOURCE_DIR}/player.png ${CMAKE_BINARY_DIR}/player.png COPYONLY)
