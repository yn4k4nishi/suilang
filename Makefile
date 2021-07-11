CC     := gcc
CFLAGS := -Wall
SOURCE := src/*.c include/*.h

all : $(wildcard $(SOURCE))
	$(CC) $(wildcard $(SOURCE)) $(CFLAGS) -o main.o

clean :
	rm *.o
