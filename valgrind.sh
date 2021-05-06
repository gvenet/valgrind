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
docker container exec -ti valgrind bash
docker cp ~/Documents/push_swap/. valgrind:/tmp/. 

