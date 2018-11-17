TARGET = without

WRLIB=../wrLib
WRDSP=../wrDsp
LUAS=/usr/local/Cellar/lua/5.3.4_3

#LUAS=../lua/src

CC = gcc
LD = gcc

SRC = main.c \
	  without.c \
	  $(wildcard lib/*.c) \

OBJDIR = .
OBJS = $(SRC:%.c=$(OBJDIR)/%.o)

EXECUTABLE = $(TARGET)

INCLUDES = \
    -I$(WRLIB)/ \
    -I$(WRDSP)/ \

#	-I$(LUAS)/ \

CFLAGS = -Wall
CFLAGS = -std=c99
CFLAGS += -I. -I./ $(INCLUDES)

LDFLAGS =
LIBS = -lm -lc -lsoundio -llua

all: $(OBJS)
	$(LD) $(CFLAGS) $(OBJS) $(LIBS) -o $(EXECUTABLE) 

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo $@

clean:
	rm $(OBJS) $(EXECUTABLE) 

.PHONY: all clean
