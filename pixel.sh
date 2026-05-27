#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/PixelOS-AOSP/android_manifest.git -b sixteen-qpr2 --git-lfs
git clone https://github.com/mdnoyon80123/hotdogb_local_manifest --depth 1 -b inf-q2 .repo/local_manifests

/opt/crave/resync.sh

source build/envsetup.sh
breakfast hotdogb userdebug

m pixelos
