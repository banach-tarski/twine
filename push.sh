#!/bin/sh
git remote add origin-ssh git@banach:banach-tarski/twine.git
git pull
git add .
randomstring=$(cat /dev/urandom | tr -dc '░-▓' | fold -w 32 | head -n 1)
git commit -m "░░▒▒▓▓`date +'%Y-%m-%d %H:%M:%S'`"+$randomstring+░░▒▒▓▓;
git push -u origin-ssh master