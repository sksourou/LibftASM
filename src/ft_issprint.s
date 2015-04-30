global _ft_islower

section .text

_ft_islower:
    cmp rdi, 32
    jl end
    cmp rdi, 125
    jg end
    mov rax, 1
    ret

end:
    mov rax, 0
    ret
