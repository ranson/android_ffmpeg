#!/bin/bash

ARCHS=(armeabi armeabi-v7a arm64-v8a x86 x86_64)
ARCHS=(armeabi-v7a)
for i in "${!ARCHS[@]}"; do

	ARCH=${ARCHS[$i]}
	source build-toolchains.sh $ARCH
	source toolchain.cfg
#	sh build-fdk-aac-android.sh
	sh build-x264-android.sh
#	sh build-lame-android.sh
#	sh build-ffmpeg-android.sh
done

# echo "Android FFmpeg bulid success!"
