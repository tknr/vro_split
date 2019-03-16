#!/bin/bash -x
export IFS=$'\n'

DATE=`date +%Y_%m_%d`
argv=("$@")
CMDNAME=`basename $0`

if [ $# -eq 0 ]; then
    echo "Usage : ${CMDNAME} [dirname]"
    exit 1
fi


for dir in `ls -l | grep ^d | cut -d " " -f 10`
do
	TARGET_DIR=`readlink -f ${dir}`
	echo $TARGET_DIR
	cd "$TARGET_DIR" || exit 1 
	dvd-vr VR_MANGR.IFO VR_MOVIE.VRO || exit 1
done
