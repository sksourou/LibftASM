global _ft_isdigit

section .text

_ft_isdigit:
	cmp rcx, 48 ;cmp
	jl end
	cmp rdi, 57
	jg end
	mov rax, 1
	ret

end:
	mov rax, 0
	ret
