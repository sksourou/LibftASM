global _ft_isascii

section .text

_ft_isascii:
	cmp rdi, 0
	jl end
	cmp rdi, 127
	jg end
	mov rax, 1
	ret

end:
	mov rax, 0
	ret
