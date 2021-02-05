#!/bin/sh

#Put this file at: .git/hooks/post-checkout
#or
#make a soft link

branch=`git branch --show-current`
git submodule --quiet foreach --recursive "git checkout --quiet ${branch}"
