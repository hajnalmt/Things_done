#!/bin/bash -e

#This is a script which automazies git commit method
PATH_TO_PROJECT="/home/hunolulu/Repos_Mate/Things_done/"
cd "$PATH_TO_PROJECT"
echo "$PWD"
commit_message="$1"
git add . -A
git commit -m "$commit_message"
git push
