	.file	"suma_07_Casm.c"
	.text
	.globl	lista
	.data
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
	.globl	longlista
	.align 4
	.type	longlista, @object
	.size	longlista, 4
longlista:
	.long	9
	.globl	resultado
	.bss
	.align 4
	.type	resultado, @object
	.size	resultado, 4
resultado:
	.zero	4
	.text
	.globl	suma
	.type	suma, @function
suma:
	movq	%rdi, -8(%rsp)
	movl	%esi, -12(%rsp)
#APP
# 17 "suma_07_Casm.c" 1
	mov  $0, %eax	
	mov  $0, %rdx	
bucle:			
	add  (%rdi,%rdx,4), %eax
	inc   %rdx	
	cmp   %rdx,%rsi	
	jne    bucle	  
# 0 "" 2
#NO_APP
	nop
	ret
	.size	suma, .-suma
	.section	.rodata
.LC0:
	.string	"resultado = %d = %0x hex\n"
	.text
	.globl	main
	.type	main, @function
main:
	subq	$8, %rsp
	movl	longlista(%rip), %eax
	movl	%eax, %esi
	leaq	lista(%rip), %rdi
	call	suma
	movl	%eax, resultado(%rip)
	movl	resultado(%rip), %edx
	movl	resultado(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %edi
	call	exit@PLT
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
