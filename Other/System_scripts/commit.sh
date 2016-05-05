#!/bin/bash -e

#This is a script which automazies git commit method
commit_message="$1"
git add . -A
git commit "-m $commit_message"
git push
