#!/usr/bin/env bash
# where everything is located
export WORKING_DIR=/working

# which architecture to build for
export ANDROID_ARCH=x86

# where you extracted the python-lib zip
export PYTHON_LIB_UNZIPPED=${WORKING_DIR}/python-lib

# where you extracted the python-x86/python-armeabi-v7a zip
export PYTHON_ARCH_UNZIPPED=${WORKING_DIR}/python-${ANDROID_ARCH}

# where the python include files are located
export PYTHON2_INCLUDE_DIR=${PYTHON_LIB_UNZIPPED}/include/python2.7/

# which .so file should the build process link against
export PYTHON2_LIBRARY=${PYTHON_ARCH_UNZIPPED}/lib/libpython2.7.so

# where the python executable _for the target platform_ is located
export PYTHON2_EXECUTABLE=${PYTHON_ARCH_UNZIPPED}/bin/python

# where to find the NumPy include files
export PYTHON2_NUMPY_INCLUDE_DIRS=${WORKING_DIR}/numpy/numpy/core/include

# where the Android ndk is deployed
export ANDROID_NDK=${WORKING_DIR}/android-ndk-r15c

# where the Android sdk is deployed
export ANDROID_SDK=${WORKING_DIR}/android-sdk

# where to build everything
export OPEN_CV_WORKING_DIR=${WORKING_DIR}/opencv/android-build/

# where the base of the OpenCV project is
export OPENCV_PATH=${WORKING_DIR}/opencv

# change to android directory
cd ${OPENCV_PATH}/platforms/android

# run android build script
./build_sdk.py ${OPEN_CV_WORKING_DIR} ${OPENCV_PATH} --abi=${ANDROID_ARCH}