	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_mlx_int_str_str        ## -- Begin function mlx_int_str_str
	.p2align	4, 0x90
_mlx_int_str_str:                       ## @mlx_int_str_str
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_strlen
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpl	%r15d, %ecx
	jg	LBB0_8
## %bb.1:                               ## %.preheader25
	movslq	%ecx, %rsi
	cmpb	$0, -1(%rbx,%rsi)
	je	LBB0_8
## %bb.2:                               ## %.preheader.preheader
	movb	(%r14), %r8b
	xorl	%edx, %edx
LBB0_3:                                 ## %.preheader
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	xorl	%edi, %edi
	movl	%r8d, %ecx
	.p2align	4, 0x90
LBB0_4:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpb	(%rbx,%rdi), %cl
	jne	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=2
	movzbl	1(%r14,%rdi), %ecx
	incq	%rdi
	testb	%cl, %cl
	jne	LBB0_4
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	incl	%edx
	cmpb	$0, (%rbx,%rsi)
	leaq	1(%rbx), %rbx
	jne	LBB0_3
	jmp	LBB0_8
LBB0_6:
	movl	%edx, %eax
LBB0_8:                                 ## %.loopexit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_int_str_str_cote   ## -- Begin function mlx_int_str_str_cote
	.p2align	4, 0x90
_mlx_int_str_str_cote:                  ## @mlx_int_str_str_cote
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_strlen
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpl	%r15d, %ecx
	jg	LBB1_10
## %bb.1:                               ## %.preheader32
	movslq	%ecx, %r8
	cmpb	$0, -1(%rbx,%r8)
	je	LBB1_10
## %bb.2:                               ## %.lr.ph.preheader
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	LBB1_3
	.p2align	4, 0x90
LBB1_9:                                 ## %.loopexit
                                        ##   in Loop: Header=BB1_3 Depth=1
	incl	%edx
	cmpb	$0, (%rbx,%r8)
	leaq	1(%rbx), %rbx
	je	LBB1_10
LBB1_3:                                 ## %.lr.ph
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_6 Depth 2
	movl	%esi, %edi
	movb	(%rbx), %cl
	movl	$1, %esi
	subl	%edi, %esi
	cmpb	$34, %cl
	cmovnel	%edi, %esi
	testl	%esi, %esi
	jne	LBB1_9
## %bb.4:                               ## %.preheader.preheader
                                        ##   in Loop: Header=BB1_3 Depth=1
	cmpb	%cl, (%r14)
	jne	LBB1_9
## %bb.5:                               ## %.lr.ph48.preheader
                                        ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edi
	.p2align	4, 0x90
LBB1_6:                                 ## %.lr.ph48
                                        ##   Parent Loop BB1_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rdi), %ecx
	testb	%cl, %cl
	je	LBB1_7
## %bb.8:                               ## %..preheader_crit_edge
                                        ##   in Loop: Header=BB1_6 Depth=2
	cmpb	(%rbx,%rdi), %cl
	leaq	1(%rdi), %rdi
	je	LBB1_6
	jmp	LBB1_9
LBB1_7:
	movl	%edx, %eax
LBB1_10:                                ## %.loopexit31
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_int_str_to_wordtab ## -- Begin function mlx_int_str_to_wordtab
	.p2align	4, 0x90
_mlx_int_str_to_wordtab:                ## @mlx_int_str_to_wordtab
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movabsq	$4294967296, %r15       ## imm = 0x100000000
	callq	_strlen
	movq	%rax, %r14
	movabsq	$4294967809, %r12       ## imm = 0x100000201
	xorl	%edi, %edi
	testl	%r14d, %r14d
	jle	LBB2_12
## %bb.1:                               ## %.preheader66.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB2_2:                                 ## %.preheader66
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
                                        ##     Child Loop BB2_8 Depth 2
	movslq	%ecx, %rdx
	leaq	(%rbx,%rdx), %rsi
	shlq	$32, %rdx
	jmp	LBB2_3
	.p2align	4, 0x90
