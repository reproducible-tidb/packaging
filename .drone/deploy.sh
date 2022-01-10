#!/bin/bash
set -x

git checkout -b results-drone
git remote add release $GIT_REMOTE

git config --global user.email "runner@drone.zhoal.pw"
git config --global user.name "Drone CI"

git add results
git commit -m "Drone CI: Update build results"

git push --force release

