CC = g++
CFLAGS = -g -std=c++11 -Wall -lGL -lGLU -lglut -lGLEW -lglfw -lX11 -lXxf86vm -lXrandr -lpthread -lXi -ldl -lXinerama -lXcursor
TARGET = ep1
INC = ./incl

$(TARGET): ./src/$(TARGET).cpp
	$(CC) -I$(INC) ./src/$(TARGET).cpp ./src/glad.c -o ./bin/$(TARGET) $(CFLAGS)
	cp ./bin/$(TARGET) ~/bin/$(TARGET)
