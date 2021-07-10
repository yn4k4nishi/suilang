CC := gcc
CFLAGS := -Wall

SOURCE := src/*.c include/*.h

all : a

a : $(SOURCE)
    $(CC) $(SOURCE) $(CFLAGS)
