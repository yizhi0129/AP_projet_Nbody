	.text
	.file	"nbody_base.c"
	.globl	init                    # -- Begin function init
	.p2align	4, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	stderr, %rdi
	movabsq	$.L.str.2, %rsi
	movb	$0, %al
	callq	fprintf
.LBB0_2:
	movq	$0, -184(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	leaq	-176(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	$150, %esi
	callq	fgets
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	cmpq	$0, %rax
	movb	%cl, -209(%rbp)         # 1-byte Spill
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-184(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setb	%cl
	movb	%cl, -209(%rbp)         # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movb	-209(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_15
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	-176(%rbp), %rdi
	movabsq	$.L.str.3, %rsi
	leaq	-188(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB0_13
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	-176(%rbp), %rdi
	movabsq	$.L.str.4, %rsi
	leaq	-192(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	-176(%rbp), %rdi
	movabsq	$.L.str.5, %rsi
	leaq	-196(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	-176(%rbp), %rdi
	movabsq	$.L.str.6, %rsi
	leaq	-200(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	-176(%rbp), %rdi
	movabsq	$.L.str.7, %rsi
	leaq	-204(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	-176(%rbp), %rdi
	movabsq	$.L.str.8, %rsi
	leaq	-208(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	movss	-188(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -184(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, (%rax)
	movss	-192(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -184(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 4(%rax)
	movss	-196(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -184(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 8(%rax)
	movss	-200(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -184(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 12(%rax)
	movss	-204(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -184(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 16(%rax)
	movss	-208(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -184(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 20(%rax)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	movq	stderr, %rdi
	movabsq	$.L.str.9, %rsi
	movb	$0, %al
	callq	fprintf
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_15:
	movq	-24(%rbp), %rdi
	callq	fclose
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	init, .Lfunc_end0-init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function move_particles
.LCPI1_0:
	.long	507307272               # float 9.99999968E-21
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_1:
	.quad	4609434218613702656     # double 1.5
	.text
	.globl	move_particles
	.p2align	4, 0x90
	.type	move_particles,@function
move_particles:                         # @move_particles
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movss	%xmm1, -28(%rbp)
	movq	$0, -40(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB1_8
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	xorps	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	%xmm0, -48(%rbp)
	movss	%xmm0, -52(%rbp)
	movq	$0, -64(%rbp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -64(%rbp), %rcx
	addq	%rcx, %rax
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	subss	(%rax), %xmm2
	movss	%xmm2, -68(%rbp)
	movq	-8(%rbp), %rax
	imulq	$24, -64(%rbp), %rcx
	addq	%rcx, %rax
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	subss	4(%rax), %xmm2
	movss	%xmm2, -72(%rbp)
	movq	-8(%rbp), %rax
	imulq	$24, -64(%rbp), %rcx
	addq	%rcx, %rax
	movss	8(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	subss	8(%rax), %xmm2
	movss	%xmm2, -76(%rbp)
	movss	-68(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-68(%rbp), %xmm2
	movss	-72(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	-72(%rbp), %xmm3
	addss	%xmm3, %xmm2
	movss	-76(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	-76(%rbp), %xmm3
	addss	%xmm3, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, -80(%rbp)
	movss	-80(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	pow
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-84(%rbp), %xmm0
	addss	-44(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-72(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-84(%rbp), %xmm0
	addss	-48(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-76(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-84(%rbp), %xmm0
	addss	-52(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm0
	movq	-8(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	addss	12(%rax), %xmm0
	movss	%xmm0, 12(%rax)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	addss	16(%rax), %xmm0
	movss	%xmm0, 16(%rax)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm0
	movq	-8(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	addss	20(%rax), %xmm0
	movss	%xmm0, 20(%rax)
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_1
.LBB1_8:
	movq	$0, -96(%rbp)
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -96(%rbp), %rcx
	addq	%rcx, %rax
	mulss	12(%rax), %xmm0
	movq	-8(%rbp), %rax
	imulq	$24, -96(%rbp), %rcx
	addq	%rcx, %rax
	addss	(%rax), %xmm0
	movss	%xmm0, (%rax)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -96(%rbp), %rcx
	addq	%rcx, %rax
	mulss	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	imulq	$24, -96(%rbp), %rcx
	addq	%rcx, %rax
	addss	4(%rax), %xmm0
	movss	%xmm0, 4(%rax)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	imulq	$24, -96(%rbp), %rcx
	addq	%rcx, %rax
	mulss	20(%rax), %xmm0
	movq	-8(%rbp), %rax
	imulq	$24, -96(%rbp), %rcx
	addq	%rcx, %rax
	addss	8(%rax), %xmm0
	movss	%xmm0, 8(%rax)
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB1_9
.LBB1_12:
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	move_particles, .Lfunc_end1-move_particles
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function compute_delta_x
.LCPI2_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI2_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	compute_delta_x
	.p2align	4, 0x90
	.type	compute_delta_x,@function
compute_delta_x:                        # @compute_delta_x
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [1127219200,1160773632,0,0]
	movq	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI2_1(%rip), %xmm0   # xmm0 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1    # xmm1 = xmm1[1,1]
	addsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	compute_delta_x, .Lfunc_end2-compute_delta_x
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function compute_delta_y
.LCPI3_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI3_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	compute_delta_y
	.p2align	4, 0x90
	.type	compute_delta_y,@function
compute_delta_y:                        # @compute_delta_y
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [1127219200,1160773632,0,0]
	movq	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI3_1(%rip), %xmm0   # xmm0 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1    # xmm1 = xmm1[1,1]
	addsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	compute_delta_y, .Lfunc_end3-compute_delta_y
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function compute_delta_z
.LCPI4_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI4_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	compute_delta_z
	.p2align	4, 0x90
	.type	compute_delta_z,@function
compute_delta_z:                        # @compute_delta_z
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	imulq	$24, -40(%rbp), %rcx
	addq	%rcx, %rax
	movss	8(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_1
.LBB4_4:
	movaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [1127219200,1160773632,0,0]
	movq	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI4_1(%rip), %xmm0   # xmm0 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1    # xmm1 = xmm1[1,1]
	addsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	compute_delta_z, .Lfunc_end4-compute_delta_z
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI5_0:
	.long	1008981770              # float 0.00999999977
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI5_1:
	.quad	4629137466983448576     # double 30
.LCPI5_2:
	.quad	4621819117588971520     # double 10
.LCPI5_3:
	.quad	4472406533629990549     # double 1.0000000000000001E-9
.LCPI5_4:
	.quad	4618441417868443648     # double 6
.LCPI5_5:
	.quad	4625478292286210048     # double 17
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$1, -8(%rbp)
	jle	.LBB5_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoll
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:
	movl	$16384, %eax            # imm = 0x4000
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB5_3
.LBB5_3:
	movq	-352(%rbp), %rax        # 8-byte Reload
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%rax, -24(%rbp)
	movq	$13, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	$3, -96(%rbp)
	imulq	$24, -24(%rbp), %rdi
	callq	malloc
	movq	%rax, -104(%rbp)
	imulq	$24, -24(%rbp), %rdi
	callq	malloc
	movq	%rax, -112(%rbp)
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB5_5
# %bb.4:
	movq	stderr, %rdi
	movabsq	$.L.str.11, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$1, -4(%rbp)
	jmp	.LBB5_25
.LBB5_5:
	movq	$0, -280(%rbp)
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	leaq	-272(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movl	$150, %esi
	callq	fgets
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	cmpq	$0, %rax
	movb	%cl, -353(%rbp)         # 1-byte Spill
	je	.LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	movq	-280(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setb	%cl
	movb	%cl, -353(%rbp)         # 1-byte Spill
.LBB5_8:                                #   in Loop: Header=BB5_6 Depth=1
	movb	-353(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_9
	jmp	.LBB5_18
.LBB5_9:                                #   in Loop: Header=BB5_6 Depth=1
	leaq	-272(%rbp), %rdi
	movabsq	$.L.str.3, %rsi
	leaq	-284(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB5_16
# %bb.10:                               #   in Loop: Header=BB5_6 Depth=1
	leaq	-272(%rbp), %rdi
	movabsq	$.L.str.4, %rsi
	leaq	-288(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB5_16
# %bb.11:                               #   in Loop: Header=BB5_6 Depth=1
	leaq	-272(%rbp), %rdi
	movabsq	$.L.str.5, %rsi
	leaq	-292(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB5_16
# %bb.12:                               #   in Loop: Header=BB5_6 Depth=1
	leaq	-272(%rbp), %rdi
	movabsq	$.L.str.6, %rsi
	leaq	-296(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB5_16
# %bb.13:                               #   in Loop: Header=BB5_6 Depth=1
	leaq	-272(%rbp), %rdi
	movabsq	$.L.str.7, %rsi
	leaq	-300(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB5_16
# %bb.14:                               #   in Loop: Header=BB5_6 Depth=1
	leaq	-272(%rbp), %rdi
	movabsq	$.L.str.8, %rsi
	leaq	-304(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB5_16
# %bb.15:                               #   in Loop: Header=BB5_6 Depth=1
	movss	-284(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rax
	imulq	$24, -280(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, (%rax)
	movss	-288(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rax
	imulq	$24, -280(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 4(%rax)
	movss	-292(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rax
	imulq	$24, -280(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 8(%rax)
	movss	-296(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rax
	imulq	$24, -280(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 12(%rax)
	movss	-300(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rax
	imulq	$24, -280(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 16(%rax)
	movss	-304(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rax
	imulq	$24, -280(%rbp), %rcx
	addq	%rcx, %rax
	movss	%xmm0, 20(%rax)
	movq	-280(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -280(%rbp)
	jmp	.LBB5_17
.LBB5_16:
	movq	stderr, %rdi
	movabsq	$.L.str.12, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$1, -4(%rbp)
	jmp	.LBB5_25
.LBB5_17:                               #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_6
.LBB5_18:
	movq	-120(%rbp), %rdi
	callq	fclose
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -360(%rbp)        # 4-byte Spill
	callq	init
	imulq	$24, -24(%rbp), %rcx
	movq	%rcx, -312(%rbp)
	movq	-312(%rbp), %rsi
	movq	-312(%rbp), %rcx
	shrq	$10, %rcx
	movq	-312(%rbp), %rdx
	shrq	$20, %rdx
	movabsq	$.L.str.13, %rdi
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.20, %r10
	movq	%r10, (%rsp)
	movabsq	$.L.str.21, %r10
	movq	%r10, 8(%rsp)
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	stdout, %rdi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	fflush
	movq	$0, -320(%rbp)
.LBB5_19:                               # =>This Inner Loop Header: Depth=1
	cmpq	$13, -320(%rbp)
	jae	.LBB5_24
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=1
	movsd	.LCPI5_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI5_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movsd	%xmm1, -392(%rbp)       # 8-byte Spill
	callq	omp_get_wtime
	movsd	%xmm0, -328(%rbp)
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	move_particles
	callq	omp_get_wtime
	movsd	%xmm0, -336(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	shrq	%rcx
	movl	%eax, %edx
	andl	$1, %edx
	movl	%edx, %esi
	orq	%rcx, %rsi
	cvtsi2ss	%rsi, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	testq	%rax, %rax
	movss	%xmm1, -396(%rbp)       # 4-byte Spill
	movss	%xmm0, -400(%rbp)       # 4-byte Spill
	js	.LBB5_27
# %bb.26:                               #   in Loop: Header=BB5_19 Depth=1
	movss	-396(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -400(%rbp)       # 4-byte Spill
.LBB5_27:                               #   in Loop: Header=BB5_19 Depth=1
	movss	-400(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	movss	%xmm0, -340(%rbp)
	movss	-340(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI5_5(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	shrq	%rcx
	movl	%eax, %edx
	andl	$1, %edx
	movl	%edx, %esi
	orq	%rcx, %rsi
	cvtsi2ss	%rsi, %xmm1
	addss	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm2
	testq	%rax, %rax
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movss	%xmm2, -412(%rbp)       # 4-byte Spill
	movss	%xmm1, -416(%rbp)       # 4-byte Spill
	js	.LBB5_29
# %bb.28:                               #   in Loop: Header=BB5_19 Depth=1
	movss	-412(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -416(%rbp)       # 4-byte Spill
.LBB5_29:                               #   in Loop: Header=BB5_19 Depth=1
	movss	-416(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI5_4(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	-408(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	cvtss2sd	%xmm0, %xmm0
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	movsd	-384(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -344(%rbp)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	compute_delta_x
	movsd	%xmm0, -64(%rbp)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	compute_delta_y
	movsd	%xmm0, -72(%rbp)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	compute_delta_z
	movsd	%xmm0, -80(%rbp)
	cmpq	$3, -320(%rbp)
	jb	.LBB5_22
# %bb.21:                               #   in Loop: Header=BB5_19 Depth=1
	movss	-344(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movsd	-336(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-328(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movss	-344(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	-344(%rbp), %xmm0
	movsd	-336(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-328(%rbp), %xmm1
	movsd	-336(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-328(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
.LBB5_22:                               #   in Loop: Header=BB5_19 Depth=1
	movq	-320(%rbp), %rsi
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-328(%rbp), %xmm0
	movss	-340(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	-336(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-328(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movss	-344(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movsd	-336(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-328(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-80(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	-320(%rbp), %rax
	cmpq	$3, %rax
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.24, %rcx
	cmovbq	%rax, %rcx
	movabsq	$.L.str.22, %rdi
	movq	%rcx, %rdx
	movb	$6, %al
	callq	printf
	movq	stdout, %rdi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	fflush
# %bb.23:                               #   in Loop: Header=BB5_19 Depth=1
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	jmp	.LBB5_19
.LBB5_24:
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI5_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sqrt
	movsd	%xmm0, -56(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-432(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movabsq	$.L.str.25, %rdi
	movb	$0, %al
	callq	printf
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.24, %rdx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movb	$2, %al
	callq	printf
	movabsq	$.L.str.25, %rdi
	movl	%eax, -440(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movabsq	$.L.str.28, %rdi
	movl	%eax, -444(%rbp)        # 4-byte Spill
	movb	$1, %al
	callq	printf
	movabsq	$.L.str.25, %rdi
	movl	%eax, -448(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -452(%rbp)        # 4-byte Spill
	callq	free
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	free
	movl	$0, -4(%rbp)
.LBB5_25:
	movl	-4(%rbp), %eax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"../ref/init.txt"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Error opening file init.txt\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%f %*f %*f %*f %*f %*f"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%*f %f %*f %*f %*f %*f"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%*f %*f %f %*f %*f %*f"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%*f %*f %*f %f %*f %*f"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%*f %*f %*f %*f %f %*f"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%*f %*f %*f %*f %*f %f"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Error scanning file init.txt\n"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"../ref/ref.txt"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Error opening file ref.txt\n"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Error scanning file ref.txt\n"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n"
	.size	.L.str.13, 57

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033[1m%5s %10s %10s %8s %8s %8s %8s\033[0m\n"
	.size	.L.str.14, 39

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Step"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Time, s"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Interact/s"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GFLOP/s"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"delta x"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"delta y"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"delta z"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%5llu %10.3e %10.3e %8.1f %10.3e %10.3e %10.3e %s\n"
	.size	.L.str.22, 51

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"(warm up)"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.zero	1
	.size	.L.str.24, 1

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"-----------------------------------------------------\n"
	.size	.L.str.25, 55

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n"
	.size	.L.str.26, 46

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Average performance:"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Average delta:\t%10.3e\n"
	.size	.L.str.28, 23

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym init
	.addrsig_sym fopen
	.addrsig_sym fprintf
	.addrsig_sym fgets
	.addrsig_sym __isoc99_sscanf
	.addrsig_sym fclose
	.addrsig_sym move_particles
	.addrsig_sym pow
	.addrsig_sym compute_delta_x
	.addrsig_sym compute_delta_y
	.addrsig_sym compute_delta_z
	.addrsig_sym atoll
	.addrsig_sym malloc
	.addrsig_sym printf
	.addrsig_sym fflush
	.addrsig_sym omp_get_wtime
	.addrsig_sym sqrt
	.addrsig_sym free
	.addrsig_sym stderr
	.addrsig_sym stdout
