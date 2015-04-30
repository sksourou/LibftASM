global  _ft_isprint

section .text

_ft_isprint:
    cmp rdi, 40
    jl  end
    cmp rdi, 127
    jg  _test
    mov rax, 1
    ret

_test:
    cmp rdi, 130
    jl  end
    cmp rdi, 176
    jg  end
    mov rax, 1
    ret

end:
    mov rax, 0
    ret
