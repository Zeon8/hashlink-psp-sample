@echo off
haxe build.hxml
podman run --rm -v %HAXEPATH%:/haxe -v %cd%/native/:/work -e HAXEPATH=/haxe -v %cd%/native/:/work -w /work docker.io/pspdev/pspdev psp-cmake -B build
podman run --rm -v %HAXEPATH%:/haxe -v %cd%/native/:/work -e HAXEPATH=/haxe -w /work docker.io/pspdev/pspdev cmake --build build