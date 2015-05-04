global  _ft_strcpy
extern  _ft_strlen

section .text

_ft_strcpy:
	push rdi
	push rsi
	mov rdi, rsi
	call _ft_strlen
	mov rbx, rax
	pop rsi
	pop rdi
	call cpy
	ret

cpy:
   mov rax, rdi
   mov rcx, rbx
   repnz movsb
   ret
