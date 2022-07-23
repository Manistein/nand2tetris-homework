// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)
@24576
D=M
@2
M=0
@SCREEN
D;JEQ

@2
M=-1

(SCREEN)
@24289
D=A
@1
M=D

(INLOOP)
@2
D=M
@1
A=M
M=D

@1
D=M
@1
D=D-A
@1
M=D
@16384
D=D-A
@INLOOP
D;JGE

@LOOP
0;JMP
