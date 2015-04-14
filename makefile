
CC=gcc

CFLAGS= -g -c -Wall

# the build target executable:

TARGET = spiralled


all: $(TARGET)

$(TARGET) : ws2811.o itoa.o  dtostrf.o board_info.o mailbox.o dma.o pwm.o WString.o spiralled.o
	g++  ws2811.o itoa.o  board_info.o mailbox.o dma.o pwm.o WString.o spiralled.o -o $(TARGET)

itoa.o : itoa.c itoa.h
	$(CC) $(CFLAGS) itoa.c

WString.o :  WString.cpp  WString.h dtostrf.h
	$(CC) $(CFLAGS) WString.cpp

dtostrf.o : dtostrf.c dtostrf.h
	$(CC) $(CFLAGS) dtostrf.c

board_info.o : board_info.c board_info.h
	$(CC) $(CFLAGS) board_info.c

mailbox.o : mailbox.c mailbox.h
	$(CC) $(CFLAGS) mailbox.c

dma.o : dma.c dma.h board_info.o
	$(CC) $(CFLAGS) dma.c

pwm.o : pwm.c pwm.h ws2811.h
	$(CC) $(CFLAGS) pwm.c

ws2811.o : ws2811.c board_info.o mailbox.o clk.h gpio.h dma.o pwm.o gamma.h ws2811.h
	$(CC) $(CFLAGS) ws2811.c 

spiralled.o : spiralled.cpp WString.h ws2811.h
	g++ $(CFLAGS) spiralled.cpp



clean:
	$(RM) *.o $(TARGET)
