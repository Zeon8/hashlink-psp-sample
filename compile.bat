@echo off
mkdir native\src\generated
haxe -cp haxe --main Main --hl native/src/generated/hello.c
podman run --rm -v %cd%/native/:/work -w /work docker.io/pspdev/pspdev psp-cmake -B build
podman run --rm -v %cd%/native/:/work -w /work docker.io/pspdev/pspdev cmake --build build