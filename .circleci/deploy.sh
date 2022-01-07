#!/bin/bash
echo $1
git config --global user.email "circle@ci.com"
git config --global user.name "CI"

git checkout -b circle_ci_release
git remote add release https://${1}@github.com/reproducible-tidb/packaging.git

git add results
git commit -am "Circle CI: Deploy"

git push --force release
