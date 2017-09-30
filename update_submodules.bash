#!/bin/bash
git submodule init
git submodule update
# check out master branch of each submodule
for i in src/*
do
    echo "checking out master for $i"
    pushd $i >/dev/null
    git checkout master
    popd >/dev/null
done
