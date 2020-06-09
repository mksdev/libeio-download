#!/bin/bash

#mirroring of cvs using crap https://github.com/rcls/crap.git

REPO_NAME=libeio
REPO_GIT=git@github.com:mksdev/libeio.git

if [ -d "./$REPO_NAME" ] 
then
	cd $REPO_NAME
	git pull
	cd ..
else
	git clone $REPO_GIT $REPO_NAME
fi

cd $REPO_NAME
crap-clone :pserver:anonymous@cvs.schmorp.de/schmorpforge libeio
git push --all
git push --tags origin
cd ..