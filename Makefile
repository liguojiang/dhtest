# Makefile to generate dhtest

CC=gcc
#CFLAGS=-Wall -g

dhtest: dhtest.o functions.o 
	$(CC) dhtest.o functions.o -o dhtest

clean:
	rm -f dhtest functions.o dhtest.o
	
install:
	cp dhtest /home/openwrt/openwrt/591wifi_feeds/packages/net/dhtest/files
