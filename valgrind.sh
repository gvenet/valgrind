#!/bin/bash
c1='\e[1;32m'
c2='\e[1;33m'
c3='\e[0m'
if (($# != 1)); then
	echo "Entrer le PATH du projet"
	exit
fi
brew install docker-machine
docker-machine create --driver virtualbox Char
docker stop valgrind
docker build -t valgrind/image srcs/.
docker run --rm -d --name valgrind -ti valgrind/image
docker cp $1/. valgrind:/tmp/. 
printf "${c1}============================================================= VALGRIND =============================================================\n
==> executer start_test.sh arg; arg est l'executable a tester\n\n${c3}"
docker container exec -ti valgrind bash
