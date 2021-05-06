c1='\e[1;32m'
c2='\e[1;33m'
c3='\e[0m'
if (($# != 1)); then
	echo "Entrer le PATH du projet"
	exit
fi
# rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew
# brew install docker
brew install docker-machine
docker-machine create --driver virtualbox Char
docker stop valgrind
docker build -t valgrind/image .
docker run --rm -d --name valgrind -ti valgrind/image
docker cp $1/. valgrind:/tmp/. 
printf "${c1}============================================================= VALGRIND =============================================================\n
==> compiler le projet avec ${c2}-g3 ${c1}en option gcc/clang\n
==> executer start_test.sh\n${c3}"
docker container exec -ti valgrind bash
