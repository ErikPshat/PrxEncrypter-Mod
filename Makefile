CC = gcc
CFLAGS = -Wall -Os
TARGET = PrxEncrypter
OBJS = crypto.o kirk_engine.o main.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LDFLAGS)

clean:
	$(RM) *.o $(TARGET) *.exe *.exe.stackdump
