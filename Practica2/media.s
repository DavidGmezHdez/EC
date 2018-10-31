.section .data
#ifndef TEST
#define TEST 20
#endif
    .macro linea                #
  #if TEST==1                   
        .int -1,-1,-1,-1
        .int -1,-1,-1,-1
        .int -1,-1,-1,-1
        .int -1,-1,-1,-1
#elif TEST==2                   
        .int 0x04000000, 0x04000000, 0x04000000, 0x04000000
        .int 0x04000000, 0x04000000, 0x04000000, 0x04000000
        .int 0x04000000, 0x04000000, 0x04000000, 0x04000000
        .int 0x04000000, 0x04000000, 0x04000000, 0x04000000
#elif TEST==3                   
        .int 0x08000000, 0x08000000, 0x08000000, 0x08000000
        .int 0x08000000, 0x08000000, 0x08000000, 0x08000000
        .int 0x08000000, 0x08000000, 0x08000000, 0x08000000
        .int 0x08000000, 0x08000000, 0x08000000, 0x08000000
#elif TEST==4                   
        .int 0x10000000, 0x10000000, 0x10000000, 0x10000000
        .int 0x10000000, 0x10000000, 0x10000000, 0x10000000
        .int 0x10000000, 0x10000000, 0x10000000, 0x10000000
        .int 0x10000000, 0x10000000, 0x10000000, 0x10000000
#elif TEST==5                   
        .int 0x7FFFFFFF,0x7FFFFFFF,0x7FFFFFFF,0x7FFFFFFF
        .int 0x7FFFFFFF,0x7FFFFFFF,0x7FFFFFFF,0x7FFFFFFF
        .int 0x7FFFFFFF,0x7FFFFFFF,0x7FFFFFFF,0x7FFFFFFF
        .int 0x7FFFFFFF,0x7FFFFFFF,0x7FFFFFFF,0x7FFFFFFF
#elif TEST==6                   
        .int 0x80000000, 0x80000000, 0x80000000, 0x80000000
        .int 0x80000000, 0x80000000, 0x80000000, 0x80000000
        .int 0x80000000, 0x80000000, 0x80000000, 0x80000000
        .int 0x80000000, 0x80000000, 0x80000000, 0x80000000
#elif TEST==7                   
        .int 0xF0000000, 0xF0000000, 0xF0000000, 0xF0000000
        .int 0xF0000000, 0xF0000000, 0xF0000000, 0xF0000000
        .int 0xF0000000, 0xF0000000, 0xF0000000, 0xF0000000
        .int 0xF0000000, 0xF0000000, 0xF0000000, 0xF0000000
#elif TEST==8                   
        .int 0xF8000000, 0xF8000000, 0xF8000000, 0xF8000000
        .int 0xF8000000, 0xF8000000, 0xF8000000, 0xF8000000
        .int 0xF8000000, 0xF8000000, 0xF8000000, 0xF8000000
        .int 0xF8000000, 0xF8000000, 0xF8000000, 0xF8000000
#elif TEST==9                   
        .int 0xF7FFFFFF, 0xF7FFFFFF, 0xF7FFFFFF, 0xF7FFFFFF
        .int 0xF7FFFFFF, 0xF7FFFFFF, 0xF7FFFFFF, 0xF7FFFFFF
        .int 0xF7FFFFFF, 0xF7FFFFFF, 0xF7FFFFFF, 0xF7FFFFFF
        .int 0xF7FFFFFF, 0xF7FFFFFF, 0xF7FFFFFF, 0xF7FFFFFF
#elif TEST==10                  
        .int 100000000,100000000,100000000,100000000
        .int 100000000,100000000,100000000,100000000
        .int 100000000,100000000,100000000,100000000
        .int 100000000,100000000,100000000,100000000
#elif TEST==11                  
        .int 200000000,200000000,200000000,200000000
        .int 200000000,200000000,200000000,200000000
        .int 200000000,200000000,200000000,200000000
        .int 200000000,200000000,200000000,200000000
