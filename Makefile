CC = g++
CFLAGS = -Wall
LDFLAGS = -L. -lcalculator

all: calculator

calculator: main.o calculator.a
	$(CC) $(CFLAGS) -o calculator main.o $(LDFLAGS)

main.o: main.cpp calculator.h
	$(CC) $(CFLAGS) -c main.cpp

calculator.a: calculator.o
	ar rcs calculator.a calculator.o

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) -c calculator.cpp

clean:
	rm -f *.o calculator calculator.a
