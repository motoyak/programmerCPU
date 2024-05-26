        .intel_syntax noprefix
        .global main
main:
        sub rsp, 8
        mov rcx, 0xfeedcaff
        lea rdi, [rip + msg]
        mov rsi, rcx
        mov eax, 0
        call printf
        add rsp, 8
        ret
        .section .rodata
msg:    .string "rcx = %x\n"
