#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://binaries.sonarsource.com/Distribution/sonarqube

dl_ver() {
    ver=$1
    local file=sonarqube-$ver.zip
    local lfile=$DIR/$file
    local url=$MIRROR/sonarqube-$ver.zip
    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

dl_ver ${1:-9.0.1.46107}
