%include "asm_io.inc"

segment .data
    num1 dd 5
    num2 dd 10

segment .text
    global asm_main

asm_main:

    mov eax, [num1]
    add eax, [num2]

    call print_int
    call print_nl

    mov eax, 0
    ret