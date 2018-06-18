section .text
global _start

_start:
    push 0x68732f2f ; '//sh'                                                                   
    push 0x6e69622f ; '/bin'
    mov eax,4       ; sys_write
    mov ebx,1       ; stdout
    mov ecx,esp     ; string
    mov edx,0x8     ; string length
    int 80H

    mov eax,1       ; exit
    mov ebx,0       ; return zero
    int 80H
