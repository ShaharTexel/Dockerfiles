#!/bin/bash -e

IMAGE="xeon-centos75-analytics-ffmpeg"
VERSION="20.2"
DIR=$(dirname $(readlink -f "$0"))

. "${DIR}/../../../../script/build.sh"
