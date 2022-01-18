BUFFER=4096

F=-Wall -Werror -Wextra -g3

a.out: main.cpp get_next_line_bonus.o get_next_line_utils_bonus.o
	clang++ main.cpp $(F) -D BUFFER_SIZE=$(BUFFER) get_next_line_bonus.o get_next_line_utils_bonus.o -Ignl
get_next_line_bonus.o: gnl/get_next_line_bonus.c
	clang $(F) -D BUFFER_SIZE=$(BUFFER) gnl/get_next_line_bonus.c -c -o get_next_line_bonus.o -Ignl

get_next_line_utils_bonus.o: gnl/get_next_line_utils_bonus.c
	clang $(F) -D BUFFER_SIZE=$(BUFFER) gnl/get_next_line_utils_bonus.c -c -o get_next_line_utils_bonus.o -Ignl

gnl/get_next_line_bonus.c: gnl/get_next_line.h
gnl/get_next_line_utils_bonus.c: gnl/get_next_line.h

clean:
	rm -f a.out
	rm -f get_next_line_bonus.o
	rm -f get_next_line_utils_bonus.o

re: clean a.out

.PHONY: clean re
