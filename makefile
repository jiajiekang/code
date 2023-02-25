all:
	echo "build, run"
build:
	gcc -Wall -g -o main main.c
run:
	./main
