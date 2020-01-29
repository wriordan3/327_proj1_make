myexe: main.o myfunc.o
	gcc -0 myexe main.o myfunc.o
main: main.cpp myfunc.cpp myfunc.h
	gcc -0 main main.cpp myfunc.cpp myfunc.h
myfunc: myfunc.cpp myfunc.h
	gcc -0 myfunc myfunc.cpp myfunc.h
clean:
	$(RM) count *.o *~
