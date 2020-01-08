#!/usr/bin/env sh

DIR=~/Downloads
MIRROR=https://binaries.sonarsource.com/Distribution/sonarqube

dl_ver() {
    ver=$1
    local file=sonarqube-$ver.zip
    local lfile=$DIR/$file
    local url=$MIRROR/sonarqube-$ver.zip.sha

    printf "  # %s\n" $url
    printf "  '%s': sha1:%s\n" $ver $(curl -sSL $url)
}

dl_ver ${1:-8.1.0.31237}
