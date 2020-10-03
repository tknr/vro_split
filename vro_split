#!/bin/bash -x
export IFS=$'\n'

DATE=`date +%Y_%m_%d`
argv=("$@")
CMDNAME=`basename $0`

if [ $# -eq 0 ]; then
    echo "Usage : ${CMDNAME} [dirname]"
    exit 1
fi


for dir in `find . -type d`
do
	cd "`readlink -f ${dir}`" || continue
	dvd-vr VR_MANGR.IFO VR_MOVIE.VRO || continue
done
