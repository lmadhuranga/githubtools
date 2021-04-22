#!/bin/bash

# greet the user
function ss() {
 	 yarn dev
}

# dev build
function bb() {
         yarn build
}

function gs() {
         git status
}

function cc() {
         clear
}

function mm() {
         git add . && git commit -am "$1" && git push 
}


function cb() {
         git checkout -b "$1"
}

function ff() {
	cp startServices startServices.sh
	chmod +x startServices.sh
        ./startServices.sh
	rm startServices.sh
}
function ss() {
        cp startApp startApp.sh
	chmod +x startApp.sh
        ./startApp.sh
        rm startApp.sh
}

function gb() {
	git branch
}

function gbr() {
	git branch -a 
}

function gba() {
        git branch -a
}
