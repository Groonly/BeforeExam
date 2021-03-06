SRC_FILES =\
	unity/src/unity.c \
	unity/extras/fixture/src/unity_fixture.c \
	mathLib/math.c\
	test/test.c\
	test/testMain.c\
	test/testRunner.c


SOURCES= $(SRC_FILES)
OBJECTS=$(SOURCES:.c=.o)
HEADERS=$(SOURCES:.c=.h)



CC = gcc
DEBUG = -g
CFLAGS = -c -Wall $(DEBUG)
LFLAGS = -Wall


test: $(OBJECTS)
	$(CC) $(LFLAGS) $^ -o $@

%.o:%.c $(HEADERS)
	$(CC) $(CFLAGS) $(SOURCES)

all: test run

clean:
	rm $(OBJECTS)
	rm test.exe

run:
	./test.exe
