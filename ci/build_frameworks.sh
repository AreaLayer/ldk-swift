#!/bin/bash

set -e

# https://stackoverflow.com/a/4774063/299711
BASEDIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
BUILD_PRODUCTS_DIR="${BASEDIR}/../bindings/bin" # directory to copy the shared library and headers into
BUILD_LOG_PATH="${BASEDIR}/build_frameworks.log"

# initialize the build log
echo -n "" > $BUILD_LOG_PATH

# force xcode 13.2.1 for the tuple fix for macabi
sudo xcode-select -s /Applications/Xcode\ 13.2.1.app/Contents/Developer/

if [[ $CONFIGURATION = "Debug" ]]; then
	RUST_CONFIGURATION="debug"
	RUST_CONFIGURATION_FLAG=""
else
	RUST_CONFIGURATION="release"
	RUST_CONFIGURATION_FLAG="--release"
fi

declare -a destinationNames=( "iOS Simulator" )
declare -a lipoDirectoryNames=( "iphonesimulator" )

declare archiveCount=${#lipoDirectoryNames[@]}
for (( i=0; i<$archiveCount; i++ ));
do
	CURRENT_DESTINATION_NAME=${destinationNames[$i]}
	CURRENT_LIPO_DIRECTORY_NAME_INFIX=${lipoDirectoryNames[$i]}
	CURRENT_ARCHIVE_DIRECTORY="${BASEDIR}/../bindings/bin/${RUST_CONFIGURATION}/${CURRENT_LIPO_DIRECTORY_NAME_INFIX}/xcarchive"
	CURRENT_ARCHIVE_PATH="${CURRENT_ARCHIVE_DIRECTORY}/${CURRENT_LIPO_DIRECTORY_NAME_INFIX}"

	CURRENT_LIPO_DIRECTORY_PATH="${BUILD_PRODUCTS_DIR}/${RUST_CONFIGURATION}/${CURRENT_LIPO_DIRECTORY_NAME_INFIX}/lipo"
	export LDK_C_BINDINGS_BINARY_DIRECTORY="${CURRENT_LIPO_DIRECTORY_PATH}"

	echo "Building xcarchive for ${CURRENT_DESTINATION_NAME}" >> $BUILD_LOG_PATH
	echo "Current lipo input directory: ${CURRENT_LIPO_DIRECTORY_PATH}" >> $BUILD_LOG_PATH
	echo "Current xcarchive archive directory: ${CURRENT_ARCHIVE_PATH}" >> $BUILD_LOG_PATH

	pushd "${BASEDIR}/LDKSwift"

	mkdir -p "${CURRENT_ARCHIVE_DIRECTORY}"
	xcodebuild archive -scheme LDKSwift -destination "generic/platform=${CURRENT_DESTINATION_NAME}" -archivePath "${CURRENT_ARCHIVE_PATH}" ENABLE_BITCODE=NO SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

	popd
done
