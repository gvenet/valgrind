if (($# != 1)); then
	echo "Renseigner l executable en argument"
	exit
fi

valgrind --leak-check=full $1
        #  --show-leak-kinds=all \
        #  --track-origins=yes \
        #  --verbose \
        #  --log-file=valgrind-out.txt \