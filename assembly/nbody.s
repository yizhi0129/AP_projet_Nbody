	.file	"nbody.c"
	.text
	.globl	init
	.type	init, @function
init:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L2
.L5:
	call	rand@PLT
	cltq
	movq	%rax, -16(%rbp)
	call	rand@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	movss	.LC0(%rip), %xmm0
	jmp	.L4
.L3:
	movss	.LC1(%rip), %xmm0
.L4:
	movss	%xmm0, -28(%rbp)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-28(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 4(%rax)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-28(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 8(%rax)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 12(%rax)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-28(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 16(%rax)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 20(%rax)
	addq	$1, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L5
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	init, .-init
	.globl	move_particles
	.type	move_particles, @function
move_particles:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movss	%xmm0, -76(%rbp)
	movq	%rsi, -88(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L7
.L10:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L8
.L9:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-44(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	-40(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	movss	-36(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movss	-48(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-32(%rbp), %xmm2
	movq	%xmm2, %rax
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-44(%rbp), %xmm0
	divss	-28(%rbp), %xmm0
	movss	-60(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-40(%rbp), %xmm0
	divss	-28(%rbp), %xmm0
	movss	-56(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-36(%rbp), %xmm0
	divss	-28(%rbp), %xmm0
	movss	-52(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	addq	$1, -16(%rbp)
.L8:
	movq	-16(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L9
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	12(%rax), %xmm1
	movss	-76(%rbp), %xmm0
	mulss	-60(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 12(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm1
	movss	-76(%rbp), %xmm0
	mulss	-56(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 16(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rax), %xmm1
	movss	-76(%rbp), %xmm0
	mulss	-52(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 20(%rax)
	addq	$1, -24(%rbp)
.L7:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L10
	movq	$0, -8(%rbp)
	jmp	.L11
.L12:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	12(%rax), %xmm0
	mulss	-76(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm1
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm0
	mulss	-76(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 4(%rax)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm1
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rax), %xmm0
	mulss	-76(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 8(%rax)
	addq	$1, -8(%rbp)
.L11:
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L12
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	move_particles, .-move_particles
	.section	.rodata
.LC8:
	.string	"w"
.LC9:
	.string	"../ref/init.txt"
.LC10:
	.string	"Error opening file init.txt\n"
.LC11:
	.string	"%g\t%g\t%g\t%g\t%g\t%g\n"
	.align 8
.LC12:
	.string	"\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n"
.LC13:
	.string	"GFLOP/s"
.LC14:
	.string	"Interact/s"
.LC15:
	.string	"Time, s"
.LC16:
	.string	"Step"
.LC17:
	.string	"\033[1m%5s %10s %10s %8s\033[0m\n"
.LC18:
	.string	"../ref/ref.txt"
.LC19:
	.string	"Error opening file ref.txt\n"
.LC23:
	.string	"(warm up)"
.LC24:
	.string	""
.LC25:
	.string	"%5llu %10.3e %10.3e %8.1f %s\n"
	.align 8
.LC26:
	.string	"-----------------------------------------------------"
.LC27:
	.string	"Average performance:"
	.align 8
.LC28:
	.string	"\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	cmpl	$1, -132(%rbp)
	jle	.L14
	movq	-144(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoll@PLT
	jmp	.L15
.L14:
	movl	$16384, %eax
.L15:
	movq	%rax, -72(%rbp)
	movq	$13, -64(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	$3, -56(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	init
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L16
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L17
.L16:
	movq	$0, -96(%rbp)
	jmp	.L18
.L19:
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rax), %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	12(%rax), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm5
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm5, %xmm6
	movq	%xmm6, %rdx
	movq	-40(%rbp), %rax
	movapd	%xmm4, %xmm5
	movapd	%xmm3, %xmm4
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$6, %eax
	call	fprintf@PLT
	addq	$1, -96(%rbp)
.L18:
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L19
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$20, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	shrq	$10, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %r8
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	$0, -88(%rbp)
	jmp	.L20
.L35:
	call	omp_get_wtime@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rcx
	movl	-124(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	move_particles
	call	omp_get_wtime@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L21
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L17
.L21:
	movq	$0, -80(%rbp)
	jmp	.L22
.L23:
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rax), %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	12(%rax), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm5
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm5, %xmm7
	movq	%xmm7, %rdx
	movq	-8(%rbp), %rax
	movapd	%xmm4, %xmm5
	movapd	%xmm3, %xmm4
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$6, %eax
	call	fprintf@PLT
	addq	$1, -80(%rbp)
.L22:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L23
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	js	.L24
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	jmp	.L25
.L24:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
.L25:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	js	.L26
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L27
.L26:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L27:
	mulss	%xmm1, %xmm0
	movss	%xmm0, -120(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	-120(%rbp), %xmm1
	movsd	.LC20(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	js	.L28
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L29
.L28:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L29:
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	.LC21(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	js	.L30
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L31
.L30:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L31:
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	.LC21(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	.LC22(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -116(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L32
	movsd	-16(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	-116(%rbp), %xmm0
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movss	-116(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1
	movapd	%xmm1, %xmm2
	subsd	-24(%rbp), %xmm2
	movsd	-16(%rbp), %xmm1
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
.L32:
	movq	-88(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L33
	leaq	.LC23(%rip), %rax
	jmp	.L34
.L33:
	leaq	.LC24(%rip), %rax
.L34:
	pxor	%xmm0, %xmm0
	cvtss2sd	-116(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	subsd	-24(%rbp), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	pxor	%xmm0, %xmm0
	cvtss2sd	-120(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	subsd	-24(%rbp), %xmm1
	movapd	%xmm0, %xmm3
	divsd	%xmm1, %xmm3
	movsd	-16(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	movq	%xmm0, %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	movapd	%xmm3, %xmm1
	movq	%rsi, %xmm0
	movq	%rcx, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	addq	$1, -88(%rbp)
.L20:
	movq	-88(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L35
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	testq	%rax, %rax
	js	.L36
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L37
.L36:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L37:
	movsd	-112(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	testq	%rax, %rax
	js	.L38
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L39
.L38:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L39:
	movsd	-104(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -104(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movsd	-104(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	-1082130432
	.align 4
.LC2:
	.long	1325400064
	.align 4
.LC3:
	.long	507307272
	.align 8
.LC5:
	.long	0
	.long	1073217536
	.align 4
.LC6:
	.long	1008981770
	.align 8
.LC20:
	.long	0
	.long	1076953088
	.align 8
.LC21:
	.long	0
	.long	1075314688
	.align 8
.LC22:
	.long	-400107883
	.long	1041313291
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
