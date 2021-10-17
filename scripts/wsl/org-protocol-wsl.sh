#!/bin/bash

# your org roam path (be careful to not add the trailing slash)
orgroampath="~/Codespaces/org-mode-base/agenda"
orgroamdir=`basename ${orgroampath}`

# killing previous requests, otherwise they proliferate
killall emacsclient

# get the actual path that emacsclient wants. $1 will contain the bad path.
file=`echo $1 | sed -n "s/.*${orgroamdir}%2F\(.*$\)/\1/p"`
fullpath="${orgroampath}/${file}"

# for debug purposes
echo "raw : $1"
echo "path: $fullpath"

# uncomment second line and comment first line if you need to debug something.
# nohup emacsclient $fullpath &
emacsclient $fullpath
