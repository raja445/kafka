#!/bin/bash
set -e

if [ $# != 1 ]; then
    echo "Usage $0 appname"
    exit 1
fi

APPNAME=$1

#cd $APPNAME
BUILD_FILE=$APPNAME.tgz
BUILD_COOKBOOK_BUNDLE=$APPNAME.tgz

tar zcf $BUILD_COOKBOOK_BUNDLE cookbooks --exclude ".gitignore" --exclude ".git" --exclude ".vagrant" --exclude ".idea"
#mv $BUILD_COOKBOOK_BUNDLE ../
