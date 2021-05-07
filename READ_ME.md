#########################################################################################################################
#                                                                                                                       #
#                                                   VALGRIND                                                            #
#                                                                                                                       #
#########################################################################################################################
#                                                                                                                       #
# ==> installer/run Docker                                                                                              #
#                                                                                                                       #
# ==> installer Homebrew :  'rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew'    #
#                                                                                                                       #
# ==> executer `./valgrind.sh 'PATH` ; PATH est le chemin d accès vers le projet à tester.                              #
#                                                                                                                       #
#########################################################################################################################
#                                                                                                                       #
# ==> dans le terminal du docker : make re avec -g3 en option gcc                                                       #
#                                                                                                                       #
# ==> dans le terminal du container : executer `start_test.sh 'arg'` ; arg est l'executable a tester                    #
#                                                                                                                       #
#########################################################################################################################
