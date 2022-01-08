#!/bin/bash
set -x

git config --global user.email "runner@drone.zhoal.pw"
git config --global user.name "Drone CI"

git checkout -b results-drone
git remote add release $GIT_REMOTE

git add results
git commit -m "Drone CI: Update build results"

wc -l /root/.ssh/id_rsa
git push --force release

