# General-Purpose Processor in Verilog

This project is a simple general-purpose processor written in Verilog. It was originally developed in VHDL as coursework and later recreated in Verilog to practice and showcase my skills.

## Components

The processor consists of five main components:

### 1. Registers
The registers store the two 8-bit input values. These are built using D flip-flops and can be reset asynchronously to zero.

### 2. 4x16 Decoder
The 4x16 decoder takes a 4-bit input and outputs a 16-bit signal, where one of the bits is high at any given time. It is used to select the operation that the ALU performs.

### 3. Finite State Machine (FSM)
The FSM controls the operation flow of the processor. It cycles through a sequence of states and provides the input for the 4x16 decoder to determine the ALU operation.

### 4. Arithmetic Logic Unit (ALU)
The ALU performs arithmetic and logic operations on the two 8-bit inputs. Operations include:

- Addition
- Subtraction
- NOT
- NAND
- NOR
- AND
- XOR
- OR
- XNOR

The result is split into two 4-bit outputs, which are displayed using 7-segment displays.

### 5. 7-Segment Displays
The 7-segment displays show the result of the ALU operations in hexadecimal (0-9, A-F).

## Summary
This project combines simple digital components to create a functioning processor. It can perform basic arithmetic and logic operations and displays the results using 7-segment displays.
