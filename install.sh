echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic external/icu frameworks/av frameworks/base frameworks/native hardware/libhardware system/core system/sepolicy system/netd"
for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/android_device_coolpad_CP8676_I02/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
