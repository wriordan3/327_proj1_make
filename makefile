CC= gcc
CFLAGS = -g -Wall

default: myexe
myexe: main.o myfunc.o
	$(CC) $(CFLAGS) -o myexe main.o myfunc.o
main.o: main.cpp myfunc.h
	$(CC) $(CFLAGS) -c main.cpp
myfunc.o: myfunc.cpp myfunc.h
	$(CC) $(CFLAGS) -c myfunc.cpp
clean:
	$(RM) myexe *.o *~