LBB2_28:                                ## %.critedge
                                        ##   in Loop: Header=BB2_3 Depth=2
	addq	%r15, %rdx
	incq	%rsi
	incl	%ecx
LBB2_3:                                 ##   Parent Loop BB2_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi), %eax
	cmpb	$9, %al
	je	LBB2_28
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	cmpb	$32, %al
	je	LBB2_28
## %bb.5:                               ##   in Loop: Header=BB2_2 Depth=1
	testb	%al, %al
	je	LBB2_7
## %bb.6:                               ##   in Loop: Header=BB2_2 Depth=1
	incl	%edi
LBB2_7:                                 ## %.loopexit67
                                        ##   in Loop: Header=BB2_2 Depth=1
	sarq	$32, %rdx
	movq	%rdx, %rcx
	jmp	LBB2_8
	.p2align	4, 0x90
LBB2_10:                                ##   in Loop: Header=BB2_8 Depth=2
	incq	%rcx
LBB2_8:                                 ##   Parent Loop BB2_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx,%rcx), %eax
	cmpq	$32, %rax
	ja	LBB2_10
## %bb.9:                               ##   in Loop: Header=BB2_8 Depth=2
	btq	%rax, %r12
	jae	LBB2_10
## %bb.11:                              ## %.critedge1
                                        ##   in Loop: Header=BB2_2 Depth=1
	cmpl	%r14d, %ecx
	jl	LBB2_2
LBB2_12:                                ## %._crit_edge77
	movslq	%edi, %rax
	leaq	8(,%rax,8), %rdi
	callq	_malloc
	xorl	%r8d, %r8d
	testq	%rax, %rax
	je	LBB2_13
## %bb.14:                              ## %.preheader65
	testl	%r14d, %r14d
	jle	LBB2_26
## %bb.15:                              ## %.preheader.preheader
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB2_16:                                ## %.preheader
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_17 Depth 2
                                        ##     Child Loop BB2_22 Depth 2
	movslq	%edx, %rsi
	leaq	(%rbx,%rsi), %rdi
	shlq	$32, %rsi
	jmp	LBB2_17
	.p2align	4, 0x90
LBB2_29:                                ##   in Loop: Header=BB2_17 Depth=2
	movb	$0, (%rdi)
	addq	%r15, %rsi
	incq	%rdi
	incl	%edx
LBB2_17:                                ##   Parent Loop BB2_16 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %ecx
	cmpb	$9, %cl
	je	LBB2_29
## %bb.18:                              ##   in Loop: Header=BB2_17 Depth=2
	cmpb	$32, %cl
	je	LBB2_29
## %bb.19:                              ##   in Loop: Header=BB2_16 Depth=1
	testb	%cl, %cl
	je	LBB2_21
## %bb.20:                              ##   in Loop: Header=BB2_16 Depth=1
	movslq	%r8d, %r8
	movq	%rdi, (%rax,%r8,8)
	incl	%r8d
LBB2_21:                                ## %.loopexit
                                        ##   in Loop: Header=BB2_16 Depth=1
	sarq	$32, %rsi
	movq	%rsi, %rdx
	jmp	LBB2_22
	.p2align	4, 0x90
LBB2_24:                                ##   in Loop: Header=BB2_22 Depth=2
	incq	%rdx
LBB2_22:                                ##   Parent Loop BB2_16 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx,%rdx), %ecx
	cmpq	$32, %rcx
	ja	LBB2_24
## %bb.23:                              ##   in Loop: Header=BB2_22 Depth=2
	btq	%rcx, %r12
	jae	LBB2_24
## %bb.25:                              ## %.critedge3
                                        ##   in Loop: Header=BB2_16 Depth=1
	cmpl	%r14d, %edx
	jl	LBB2_16
LBB2_26:                                ## %._crit_edge
	movslq	%r8d, %rcx
	movq	$0, (%rax,%rcx,8)
	jmp	LBB2_27
LBB2_13:
	xorl	%eax, %eax
LBB2_27:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
