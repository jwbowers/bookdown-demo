#!/bin/sh

set -e

# [ -z "${GITHUB_PAT}" ] && exit 0
# [ "${TRAVIS_BRANCH}" != "master" ] && exit 0

# git config --global user.email "xie@yihui.name"
# git config --global user.name "Yihui Xie"

rm -rf book-output
git clone -b gh-pages git@github.com:jwbowers/bookdown-demo.git book-output
cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
git checkout master