#elif TEST==12                  
        .int 300000000, 300000000, 300000000, 300000000
        .int 300000000, 300000000, 300000000, 300000000
        .int 300000000, 300000000, 300000000, 300000000
        .int 300000000, 300000000, 300000000, 300000000
#elif TEST==13                  
        .int 2000000000, 2000000000, 2000000000, 2000000000
        .int 2000000000, 2000000000, 2000000000, 2000000000
        .int 2000000000, 2000000000, 2000000000, 2000000000
        .int 2000000000, 2000000000, 2000000000, 2000000000
#elif TEST==14                  
        .quad 3000000000, 3000000000, 3000000000, 3000000000
        .quad 3000000000, 3000000000, 3000000000, 3000000000
        .quad 3000000000, 3000000000, 3000000000, 3000000000
        .quad 3000000000, 3000000000, 3000000000, 3000000000
#elif TEST==15                  
        .int -100000000,-100000000,-100000000,-100000000
        .int -100000000,-100000000,-100000000,-100000000
        .int -100000000,-100000000,-100000000,-100000000
        .int -100000000,-100000000,-100000000,-100000000
#elif TEST==16                  
        .int -200000000,-200000000,-200000000,-200000000
        .int -200000000,-200000000,-200000000,-200000000
        .int -200000000,-200000000,-200000000,-200000000
        .int -200000000,-200000000,-200000000,-200000000
#elif TEST==17                  
        .int -300000000, -300000000, -300000000, -300000000
        .int -300000000, -300000000, -300000000, -300000000
        .int -300000000, -300000000, -300000000, -300000000
        .int -300000000, -300000000, -300000000, -300000000
#elif TEST==18                  
        .int -2000000000, -2000000000, -2000000000, -2000000000
        .int -2000000000, -2000000000, -2000000000, -2000000000
        .int -2000000000, -2000000000, -2000000000, -2000000000
        .int -2000000000, -2000000000, -2000000000, -2000000000
#elif TEST==19                  
        .quad -3000000000, -3000000000, -3000000000, -3000000000
        .quad -3000000000, -3000000000, -3000000000, -3000000000
        .quad -3000000000, -3000000000, -3000000000, -3000000000
        .quad -3000000000, -3000000000, -3000000000, -3000000000
#else
        .error "Definir TEST entre 1..19"
#endif
        .endm

lista:		linea
longlista:	.int (.-lista)/4
resultado:  .quad 	0

formato:    .ascii "resultado \t =   %18lu (uns)\n" 
			.ascii 		   "\t\t = 0x%18lx (hex)\n" 
			.asciz		   "\t\t = 0x %08x %08x \n" 

#Usamos el siguiente comando para ejecutar el programa
#for i in $(seq 1 8);do  rm media; gcc -x assembler-with-cpp -D TEST=$i -no-pie media.s -o media; printf "__TEST%02d__%35s\n" $i "" | tr " " "-" ; ./media; done


.section .text
main: .global  main
#trabajar	
	mov  $lista, %rbx
	mov  longlista, %ecx
	call suma		# == suma(&lista, longlista);
	mov %eax, resultado
	mov %edx, resultado+4

#suma
	mov   $formato, %rdi
	mov   resultado,%rsi
	mov   resultado,%rdx
	mov   resultado+4, %ecx
	mov   resultado, %r8d
	mov   $0,%eax		# varargin sin xmm
	call  printf		# == printf(formato, res, res);

#acabarC
	mov resultado,%edi
	call _exit		# ==  exit(resultado)
	ret

suma:
	mov  $0, %eax
	mov  $0, %edx
	mov  $0, %rsi
	mov $0,%ebp
	mov $0,%edi


bucle:

	add  (%rbx,%rsi,4), %eax
	cdq
	add %eax,%ebp
	adc %edx,%edi
	inc   %rsi
	cmp   %rsi,%rcx
	jne    bucle
	
	mov %edi, %edx
	mov %ebp, %eax

	ret
	
	
