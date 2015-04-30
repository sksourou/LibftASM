global _ft_isdigit

section .text

_ft_isdigit:
	cmp rdi, 48
	jl end		;if op1 < op2:0:end
	cmp rdi, 57
	jg end		;if op1 > op2:9:end
	mov rax, 1  	;return 1
	ret

end:
	mov rax, 0 		;return 0
	ret
