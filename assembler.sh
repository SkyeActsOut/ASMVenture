shopt -s nullglob
DIR_ARR=(./build/*.nes)
BUILD_VER=$((${#DIR_ARR[@]} + 1))
echo "BUILDING V$BUILD_VER"
ca65 -o "./tmp/build_v$BUILD_VER.o" "./SMBDIS.asm"
ld65 -t nes -o "./build/build_v$BUILD_VER.nes" "./tmp/build_v$BUILD_VER.o"
rm "./tmp/build_v$BUILD_VER.o"
echo "BUILD COMPLETE"
if [ $1 = "-n" ]
then
    exit
else
    bash ./run.sh
fi