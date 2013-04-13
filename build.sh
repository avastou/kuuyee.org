#!/bin/bash 

rm -Rf publish.tar
rm -Rf _site && /1003/ruby193/bin/awestruct -P production
mv ./_site/ kuuyee.github.io
tar -cf publish.tar kuuyee.github.io
rm -Rf kuuyee.github.io
scp publish.tar  Administrator@kuuyee-PC:/
