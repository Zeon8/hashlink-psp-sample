mkdir native/src/generated
haxe -cp haxe --main Main --hl native/src/hello.c
cd native/
psp-cmake -B build
cmake --build build