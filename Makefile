TARGET	= pa0
CFLAGS	= -g

all: pa0

pa0: pa0.c
	gcc $(CFLAGS) -o $@ $^

.PHONY: clean
clean:
	@rm -rf *.o pa0 *dSYM
