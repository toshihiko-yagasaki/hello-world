MAKE_VER = 0120

#MAKE_DATE = `date '+%y/%m/%d'`
#MAKE_TIME = `date '+%H:%M'`

CC = gcc
CFLAGS = -O -g -Wall -D__LINUX 

INCLUDE = -I./inc 
LIBS = -lpthread 

TARGET = test_prg
SRCS = \
	src/main.c
	src/test.c

OBJS = \
	src/main.o
	src/test.0


.SUFFIXES : .o .c

.c.o : ${SRCS} ${HEADS} 
	$(CC) $(CFLAGS) $(INCLUDE) -c -o $*.o $< 
	-echo $(MAKE_VER) 
all:	${OBJS}
	$(CC) $(CFLAGS) -o ${TARGET}${MAKE_VER} ${OBJS} ${LIBS}
clean :
	rm -f src/*.o $(TARGET)*



