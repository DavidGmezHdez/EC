	.file	"suma_08_Casm.c"
	.text
	.globl	suma
	.type	suma, @function
suma:
	testl	%esi, %esi
	jle	.L4
	leal	-1(%rsi), %ecx
	addq	$1, %rcx
	movl	$0, %edx
	movl	$0, %eax
.L3:
#APP
# 15 "suma_08_Casm.c" 1
	add (%rdi,%rdx,4),%eax
# 0 "" 2
#NO_APP
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jne	.L3
	rep ret
.L4:
	movl	$0, %eax
	ret
	.size	suma, .-suma
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"resultado = %d = %0x hex\n"
	.text
	.globl	main
	.type	main, @function
main:
	subq	$8, %rsp
	movl	longlista(%rip), %eax
	testl	%eax, %eax
	jle	.L9
	leal	-1(%rax), %ecx
	addq	$1, %rcx
	movl	$0, %eax
	movl	$0, %edx
	leaq	lista(%rip), %rsi
.L8:
#APP
# 15 "suma_08_Casm.c" 1
	add (%rsi,%rax,4),%edx
# 0 "" 2
#NO_APP
	addq	$1, %rax
	cmpq	%rcx, %rax
	jne	.L8
.L7:
	movl	%edx, resultado(%rip)
	movl	%edx, %ecx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %edi
	call	exit@PLT
.L9:
	movl	$0, %edx
	jmp	.L7
	.size	main, .-main
	.globl	resultado
	.bss
	.align 4
	.type	resultado, @object
	.size	resultado, 4
resultado:
	.zero	4
	.globl	longlista
	.data
	.align 4
	.type	longlista, @object
	.size	longlista, 4
longlista:
	.long	9
	.globl	lista
	.align 32
	.type	lista, @object
	.size	lista, 36
lista:
	.long	1
	.long	2
	.long	10
	.long	1
	.long	2
	.long	2
	.long	1
	.long	2
	.long	16
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
