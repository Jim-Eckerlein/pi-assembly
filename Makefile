CFLAGS=-O0 -ggdb -Wall -Wextra -Wpedantic

.PHONY: all
all: target target/pi

target/pi: pi.c pi.S
	$(CC) $(CFLAGS) -o $@ $^

target:
	mkdir -p target

.PHONY: clean
clean:
	rm target/*
