
#/**
#* @file Makefile
#* @author Duc Vu
#* @date 2024-09-18
#* @brief Makefile
#*
#* A makefile for Employee, Officer, Supervisor, and main.
#*/

# The compiler
CC = g++  
# The build target (executable) name
TARGET = employee  
# Compile flags
CFLAGS = -g -Wall -Wextra  

# Default target
default: $(TARGET)  

# Build the executable
$(TARGET): Employee.o Officer.o Supervisor.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) Employee.o Officer.o Supervisor.o main.o  

# Compile Employee
Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp  

# Compile Officer
Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp  

# Compile Supervisor
Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp  

# Compile main
main.o: main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) -c main.cpp  

# Clean target
clean:
	$(RM) $(TARGET) *.o *~
