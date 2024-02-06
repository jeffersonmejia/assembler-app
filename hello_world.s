	.file	"hello_world.c"
	.text
	.globl	autor
	.data
	.align 16
autor:
	.ascii "Jefferson Paul Mejia Chavez\12\0"
	.globl	mensaje
	.align 32
mensaje:
	.ascii "Estoy realizando la practica del laboratorio#2\0"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "color 3f\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	system
	leaq	autor(%rip), %rcx
	call	printf
	leaq	mensaje(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	system;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
