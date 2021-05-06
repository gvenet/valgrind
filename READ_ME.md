==> executer `./valgrind.sh 'PATH` ; PATH est le chemin d accès vers le dossier contenant l'executable à tester. (le dossier doit contenir un seul executable isolé)
		si brew et docker ne sont pas installés, faire un uncomment dans valgrind.sh des deux premières lignes.

==>compiler le projet avec -g3 en option gcc/clang

==> dans le terminal du container, executer `start_test.sh`
