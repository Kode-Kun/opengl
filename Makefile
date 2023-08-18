CC = g++
CFLAGS = -g -std=c++11 -Wall -lGL -lGLU -lglut -lGLEW -lglfw -lX11 -lXxf86vm -lXrandr -lpthread -lXi -ldl -lXinerama -lXcursor
TARGET = ep1
INC = /home/kode/src/OpenGL/incl

$(TARGET): ~/src/OpenGL/src/$(TARGET).cpp
	$(CC) -I$(INC) ~/src/OpenGL/src/$(TARGET).cpp ~/src/OpenGL/src/glad.c -o ~/src/OpenGL/bin/$(TARGET) $(CFLAGS)
	cp ~/src/OpenGL/bin/$(TARGET) ~/bin/$(TARGET)
