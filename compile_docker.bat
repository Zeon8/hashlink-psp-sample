@echo off
haxe build.hxml
docker run --rm -v %HAXEPATH%:/haxe -v %cd%/native/:/work -e HAXEPATH=/haxe -v %cd%/native/:/work -w /work docker.io/pspdev/pspdev psp-cmake -B build
docker run --rm -v %HAXEPATH%:/haxe -v %cd%/native/:/work -e HAXEPATH=/haxe -w /work docker.io/pspdev/pspdev cmake --build build