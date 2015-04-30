global  _ft_strlen

section .text

_ft_strlen:
    cmp rdi, 0          ;si s == NULL
    je end
    mov rcx, -1
    mov al, 0			;al = rax
    cld                 ;clean df
    repnz scasb         ;si DF = 0 (E)DI = (E)DI + 1
    mov rax, rcx
    neg rax             ;DEST = -DEST
    sub rax, 2
    ret

end:
    mov rax, 0
    ret
