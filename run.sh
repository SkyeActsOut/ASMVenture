if  [ $# -eq 1 ] # Checks to see if there is one argument which is the build version
then
    BUILD_VER=$1
else
    #Otherwise gets the latest build version
    DIR_ARR=(./build/*.nes)
    BUILD_VER=${#DIR_ARR[@]}
fi

java -jar ./Nintaco/Nintaco.jar ./build/build_v$BUILD_VER.nes