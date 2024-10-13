CC = gcc
CFLAGS = -Wall -g
SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)
TARGET = link-notes

all: $(TARGET)

$(TARGET): $(OBJ)
    $(CC) $(CFLAGS) -o $@ $^

clean:
    rm -f $(OBJ) $(TARGET)
