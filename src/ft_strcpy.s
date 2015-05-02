global  _ft_strcpy
extern  _ft_strlen
extern	_ft_memcpy

section .text

_ft_strcpy:
	push rdi
	push rsi
	mov rdi, rsi
	call _ft_strlen
	mov rbx, rax
	pop rsi
	pop rdi
	call _ft_memcpy
	ret
