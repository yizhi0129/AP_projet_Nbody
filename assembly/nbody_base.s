	.file	"nbody_base.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"../ref/init.txt"
.LC2:
	.string	"Error opening file init.txt\n"
.LC3:
	.string	"%f %*f %*f %*f %*f %*f"
.LC4:
	.string	"%*f %f %*f %*f %*f %*f"
.LC5:
	.string	"%*f %*f %f %*f %*f %*f"
.LC6:
	.string	"%*f %*f %*f %f %*f %*f"
.LC7:
	.string	"%*f %*f %*f %*f %f %*f"
.LC8:
	.string	"%*f %*f %*f %*f %*f %f"
.LC9:
	.string	"Error scanning file init.txt\n"
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
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L2
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
.L2:
	movq	$0, -176(%rbp)
	jmp	.L3
.L7:
	leaq	-200(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-196(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-192(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-188(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-184(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-180(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	movq	-176(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movss	-200(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-176(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movss	-196(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	movq	-176(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movss	-192(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	movq	-176(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movss	-188(%rbp), %xmm0
	movss	%xmm0, 12(%rax)
	movq	-176(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movss	-184(%rbp), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-176(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movss	-180(%rbp), %xmm0
	movss	%xmm0, 20(%rax)
	addq	$1, -176(%rbp)
	jmp	.L3
.L4:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
.L3:
	movq	-168(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L6
	movq	-176(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jb	.L7
.L6:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
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
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L10
.L13:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L11
.L12:
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
	movsd	.LC12(%rip), %xmm0
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
.L11:
	movq	-16(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L12
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
.L10:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L13
	movq	$0, -8(%rbp)
	jmp	.L14
.L15:
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
.L14:
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L15
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	move_particles, .-move_particles
	.globl	compute_delta_x
	.type	compute_delta_x, @function
compute_delta_x:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L17
.L18:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addq	$1, -8(%rbp)
.L17:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L18
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L19
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L20
.L19:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L20:
	movsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	compute_delta_x, .-compute_delta_x
	.globl	compute_delta_y
	.type	compute_delta_y, @function
compute_delta_y:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L23
.L24:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addq	$1, -8(%rbp)
.L23:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L24
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L25
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L26
.L25:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L26:
	movsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	compute_delta_y, .-compute_delta_y
	.globl	compute_delta_z
	.type	compute_delta_z, @function
compute_delta_z:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L29
.L30:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addq	$1, -8(%rbp)
.L29:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L30
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L31
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L32
.L31:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L32:
	movsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	compute_delta_z, .-compute_delta_z
	.section	.rodata
.LC15:
	.string	"../ref/ref.txt"
.LC16:
	.string	"Error opening file ref.txt\n"
.LC17:
	.string	"Error scanning file ref.txt\n"
	.align 8
.LC18:
	.string	"\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n"
.LC19:
	.string	"delta x"
.LC20:
	.string	"GFLOP/s"
.LC21:
	.string	"Interact/s"
.LC22:
	.string	"Time, s"
.LC23:
	.string	"Step"
	.align 8
.LC24:
	.string	"\033[1m%5s %10s %10s %8s %8s %8s %8s\033[0m\n"
.LC25:
	.string	"delta z"
.LC26:
	.string	"delta y"
.LC30:
	.string	"(warm up)"
.LC31:
	.string	""
	.align 8
.LC32:
	.string	"%5llu %10.3e %10.3e %8.1f %10.3e %10.3e %10.3e %s\n"
	.align 8
.LC34:
	.string	"-----------------------------------------------------"
.LC35:
	.string	"Average performance:"
	.align 8
.LC36:
	.string	"\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n"
.LC37:
	.string	"Average delta:\t%10.3e\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movl	%edi, -340(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -340(%rbp)
	jle	.L35
	movq	-352(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoll@PLT
	jmp	.L36
.L35:
	movl	$16384, %eax
.L36:
	movq	%rax, -256(%rbp)
	movq	$13, -248(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -308(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -296(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -288(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -240(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -232(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -280(%rbp)
	movq	$3, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -208(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -200(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.L37
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L62
.L37:
	movq	$0, -272(%rbp)
	jmp	.L39
.L42:
	leaq	-332(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L40
	leaq	-328(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L40
	leaq	-324(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L40
	leaq	-320(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L40
	leaq	-316(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L40
	leaq	-312(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L40
	movq	-272(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movss	-332(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-272(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movss	-328(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	movq	-272(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movss	-324(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	movq	-272(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movss	-320(%rbp), %xmm0
	movss	%xmm0, 12(%rax)
	movq	-272(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movss	-316(%rbp), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-272(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movss	-312(%rbp), %xmm0
	movss	%xmm0, 20(%rax)
	addq	$1, -272(%rbp)
	jmp	.L39
.L40:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L62
.L39:
	movq	-192(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L41
	movq	-272(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jb	.L42
.L41:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-256(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	init
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	shrq	$20, %rax
	movq	%rax, %rcx
	movq	-184(%rbp), %rax
	shrq	$10, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC25(%rip), %rax
	pushq	%rax
	leaq	.LC26(%rip), %rax
	pushq	%rax
	leaq	.LC19(%rip), %r9
	leaq	.LC20(%rip), %r8
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	$0, -264(%rbp)
	jmp	.L43
.L55:
	call	omp_get_wtime@PLT
	movq	%xmm0, %rax
	movq	%rax, -176(%rbp)
	movq	-256(%rbp), %rcx
	movl	-308(%rbp), %edx
	movq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	move_particles
	call	omp_get_wtime@PLT
	movq	%xmm0, %rax
	movq	%rax, -168(%rbp)
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	js	.L44
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	jmp	.L45
.L44:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
.L45:
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	js	.L46
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L47
.L46:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L47:
	mulss	%xmm1, %xmm0
	movss	%xmm0, -304(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	-304(%rbp), %xmm1
	movsd	.LC27(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	js	.L48
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L49
.L48:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L49:
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	.LC28(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	js	.L50
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L51
.L50:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L51:
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	.LC28(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	.LC29(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -300(%rbp)
	movq	-256(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	compute_delta_x
	movq	%xmm0, %rax
	movq	%rax, -240(%rbp)
	movq	-256(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	compute_delta_y
	movq	%xmm0, %rax
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	compute_delta_z
	movq	%xmm0, %rax
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jb	.L52
	movsd	-168(%rbp), %xmm0
	subsd	-176(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	-300(%rbp), %xmm0
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-296(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	movss	-300(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movsd	-168(%rbp), %xmm1
	movapd	%xmm1, %xmm2
	subsd	-176(%rbp), %xmm2
	movsd	-168(%rbp), %xmm1
	subsd	-176(%rbp), %xmm1
	mulsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-288(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -288(%rbp)
	movsd	-240(%rbp), %xmm0
	addsd	-232(%rbp), %xmm0
	addsd	-224(%rbp), %xmm0
	movsd	-280(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
.L52:
	movq	-264(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jnb	.L53
	leaq	.LC30(%rip), %rax
	jmp	.L54
.L53:
	leaq	.LC31(%rip), %rax
.L54:
	pxor	%xmm0, %xmm0
	cvtss2sd	-300(%rbp), %xmm0
	movsd	-168(%rbp), %xmm1
	subsd	-176(%rbp), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	pxor	%xmm0, %xmm0
	cvtss2sd	-304(%rbp), %xmm0
	movsd	-168(%rbp), %xmm1
	subsd	-176(%rbp), %xmm1
	movapd	%xmm0, %xmm6
	divsd	%xmm1, %xmm6
	movsd	-168(%rbp), %xmm0
	subsd	-176(%rbp), %xmm0
	movq	%xmm0, %rsi
	movsd	-224(%rbp), %xmm3
	movsd	-232(%rbp), %xmm1
	movsd	-240(%rbp), %xmm0
	movq	-264(%rbp), %rcx
	movq	%rax, %rdx
	movapd	%xmm3, %xmm5
	movapd	%xmm1, %xmm4
	movapd	%xmm0, %xmm3
	movapd	%xmm6, %xmm1
	movq	%rsi, %xmm0
	movq	%rcx, %rsi
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	movl	$6, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	addq	$1, -264(%rbp)
.L43:
	movq	-264(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L55
	movq	-248(%rbp), %rax
	subq	-216(%rbp), %rax
	testq	%rax, %rax
	js	.L56
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L57
.L56:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L57:
	movsd	-296(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -296(%rbp)
	movq	-248(%rbp), %rax
	subq	-216(%rbp), %rax
	testq	%rax, %rax
	js	.L58
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L59
.L58:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L59:
	movsd	-288(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	-296(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -288(%rbp)
	movq	-248(%rbp), %rax
	subq	-216(%rbp), %rax
	testq	%rax, %rax
	js	.L60
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L61
.L60:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L61:
	movsd	.LC33(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-280(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movsd	-288(%rbp), %xmm0
	movq	-296(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC35(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L62:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC10:
	.long	507307272
	.align 8
.LC12:
	.long	0
	.long	1073217536
	.align 4
.LC14:
	.long	1008981770
	.align 8
.LC27:
	.long	0
	.long	1076953088
	.align 8
.LC28:
	.long	0
	.long	1075314688
	.align 8
.LC29:
	.long	-400107883
	.long	1041313291
	.align 8
.LC33:
	.long	0
	.long	1074266112
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
