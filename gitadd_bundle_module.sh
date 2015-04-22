#!/bin/sh
dir=$1
url=$(grep url $dir/.git/config | sed "s/.*url = \(.*\)$/\1/")
git submodule add -f $url $dir