#!/bin/bash
if (($# != 1)); then
	echo "Renseigner l executable en argument"
	exit
fi

          
valgrind --leak-check=full --track-origins=yes $1
        #  --show-leak-kinds=all \
        #  --verbose \
        #  --log-file=valgrind-out.txt \