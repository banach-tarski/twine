#!/bin/sh
git pull
git add .
randomstring=$(cat /dev/urandom | tr -dc '░-▓' | fold -w 32 | head -n 1)
git commit -m "░░▒▒▓▓`date +'%Y-%m-%d %H:%M:%S'`"+$randomstring+░░▒▒▓▓;
git push