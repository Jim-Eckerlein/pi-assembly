CFLAGS=-O0 -ggdb -Wall -Wextra -Wpedantic

.PHONY: all
all: target/pi

target/pi: pi.c pi.S
	$(CC) $(CFLAGS) -o $@ $^

.PHONY: clean
clean:
	rm target/*
