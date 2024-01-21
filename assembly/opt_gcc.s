	.file	"nbody_opt.c"
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
	endbr64
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
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L2
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	call	fwrite@PLT
.L2:
	movq	$0, -176(%rbp)
	jmp	.L3
.L7:
	leaq	-200(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-196(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-192(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-188(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-184(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L4
	leaq	-180(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC8(%rip), %rsi
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
	leaq	.LC9(%rip), %rdi
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
	xorq	%fs:40, %rax
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
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movss	%xmm0, -156(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -140(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L10
.L17:
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	jmp	.L11
.L14:
	movl	$0, -144(%rbp)
	jmp	.L12
.L13:
	movl	-144(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -116(%rbp)
	movl	-144(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -112(%rbp)
	movl	-144(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-116(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	-112(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	movss	-108(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movss	-140(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)
	cvtss2sd	-104(%rbp), %xmm3
	movsd	%xmm3, -176(%rbp)
	cvtss2sd	-104(%rbp), %xmm0
	call	sqrt@PLT
	mulsd	-176(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -100(%rbp)
	movl	-144(%rbp), %eax
	cltq
	movss	-64(%rbp,%rax,4), %xmm1
	movss	-116(%rbp), %xmm0
	divss	-100(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movl	-144(%rbp), %eax
	cltq
	movss	%xmm0, -64(%rbp,%rax,4)
	movl	-144(%rbp), %eax
	cltq
	movss	-48(%rbp,%rax,4), %xmm1
	movss	-112(%rbp), %xmm0
	divss	-100(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movl	-144(%rbp), %eax
	cltq
	movss	%xmm0, -48(%rbp,%rax,4)
	movl	-144(%rbp), %eax
	cltq
	movss	-32(%rbp,%rax,4), %xmm1
	movss	-108(%rbp), %xmm0
	divss	-100(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movl	-144(%rbp), %eax
	cltq
	movss	%xmm0, -32(%rbp,%rax,4)
	addl	$1, -144(%rbp)
.L12:
	cmpl	$3, -144(%rbp)
	jle	.L13
	addq	$4, -88(%rbp)
.L11:
	movq	-168(%rbp), %rax
	andq	$-4, %rax
	cmpq	%rax, -88(%rbp)
	jb	.L14
	movq	-168(%rbp), %rax
	andq	$-4, %rax
	movq	%rax, -80(%rbp)
	jmp	.L15
.L16:
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -136(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -132(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)
	movss	-136(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	-132(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	movss	-128(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movss	-140(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)
	cvtss2sd	-124(%rbp), %xmm4
	movsd	%xmm4, -176(%rbp)
	cvtss2sd	-124(%rbp), %xmm0
	call	sqrt@PLT
	mulsd	-176(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -120(%rbp)
	movss	-64(%rbp), %xmm1
	movss	-136(%rbp), %xmm0
	divss	-120(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-48(%rbp), %xmm1
	movss	-132(%rbp), %xmm0
	divss	-120(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-32(%rbp), %xmm1
	movss	-128(%rbp), %xmm0
	divss	-120(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	addq	$1, -80(%rbp)
.L15:
	movq	-80(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.L16
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	12(%rax), %xmm1
	movss	-64(%rbp), %xmm2
	movss	-60(%rbp), %xmm0
	addss	%xmm0, %xmm2
	movss	-56(%rbp), %xmm0
	addss	%xmm0, %xmm2
	movss	-52(%rbp), %xmm0
	addss	%xmm2, %xmm0
	mulss	-156(%rbp), %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 12(%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm1
	movss	-48(%rbp), %xmm2
	movss	-44(%rbp), %xmm0
	addss	%xmm0, %xmm2
	movss	-40(%rbp), %xmm0
	addss	%xmm0, %xmm2
	movss	-36(%rbp), %xmm0
	addss	%xmm2, %xmm0
	mulss	-156(%rbp), %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 16(%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rax), %xmm1
	movss	-32(%rbp), %xmm2
	movss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm2
	movss	-24(%rbp), %xmm0
	addss	%xmm0, %xmm2
	movss	-20(%rbp), %xmm0
	addss	%xmm2, %xmm0
	mulss	-156(%rbp), %xmm0
	movq	-96(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 20(%rax)
	addq	$1, -96(%rbp)
.L10:
	movq	-96(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.L17
	movq	$0, -72(%rbp)
	jmp	.L18
.L19:
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	12(%rax), %xmm0
	mulss	-156(%rbp), %xmm0
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	4(%rax), %xmm1
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm0
	mulss	-156(%rbp), %xmm0
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 4(%rax)
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm1
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rax), %xmm0
	mulss	-156(%rbp), %xmm0
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 8(%rax)
	addq	$1, -72(%rbp)
.L18:
	movq	-72(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.L19
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
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
	endbr64
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
	jmp	.L22
.L23:
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
.L22:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L23
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L24
	cvtsi2sdq	%rax, %xmm0
	jmp	.L25
.L24:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L25:
	movsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
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
	endbr64
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
	jmp	.L28
.L29:
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
.L28:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L29
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L30
	cvtsi2sdq	%rax, %xmm0
	jmp	.L31
.L30:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L31:
	movsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
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
	endbr64
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
	jmp	.L34
.L35:
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
.L34:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L35
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L36
	cvtsi2sdq	%rax, %xmm0
	jmp	.L37
.L36:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L37:
	movsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	compute_delta_z, .-compute_delta_z
	.section	.rodata
.LC13:
	.string	"../ref/ref.txt"
.LC14:
	.string	"Error opening file ref.txt\n"
.LC15:
	.string	"Error scanning file ref.txt\n"
	.align 8
.LC16:
	.string	"\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n"
.LC17:
	.string	"Delta x"
.LC18:
	.string	"GFLOP/s"
.LC19:
	.string	"Interact/s"
.LC20:
	.string	"Time, s"
.LC21:
	.string	"Step"
	.align 8
.LC22:
	.string	"\033[1m%5s %10s %10s %8s %8s %8s %8s\033[0m\n"
.LC23:
	.string	"Delta z"
.LC24:
	.string	"Delta y"
.LC28:
	.string	"(warm up)"
.LC29:
	.string	""
	.align 8
.LC30:
	.string	"%5llu %10.3e %10.3e %8.1f %10.3e %10.3e %10.3e %s\n"
	.align 8
.LC32:
	.string	"-----------------------------------------------------"
.LC33:
	.string	"Average performance:"
	.align 8
.LC34:
	.string	"\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n"
.LC35:
	.string	"Average delta:\t%10.3e\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	endbr64
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
	jle	.L40
	movq	-352(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoll@PLT
	jmp	.L41
.L40:
	movl	$16384, %eax
.L41:
	movq	%rax, -256(%rbp)
	movq	$13, -248(%rbp)
	movss	.LC12(%rip), %xmm0
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
	leaq	.LC0(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.L42
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L67
.L42:
	movq	$0, -272(%rbp)
	jmp	.L44
.L47:
	leaq	-332(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L45
	leaq	-328(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L45
	leaq	-324(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L45
	leaq	-320(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L45
	leaq	-316(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L45
	leaq	-312(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L45
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
	jmp	.L44
.L45:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC15(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L67
.L44:
	movq	-192(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L46
	movq	-272(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jb	.L47
.L46:
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
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC23(%rip), %rax
	pushq	%rax
	leaq	.LC24(%rip), %rax
	pushq	%rax
	leaq	.LC17(%rip), %r9
	leaq	.LC18(%rip), %r8
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	$0, -264(%rbp)
	jmp	.L48
.L60:
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
	js	.L49
	cvtsi2ssq	%rax, %xmm1
	jmp	.L50
.L49:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
.L50:
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	js	.L51
	cvtsi2ssq	%rax, %xmm0
	jmp	.L52
.L51:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L52:
	mulss	%xmm1, %xmm0
	movss	%xmm0, -304(%rbp)
	cvtss2sd	-304(%rbp), %xmm1
	movsd	.LC25(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	js	.L53
	cvtsi2ssq	%rax, %xmm0
	jmp	.L54
.L53:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L54:
	cvtss2sd	%xmm0, %xmm2
	movsd	.LC26(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	js	.L55
	cvtsi2ssq	%rax, %xmm0
	jmp	.L56
.L55:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L56:
	cvtss2sd	%xmm0, %xmm2
	movsd	.LC26(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
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
	jb	.L57
	movsd	-168(%rbp), %xmm0
	subsd	-176(%rbp), %xmm0
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
.L57:
	movq	-264(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jnb	.L58
	leaq	.LC28(%rip), %rax
	jmp	.L59
.L58:
	leaq	.LC29(%rip), %rax
.L59:
	cvtss2sd	-300(%rbp), %xmm0
	movsd	-168(%rbp), %xmm1
	subsd	-176(%rbp), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	cvtss2sd	-304(%rbp), %xmm0
	movsd	-168(%rbp), %xmm1
	subsd	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-168(%rbp), %xmm0
	subsd	-176(%rbp), %xmm0
	movsd	-224(%rbp), %xmm5
	movsd	-232(%rbp), %xmm4
	movsd	-240(%rbp), %xmm3
	movq	-264(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$6, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	addq	$1, -264(%rbp)
.L48:
	movq	-264(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L60
	movq	-248(%rbp), %rax
	subq	-216(%rbp), %rax
	testq	%rax, %rax
	js	.L61
	cvtsi2sdq	%rax, %xmm0
	jmp	.L62
.L61:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L62:
	movsd	-296(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	movq	-248(%rbp), %rax
	subq	-216(%rbp), %rax
	testq	%rax, %rax
	js	.L63
	cvtsi2sdq	%rax, %xmm0
	jmp	.L64
.L63:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L64:
	movsd	-288(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	-296(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -288(%rbp)
	movq	-248(%rbp), %rax
	subq	-216(%rbp), %rax
	testq	%rax, %rax
	js	.L65
	cvtsi2sdq	%rax, %xmm0
	jmp	.L66
.L65:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L66:
	movsd	.LC31(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-280(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	movsd	-288(%rbp), %xmm0
	movq	-296(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC29(%rip), %rdx
	leaq	.LC33(%rip), %rsi
	leaq	.LC34(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC35(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L67:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L68
	call	__stack_chk_fail@PLT
.L68:
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
	.align 4
.LC12:
	.long	1008981770
	.align 8
.LC25:
	.long	0
	.long	1076953088
	.align 8
.LC26:
	.long	0
	.long	1075314688
	.align 8
.LC27:
	.long	3894859413
	.long	1041313291
	.align 8
.LC31:
	.long	0
	.long	1074266112
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
