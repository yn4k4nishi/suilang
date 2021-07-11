CC     := gcc
CFLAGS := -Wall
SOURCE := src/*.c include/*.h
OUTPUT := sui-compiler.o

all : $(wildcard $(SOURCE))
	$(CC) $(wildcard $(SOURCE)) $(CFLAGS) -o $(OUTPUT)

clean :
	rm $(OUTPUT)
