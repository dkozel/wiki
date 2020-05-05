### Notes

Adding "-" to the start of a line will ignore errors returned by commands on that line.

### Sample Makefile

```
CC=gcc
CFLAGS=-Wall -Wextra -std=c99 -pedantic -g
TARGET=potterkata
SOURCES=${TARGET}.c

all: ${SOURCES}
  ${CC} ${CFLAGS} ${SOURCES} -o ${TARGET}

profile: CFLAGS += -pg
profile: all

check:
  -splint ${SOURCES}
  -cppcheck --enable=style ${SOURCES}

format:
  astyle ${SOURCES}

clean:
  rm -f ${TARGET} gprof.*
```

### Interesting Tips/Tricks

Compile each .c file in a folder to an eponymous executable
```
SOURCES = $(wildcard *.c)
TARGETS = $(SOURCES:.c=)

CC = gcc
CFLAGS = -fopenmp -g -Wall -Wextra -std=c99

all: $(TARGETS)

.SECONDEXPANSION:
$(TARGETS): $(@:%=%.c)
  $(CC) $(CFLAGS) $(@:.c) -o $@

clean:
  rm -f $(TARGETS)
```