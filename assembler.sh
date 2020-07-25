shopt -s nullglob
DIR_ARR=(./build/*.nes)
BUILD_VER=$((${#DIR_ARR[@]} + 1))
echo "BUILDING V$BUILD_VER"
ca65 -t nes -o "./build/build_v$BUILD_VER.nes" "./SMBDIS.asm"
echo "BUILD COMPLETE"