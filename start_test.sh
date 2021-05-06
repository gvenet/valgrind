if (($# != 1)); then
	echo "Renseigner l executable en argument"
	exit
fi

valgrind --leak-check=full \
         --show-leak-kinds=all \
         --track-origins=yes \
         --verbose \
         --log-file=valgrind-out.txt \
         ./$1