CC = gcc
CFLAGS := -g
MODULES := app tools ericsonj/embedded
CFLAGS += $(patsubst %,-I%, $(MODULES))
LIBS :=
SRC := 

all: prog

include $(patsubst %, %/module.mk, $(MODULES))

OBJ := $(patsubst %.c, %.o, $(filter %.c, $(SRC)))

prog: $(OBJ)
	$(CC) -o $@ $(OBJ) $(LIBS)

include $(OBJ:.o=.d)

%.d: %.c
	./depend.sh `dirname $*.c` $(CFLAGS) $*.c > $@

clean:
	rm -f app/*.o tools/*.o app/*.d tools/*.d 

# test: $(OBJ)
# 	$(CC) -o $@ $(OBJ)
 
# include $(OBJ:.o=.d)

# %.d: %.c
# 	./depend.sh $(CFLAGS) $*.c > $@

# prog: $(OBJ)
# 	$(CC) -o $@ $(OBJ)

# main.o: main.c
# 	$(CC) -c main.c

# tools.o: tools.c tools.h
# 	$(CC) -c tools.c

# util.o: util.c util.h
# 	$(CC) -c util.c
