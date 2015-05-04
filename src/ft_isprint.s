global  _ft_isprint

section .text

_ft_isprint:
    cmp rdi, 32
    jl  end
    cmp rdi, 126
    jg  end
    mov rax, 1
    ret

end:
    mov rax, 0
    ret
