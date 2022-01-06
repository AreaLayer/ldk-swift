pushd ../
PROJECT_DIRECTORY=`pwd`
LDK_DIRECTORY=$1
LDK_SUBDIRECTORY="$LDK_DIRECTORY/lightning-c-bindings"
# echo $LDK_SUBDIRECTORY

[ "${LDK_DIRECTORY}" = "" ] && echo "Usage: ./docker_shell.sh /path/to/ldk-c-bindings" && exit 1;
[ ! -d "${LDK_DIRECTORY}" ] && echo "Provided directory does not exist" && exit 1;
# [ ! -d "${LDK_SUBDIRECTORY}" ] && echo "Provided directory does not contain lightning-c-bindings directory." && exit 1;

# use for direct ci folder access
# note: batteries will be missing. In parent directory, run `cp -R bindings/batteries ci/LDKSwift/Sources/LDKSwift`
# docker run --name "swift-generator-shell" -i -v $PROJECT_DIRECTORY/ci:/ci -v $LDK_DIRECTORY:/ldk-c-bindings --rm -t swift-generation-ci /bin/bash

docker run --name "swift-generator-shell" -i -v $LDK_DIRECTORY:/ldk-c-bindings --rm -t swift-generation-ci /bin/bash
