	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_mipng_is_type          ## -- Begin function mipng_is_type
	.p2align	4, 0x90
_mipng_is_type:                         ## @mipng_is_type
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movzbl	4(%rdi), %eax
	movsbl	(%rsi), %ecx
	cmpl	%ecx, %eax
	jne	LBB0_4
## %bb.1:
	movzbl	5(%rdi), %eax
	movsbl	1(%rsi), %ecx
	cmpl	%ecx, %eax
	jne	LBB0_4
## %bb.2:
	movzbl	6(%rdi), %eax
	movsbl	2(%rsi), %ecx
	cmpl	%ecx, %eax
	jne	LBB0_4
## %bb.3:
	movzbl	7(%rdi), %ecx
	movsbl	3(%rsi), %edx
	movl	$1, %eax
	cmpl	%edx, %ecx
	je	LBB0_5
LBB0_4:
	xorl	%eax, %eax
LBB0_5:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_defilter_none    ## -- Begin function mipng_defilter_none
	.p2align	4, 0x90
_mipng_defilter_none:                   ## @mipng_defilter_none
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%esi, %rax
	movzbl	(%rdi,%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_defilter_sub     ## -- Begin function mipng_defilter_sub
	.p2align	4, 0x90
_mipng_defilter_sub:                    ## @mipng_defilter_sub
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%esi, %rax
	addb	(%rdi,%rax), %dl
	movzbl	%dl, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_defilter_up      ## -- Begin function mipng_defilter_up
	.p2align	4, 0x90
_mipng_defilter_up:                     ## @mipng_defilter_up
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%esi, %rax
	addb	(%rdi,%rax), %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_defilter_average ## -- Begin function mipng_defilter_average
	.p2align	4, 0x90
_mipng_defilter_average:                ## @mipng_defilter_average
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%esi, %rax
	addl	%ecx, %edx
	shrl	%edx
	addb	(%rdi,%rax), %dl
	movzbl	%dl, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_defilter_paeth   ## -- Begin function mipng_defilter_paeth
	.p2align	4, 0x90
_mipng_defilter_paeth:                  ## @mipng_defilter_paeth
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
                                        ## kill: def $ecx killed $ecx def $rcx
                                        ## kill: def $edx killed $edx def $rdx
	movl	%ecx, %eax
	subl	%r8d, %eax
	movl	%eax, %r10d
	negl	%r10d
	cmovll	%eax, %r10d
	movl	%edx, %eax
	subl	%r8d, %eax
	movl	%eax, %r9d
	negl	%r9d
	cmovll	%eax, %r9d
	leal	(%rcx,%rdx), %eax
	subl	%r8d, %eax
	subl	%r8d, %eax
	movl	%eax, %r11d
	cmpl	%r9d, %r10d
	jle	LBB5_2
## %bb.1:                               ## %._crit_edge
	negl	%r11d
	jmp	LBB5_3
LBB5_2:
	negl	%r11d
	movl	%eax, %ebx
	cmovgel	%r11d, %ebx
	cmpl	%ebx, %r10d
	jle	LBB5_4
LBB5_3:
	testl	%eax, %eax
	cmovnsl	%eax, %r11d
	cmpl	%r11d, %r9d
	cmovgl	%r8d, %ecx
	movl	%ecx, %edx
LBB5_4:
	movslq	%esi, %rax
	addb	(%rdi,%rax), %dl
	movzbl	%dl, %eax
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_fill_img         ## -- Begin function mipng_fill_img
	.p2align	4, 0x90
_mipng_fill_img:                        ## @mipng_fill_img
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	movq	8(%rdi), %r12
	movl	(%rdi), %esi
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movl	4(%rdi), %eax
	movl	%eax, %edi
	imull	%esi, %edi
	leal	(,%rdi,4), %ecx
	movl	%ecx, -44(%rbp)         ## 4-byte Spill
	movl	20(%rdx), %ecx
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	imull	%edi, %ecx
	movl	$0, %ebx
	movl	$0, %r13d
	addl	%eax, %ecx
	movl	%ecx, -48(%rbp)         ## 4-byte Spill
	jle	LBB6_19
## %bb.1:
	movl	$0, %ebx
	movl	$0, %r13d
	cmpl	$0, -64(%rbp)           ## 4-byte Folded Reload
	jle	LBB6_19
## %bb.2:                               ## %.lr.ph104
	shll	$2, %esi
	xorl	%r14d, %r14d
                                        ## implicit-def: $r15d
	xorl	%ebx, %ebx
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
	movl	%esi, -52(%rbp)         ## 4-byte Spill
	.p2align	4, 0x90
LBB6_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	%r14d, %eax
	cltd
	idivl	%esi
	movslq	%r14d, %r13
	testl	%edx, %edx
	je	LBB6_4
## %bb.7:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	%r15d, %eax
	leaq	_mipng_defilter(%rip), %rcx
	movq	(%rcx,%rax,8), %r9
	cmpl	$4, %edx
	jl	LBB6_8
## %bb.9:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	-4(%r13,%r12), %edx
	xorl	%eax, %eax
	jmp	LBB6_10
	.p2align	4, 0x90
LBB6_4:                                 ##   in Loop: Header=BB6_3 Depth=1
	movslq	%ebx, %rax
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movzbl	(%rcx,%rax), %r15d
	cmpl	$4, %r15d
	ja	LBB6_5
## %bb.6:                               ## %.thread
                                        ##   in Loop: Header=BB6_3 Depth=1
	incl	%ebx
	movl	%r15d, %eax
	leaq	_mipng_defilter(%rip), %rcx
	movq	(%rcx,%rax,8), %r9
LBB6_8:                                 ##   in Loop: Header=BB6_3 Depth=1
	xorl	%edx, %edx
	movb	$1, %al
LBB6_10:                                ##   in Loop: Header=BB6_3 Depth=1
	xorl	%r8d, %r8d
	movl	%r14d, %ecx
	subl	%esi, %ecx
	jge	LBB6_12
## %bb.11:                              ##   in Loop: Header=BB6_3 Depth=1
	xorl	%ecx, %ecx
	jmp	LBB6_14
	.p2align	4, 0x90
LBB6_12:                                ##   in Loop: Header=BB6_3 Depth=1
	movslq	%ecx, %rsi
	movzbl	(%r12,%rsi), %ecx
	testb	%al, %al
	jne	LBB6_14
## %bb.13:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	-4(%rsi,%r12), %r8d
LBB6_14:                                ## %.thread92
                                        ##   in Loop: Header=BB6_3 Depth=1
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movl	%ebx, %esi
	callq	*%r9
	movb	%al, (%r12,%r13)
	incq	%r13
	xorl	%eax, %eax
	movq	-88(%rbp), %rdx         ## 8-byte Reload
	cmpl	$16, 8(%rdx)
	sete	%al
	leal	3(%r13), %ecx
	testl	%r13d, %r13d
	cmovnsl	%r13d, %ecx
	leal	1(%rax,%rbx), %ebx
	andl	$-4, %ecx
	movl	%r13d, %eax
	subl	%ecx, %eax
	cmpl	$3, %eax
	jne	LBB6_17
## %bb.15:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	$2, 12(%rdx)
	jne	LBB6_17
## %bb.16:                              ##   in Loop: Header=BB6_3 Depth=1
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rax
	addl	$2, %r14d
	movb	$-1, (%rax,%r13)
	movl	%r14d, %r13d
LBB6_17:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	-48(%rbp), %ebx         ## 4-byte Folded Reload
	movl	-52(%rbp), %esi         ## 4-byte Reload
	jge	LBB6_19
## %bb.18:                              ##   in Loop: Header=BB6_3 Depth=1
	movl	%r13d, %r14d
	cmpl	-44(%rbp), %r13d        ## 4-byte Folded Reload
	jl	LBB6_3
LBB6_19:                                ## %._crit_edge
	xorl	-44(%rbp), %r13d        ## 4-byte Folded Reload
	xorl	-48(%rbp), %ebx         ## 4-byte Folded Reload
	orl	%r13d, %ebx
	movl	$11, %ecx
	movl	$0, %eax
	cmovnel	%ecx, %eax
	jne	LBB6_23
## %bb.20:                              ## %._crit_edge
	cmpl	$0, -64(%rbp)           ## 4-byte Folded Reload
	jle	LBB6_23
## %bb.21:                              ## %.lr.ph.preheader
	movslq	-44(%rbp), %rsi         ## 4-byte Folded Reload
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_22:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%rcx), %edx
	movzbl	2(%r12,%rcx), %ebx
	movb	%bl, (%r12,%rcx)
	movb	%dl, 2(%r12,%rcx)
	notb	3(%r12,%rcx)
	addq	$4, %rcx
	cmpq	%rsi, %rcx
	jl	LBB6_22
	jmp	LBB6_23
LBB6_5:
	movl	$12, %eax
LBB6_23:                                ## %.loopexit
                                        ## kill: def $eax killed $eax killed $rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_data             ## -- Begin function mipng_data
	.p2align	4, 0x90
_mipng_data:                            ## @mipng_data
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$32920, %eax            ## imm = 0x8098
	callq	____chkstk_darwin
	subq	%rax, %rsp
	popq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movslq	(%rdi), %rax
	movslq	4(%rdi), %rcx
	imulq	%rcx, %rax
	movslq	20(%rdx), %rdi
	imulq	%rax, %rdi
	addq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -32832(%rbp)      ## 8-byte Spill
	testq	%rax, %rax
	je	LBB7_18
## %bb.1:
	movl	$0, -32952(%rbp)
	movq	$0, -32960(%rbp)
	movq	$0, -32896(%rbp)
	movq	$0, -32888(%rbp)
	movq	$0, -32880(%rbp)
	leaq	L_.str.14(%rip), %rsi
	leaq	-32960(%rbp), %rdi
	movl	$112, %edx
	callq	_inflateInit_
	movl	$10, %edx
	testl	%eax, %eax
	je	LBB7_2
LBB7_16:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB7_19
## %bb.17:
	movl	%edx, %eax
	addq	$32920, %rsp            ## imm = 0x8098
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_2:                                 ## %.preheader
	xorl	%r12d, %r12d
	cmpb	$73, 4(%r13)
	jne	LBB7_14
## %bb.3:                               ## %.lr.ph
	xorl	%r12d, %r12d
	leaq	-32816(%rbp), %rbx
	movq	%r15, -32824(%rbp)      ## 8-byte Spill
LBB7_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_8 Depth 2
	cmpb	$68, 5(%r13)
	jne	LBB7_14
## %bb.5:                               ##   in Loop: Header=BB7_4 Depth=1
	cmpb	$65, 6(%r13)
	jne	LBB7_14
## %bb.6:                               ##   in Loop: Header=BB7_4 Depth=1
	cmpb	$84, 7(%r13)
	jne	LBB7_14
## %bb.7:                               ## %mipng_is_type.exit
                                        ##   in Loop: Header=BB7_4 Depth=1
	movl	(%r13), %eax
	bswapl	%eax
	movq	%rax, -32840(%rbp)      ## 8-byte Spill
	movl	%eax, -32952(%rbp)
	movq	%r13, -32848(%rbp)      ## 8-byte Spill
	leaq	8(%r13), %rax
	movq	%rax, -32960(%rbp)
	movl	$0, -32928(%rbp)
	movl	%r12d, %r13d
	.p2align	4, 0x90
LBB7_8:                                 ##   Parent Loop BB7_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$32768, -32928(%rbp)    ## imm = 0x8000
	movq	%rbx, %r15
	movq	%rbx, -32936(%rbp)
	leaq	-32960(%rbp), %rdi
	xorl	%esi, %esi
	callq	_inflate
	cmpl	$2, %eax
	jae	LBB7_9
## %bb.10:                              ##   in Loop: Header=BB7_8 Depth=2
	leal	32768(%r13), %r12d
	movl	-32928(%rbp), %eax
	movl	%r12d, %ecx
	subl	%eax, %ecx
	movl	4(%r14), %edx
	movl	(%r14), %esi
	imull	%edx, %esi
	movq	-32824(%rbp), %rdi      ## 8-byte Reload
	imull	20(%rdi), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	ja	LBB7_11
## %bb.12:                              ##   in Loop: Header=BB7_8 Depth=2
	movslq	%r13d, %rdi
	addq	-32832(%rbp), %rdi      ## 8-byte Folded Reload
	movl	$32768, %edx            ## imm = 0x8000
	subl	%eax, %edx
	movq	%r15, %rsi
	callq	_memmove
	movq	%r15, %rbx
	movl	-32928(%rbp), %eax
	subl	%eax, %r12d
	movl	%r12d, %r13d
	testl	%eax, %eax
	je	LBB7_8
## %bb.13:                              ##   in Loop: Header=BB7_4 Depth=1
	movq	-32840(%rbp), %rcx      ## 8-byte Reload
	addl	$12, %ecx
	movq	-32848(%rbp), %rax      ## 8-byte Reload
	cmpb	$73, 4(%rax,%rcx)
	leaq	(%rax,%rcx), %r13
	movq	-32824(%rbp), %r15      ## 8-byte Reload
	je	LBB7_4
LBB7_14:                                ## %._crit_edge
	leaq	-32960(%rbp), %rdi
	callq	_inflateEnd
	movl	4(%r14), %eax
	movl	(%r14), %ecx
	imull	%eax, %ecx
	imull	20(%r15), %ecx
	addl	%eax, %ecx
	movl	$11, %edx
	cmpl	%ecx, %r12d
	jne	LBB7_16
## %bb.15:
	movq	%r14, %rdi
	movq	-32832(%rbp), %rsi      ## 8-byte Reload
	movq	%r15, %rdx
	callq	_mipng_fill_img
	movl	%eax, %edx
	jmp	LBB7_16
LBB7_9:
	leaq	-32960(%rbp), %rdi
	callq	_inflateEnd
	movl	$10, %edx
	jmp	LBB7_16
LBB7_11:
	leaq	-32960(%rbp), %rdi
	callq	_inflateEnd
	movl	$11, %edx
	jmp	LBB7_16
LBB7_19:
	callq	___stack_chk_fail
LBB7_18:                                ## %codeRepl
	callq	_mipng_data.cold.1
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_magic            ## -- Begin function mipng_magic
	.p2align	4, 0x90
_mipng_magic:                           ## @mipng_magic
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	cmpl	$8, %esi
	jl	LBB8_5
## %bb.1:                               ## %.preheader.preheader
	xorl	%eax, %eax
	leaq	_magic(%rip), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB8_2:                                 ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, %rdx
	je	LBB8_5
## %bb.3:                               ##   in Loop: Header=BB8_2 Depth=1
	movzbl	(%rdi,%rdx), %ecx
	cmpb	(%rdx,%rsi), %cl
	leaq	1(%rdx), %rdx
	je	LBB8_2
## %bb.4:
	movl	$2, %eax
LBB8_5:                                 ## %.loopexit
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_crc              ## -- Begin function mipng_crc
	.p2align	4, 0x90
_mipng_crc:                             ## @mipng_crc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%esi, %rax
	movl	8(%rdi,%rax), %r9d
	bswapl	%r9d
	cmpl	$-3, %eax
	jl	LBB9_1
## %bb.2:                               ## %.lr.ph.preheader
	movl	$4294967295, %r8d       ## imm = 0xFFFFFFFF
	addl	$3, %esi
	movslq	%esi, %r11
	movq	$-1, %rdx
	leaq	_crc_table(%rip), %r10
	movl	$4294967295, %ecx       ## imm = 0xFFFFFFFF
	.p2align	4, 0x90
LBB9_3:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movzbl	5(%rdi,%rdx), %eax
	movzbl	%cl, %esi
	xorq	%rax, %rsi
	shrq	$8, %rcx
	xorq	(%r10,%rsi,8), %rcx
	incq	%rdx
	cmpq	%r11, %rdx
	jl	LBB9_3
## %bb.4:                               ## %._crit_edge.loopexit
	xorq	%r8, %rcx
	jmp	LBB9_5
LBB9_1:
	xorl	%ecx, %ecx
LBB9_5:                                 ## %._crit_edge
	movl	%r9d, %edx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	setne	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_structure        ## -- Begin function mipng_structure
	.p2align	4, 0x90
_mipng_structure:                       ## @mipng_structure
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	$0, (%rdx)
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	$0, (%rcx)
	xorl	%eax, %eax
	testl	%esi, %esi
	je	LBB10_1
## %bb.2:                               ## %.lr.ph.preheader
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	leaq	_crc_table(%rip), %r10
	movl	$2, %ecx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB10_3:                                ## %.lr.ph
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_8 Depth 2
	movl	$3, %eax
	cmpl	$4, %esi
	jl	LBB10_36
## %bb.4:                               ##   in Loop: Header=BB10_3 Depth=1
	movl	(%rdi), %r15d
	movl	%r15d, %ebx
	bswapl	%ebx
	leal	12(%rbx), %r12d
	cmpl	%r12d, %esi
	jb	LBB10_36
## %bb.5:                               ##   in Loop: Header=BB10_3 Depth=1
	movslq	%ebx, %rax
	movl	8(%rdi,%rax), %r13d
	bswapl	%r13d
	cmpl	$-3, %ebx
	jl	LBB10_6
## %bb.7:                               ## %.lr.ph.preheader.i
                                        ##   in Loop: Header=BB10_3 Depth=1
	addl	$3, %ebx
	movslq	%ebx, %rax
	movq	$-1, %r9
	movl	$4294967295, %ebx       ## imm = 0xFFFFFFFF
	.p2align	4, 0x90
LBB10_8:                                ## %.lr.ph.i
                                        ##   Parent Loop BB10_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	5(%rdi,%r9), %r8d
	movzbl	%bl, %r11d
	xorq	%r8, %r11
	shrq	$8, %rbx
	xorq	(%r10,%r11,8), %rbx
	incq	%r9
	cmpq	%rax, %r9
	jl	LBB10_8
## %bb.9:                               ## %._crit_edge.loopexit.i
                                        ##   in Loop: Header=BB10_3 Depth=1
	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	xorq	%rax, %rbx
	jmp	LBB10_10
	.p2align	4, 0x90
LBB10_6:                                ##   in Loop: Header=BB10_3 Depth=1
	xorl	%ebx, %ebx
LBB10_10:                               ## %mipng_crc.exit
                                        ##   in Loop: Header=BB10_3 Depth=1
	movl	%r13d, %eax
	cmpq	%rax, %rbx
	jne	LBB10_11
## %bb.12:                              ##   in Loop: Header=BB10_3 Depth=1
	cmpb	$73, 4(%rdi)
	jne	LBB10_25
## %bb.13:                              ##   in Loop: Header=BB10_3 Depth=1
	cmpb	$72, 5(%rdi)
	jne	LBB10_19
## %bb.14:                              ##   in Loop: Header=BB10_3 Depth=1
	cmpb	$68, 6(%rdi)
	jne	LBB10_19
## %bb.15:                              ##   in Loop: Header=BB10_3 Depth=1
	cmpb	$82, 7(%rdi)
	jne	LBB10_19
## %bb.16:                              ## %mipng_is_type.exit54
                                        ##   in Loop: Header=BB10_3 Depth=1
	movl	$4, %eax
	cmpl	$218103808, %r15d       ## imm = 0xD000000
	jne	LBB10_36
## %bb.17:                              ## %mipng_is_type.exit54
                                        ##   in Loop: Header=BB10_3 Depth=1
	cmpq	$0, (%rdx)
	jne	LBB10_36
## %bb.18:                              ## %mipng_is_type.exit54.thread
                                        ##   in Loop: Header=BB10_3 Depth=1
	movq	%rdi, (%rdx)
	cmpb	$73, 4(%rdi)
	jne	LBB10_25
	.p2align	4, 0x90
LBB10_19:                               ## %mipng_is_type.exit54.thread.thread
                                        ##   in Loop: Header=BB10_3 Depth=1
	movb	5(%rdi), %al
	cmpb	$68, %al
	je	LBB10_26
## %bb.20:                              ## %mipng_is_type.exit54.thread.thread
                                        ##   in Loop: Header=BB10_3 Depth=1
	cmpb	$69, %al
	jne	LBB10_25
## %bb.21:                              ##   in Loop: Header=BB10_3 Depth=1
	cmpb	$78, 6(%rdi)
	jne	LBB10_25
## %bb.22:                              ##   in Loop: Header=BB10_3 Depth=1
	cmpb	$68, 7(%rdi)
	jne	LBB10_25
## %bb.23:                              ## %mipng_is_type.exit52
                                        ##   in Loop: Header=BB10_3 Depth=1
	movl	$5, %eax
	cmpl	$12, %esi
	jne	LBB10_36
## %bb.24:                              ## %mipng_is_type.exit52
                                        ##   in Loop: Header=BB10_3 Depth=1
	movl	$1, %ebx
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	testl	%r15d, %r15d
	je	LBB10_25
	jmp	LBB10_36
LBB10_26:                               ##   in Loop: Header=BB10_3 Depth=1
	cmpb	$65, 6(%rdi)
	jne	LBB10_25
## %bb.27:                              ##   in Loop: Header=BB10_3 Depth=1
	cmpb	$84, 7(%rdi)
	jne	LBB10_25
## %bb.28:                              ## %mipng_is_type.exit
                                        ##   in Loop: Header=BB10_3 Depth=1
	testl	%r14d, %r14d
	je	LBB10_31
## %bb.29:                              ## %mipng_is_type.exit
                                        ##   in Loop: Header=BB10_3 Depth=1
	cmpl	$2, %r14d
	jne	LBB10_32
	jmp	LBB10_30
	.p2align	4, 0x90
LBB10_25:                               ## %mipng_is_type.exit54.thread.thread82
                                        ##   in Loop: Header=BB10_3 Depth=1
	cmpl	$1, %r14d
	cmovel	%ecx, %r14d
LBB10_32:                               ##   in Loop: Header=BB10_3 Depth=1
	movl	%r12d, %eax
	addq	%rax, %rdi
	subl	%r12d, %esi
	jne	LBB10_3
	jmp	LBB10_33
LBB10_31:                               ## %.thread66
                                        ##   in Loop: Header=BB10_3 Depth=1
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rdi, (%rax)
	movl	$1, %r14d
	jmp	LBB10_32
LBB10_1:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
LBB10_33:                               ## %._crit_edge
	cmpq	$0, (%rdx)
	je	LBB10_34
## %bb.35:
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	$0, (%rcx)
	sete	%al
	cmpl	$0, -48(%rbp)           ## 4-byte Folded Reload
	leal	(%rax,%rax,8), %ecx
	movl	$9, %eax
	cmovnel	%ecx, %eax
	jmp	LBB10_36
LBB10_34:
	movl	$9, %eax
	jmp	LBB10_36
LBB10_11:
	movl	$6, %eax
LBB10_36:                               ## %.loopexit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB10_30:
	movl	$8, %eax
	jmp	LBB10_36
	.cfi_endproc
                                        ## -- End function
	.globl	_mipng_verif_hdr        ## -- Begin function mipng_verif_hdr
	.p2align	4, 0x90
_mipng_verif_hdr:                       ## @mipng_verif_hdr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	8(%rdi), %ecx
	movl	%ecx, %eax
	bswapl	%eax
	movl	%eax, (%rsi)
	movl	12(%rdi), %edx
	movl	%edx, %eax
	bswapl	%eax
	movl	%eax, 4(%rsi)
	movzbl	16(%rdi), %r11d
	movl	%r11d, 8(%rsi)
	movzbl	17(%rdi), %r10d
	movl	%r10d, 12(%rsi)
	movb	18(%rdi), %r9b
	movb	19(%rdi), %r8b
	movzbl	20(%rdi), %edi
	movl	%edi, 16(%rsi)
	movl	$7, %eax
	testl	%ecx, %ecx
	je	LBB11_10
## %bb.1:
	testl	%edx, %edx
	je	LBB11_10
## %bb.2:
	cmpb	$16, %r11b
	je	LBB11_4
## %bb.3:
	cmpb	$8, %r11b
	jne	LBB11_10
LBB11_4:
	movl	%r10d, %ecx
	orb	$4, %cl
	cmpb	$6, %cl
	jne	LBB11_10
## %bb.5:
	orb	%r9b, %r8b
	orb	%dil, %r8b
	je	LBB11_6
LBB11_10:
	popq	%rbp
	retq
LBB11_6:
	shrl	$3, %r11d
	movl	%r11d, 20(%rsi)
	xorl	%eax, %eax
	cmpb	$6, %r10b
	je	LBB11_9
## %bb.7:
	cmpb	$2, %r10b
	jne	LBB11_10
## %bb.8:                               ## %.thread
	leal	(%r11,%r11,2), %ecx
	movl	%ecx, 20(%rsi)
	popq	%rbp
	retq
LBB11_9:
	shll	$2, %r11d
	movl	%r11d, 20(%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_int_parse_png      ## -- Begin function mlx_int_parse_png
	.p2align	4, 0x90
_mlx_int_parse_png:                     ## @mlx_int_parse_png
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	cmpl	$8, %edx
	jl	LBB12_23
## %bb.1:                               ## %.preheader.i.preheader
	movq	%rdi, %r14
	xorl	%eax, %eax
	leaq	_magic(%rip), %rcx
	.p2align	4, 0x90
LBB12_2:                                ## %.preheader.i
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, %rax
	je	LBB12_7
## %bb.3:                               ##   in Loop: Header=BB12_2 Depth=1
	movzbl	(%rsi,%rax), %ebx
	cmpb	(%rax,%rcx), %bl
	leaq	1(%rax), %rax
	je	LBB12_2
## %bb.4:
	movl	$2, %edi
LBB12_5:
	callq	_mlx_int_parse_png.cold.1
LBB12_6:
	xorl	%ebx, %ebx
	jmp	LBB12_21
LBB12_7:                                ## %mipng_magic.exit
	addq	$8, %rsi
	addl	$-8, %edx
	leaq	-56(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movq	%rsi, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	_mipng_structure
	testl	%eax, %eax
	jne	LBB12_24
## %bb.8:
	movq	-56(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%edi, %esi
	bswapl	%esi
	movl	%esi, -40(%rbp)
	movl	12(%rcx), %r11d
	movl	%r11d, %edx
	bswapl	%edx
	movl	%edx, -36(%rbp)
	movzbl	16(%rcx), %eax
	movl	%eax, -32(%rbp)
	movzbl	17(%rcx), %r10d
	movl	%r10d, -28(%rbp)
	movb	18(%rcx), %r8b
	movb	19(%rcx), %bl
	movzbl	20(%rcx), %r9d
	movl	%r9d, -24(%rbp)
	testl	%edi, %edi
	je	LBB12_22
## %bb.9:
	testl	%r11d, %r11d
	je	LBB12_22
## %bb.10:
	cmpb	$16, %al
	je	LBB12_12
## %bb.11:
	cmpb	$8, %al
	jne	LBB12_22
LBB12_12:
	movl	%r10d, %ecx
	orb	$4, %cl
	cmpb	$6, %cl
	jne	LBB12_22
## %bb.13:
	orb	%r8b, %bl
	orb	%r9b, %bl
	jne	LBB12_22
## %bb.14:
	shrl	$3, %eax
	movl	%eax, -20(%rbp)
	cmpb	$6, %r10b
	je	LBB12_17
## %bb.15:
	cmpb	$2, %r10b
	jne	LBB12_19
## %bb.16:                              ## %.thread.i
	leal	(%rax,%rax,2), %eax
	jmp	LBB12_18
LBB12_17:
	shll	$2, %eax
LBB12_18:                               ## %mipng_verif_hdr.exit.sink.split
	movl	%eax, -20(%rbp)
LBB12_19:                               ## %mipng_verif_hdr.exit
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_mlx_new_image
	testq	%rax, %rax
	je	LBB12_25
## %bb.20:
	movq	%rax, %rbx
	movq	-48(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	_mipng_data
	testl	%eax, %eax
	jne	LBB12_26
LBB12_21:
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB12_22:                               ## %codeRepl27
	callq	_mlx_int_parse_png.cold.2
	jmp	LBB12_6
LBB12_23:
	movl	$1, %edi
	jmp	LBB12_5
LBB12_24:                               ## %codeRepl29
	movl	%eax, %edi
	callq	_mlx_int_parse_png.cold.4
	jmp	LBB12_6
LBB12_25:
	leaq	L_.str.19(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	_warnx
	jmp	LBB12_21
LBB12_26:                               ## %codeRepl28
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	_mlx_int_parse_png.cold.3
	jmp	LBB12_6
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_png_file_to_image  ## -- Begin function mlx_png_file_to_image
	.p2align	4, 0x90
_mlx_png_file_to_image:                 ## @mlx_png_file_to_image
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	%rsi, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_open
	cmpl	$-1, %eax
	je	LBB13_5
## %bb.1:
	movl	%eax, %r15d
	movq	%rbx, -56(%rbp)         ## 8-byte Spill
	movq	%r13, -48(%rbp)         ## 8-byte Spill
	movq	%r14, -64(%rbp)         ## 8-byte Spill
	movl	%eax, %edi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	_lseek
	movq	%rax, %rbx
	cmpl	$-1, %ebx
	je	LBB13_3
## %bb.2:
	movslq	%ebx, %r14
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$1, %edx
	movl	$2, %ecx
	movl	%r15d, %r8d
	xorl	%r9d, %r9d
	callq	_mmap
	cmpq	$-1, %rax
	je	LBB13_3
## %bb.6:
	movq	%rax, %r13
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	%ebx, %edx
	callq	_mlx_int_parse_png
	movq	%rax, %r12
	testq	%rax, %rax
	je	LBB13_8
## %bb.7:
	movl	(%r12), %eax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movl	%eax, (%rcx)
	movl	4(%r12), %eax
	jmp	LBB13_9
LBB13_8:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	$0, (%rax)
	xorl	%eax, %eax
LBB13_9:
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movl	%eax, (%rcx)
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_munmap
	movl	%r15d, %edi
	callq	_close
LBB13_10:
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB13_3:
	testl	%r15d, %r15d
	movq	-56(%rbp), %rbx         ## 8-byte Reload
	js	LBB13_5
## %bb.4:
	movl	%r15d, %edi
	callq	_close
LBB13_5:                                ## %.thread
	leaq	L_.str.20(%rip), %rdi
	xorl	%r12d, %r12d
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	_warnx
	jmp	LBB13_10
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function mipng_data.cold.1
_mipng_data.cold.1:                     ## @mipng_data.cold.1
	.cfi_startproc
## %bb.0:                               ## %newFuncRoot
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str.13(%rip), %rsi
	pushq	$1
	popq	%rdi
	xorl	%eax, %eax
	callq	_err
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function mlx_int_parse_png.cold.1
_mlx_int_parse_png.cold.1:              ## @mlx_int_parse_png.cold.1
	.cfi_startproc
## %bb.0:                               ## %newFuncRoot
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_mipng_err(%rip), %rax
	movq	(%rax,%rdi,8), %rsi
	leaq	L_.str.18(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbp
	jmp	_warnx                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function mlx_int_parse_png.cold.2
_mlx_int_parse_png.cold.2:              ## @mlx_int_parse_png.cold.2
	.cfi_startproc
## %bb.0:                               ## %newFuncRoot
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_mipng_err+56(%rip), %rsi
	leaq	L_.str.18(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbp
	jmp	_warnx                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function mlx_int_parse_png.cold.3
_mlx_int_parse_png.cold.3:              ## @mlx_int_parse_png.cold.3
	.cfi_startproc
## %bb.0:                               ## %newFuncRoot
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edx, %ebx
	callq	_mlx_destroy_image
	movslq	%ebx, %rax
	leaq	_mipng_err(%rip), %rcx
	movq	(%rcx,%rax,8), %rsi
	leaq	L_.str.18(%rip), %rdi
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_warnx                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function mlx_int_parse_png.cold.4
_mlx_int_parse_png.cold.4:              ## @mlx_int_parse_png.cold.4
	.cfi_startproc
## %bb.0:                               ## %newFuncRoot
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%edi, %rax
	leaq	_mipng_err(%rip), %rcx
	movq	(%rcx,%rax,8), %rsi
	leaq	L_.str.18(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbp
	jmp	_warnx                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_magic                  ## @magic
_magic:
	.ascii	"\211PNG\r\n\032\n"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"No error"

L_.str.1:                               ## @.str.1
	.asciz	"Not enough size for magic"

L_.str.2:                               ## @.str.2
	.asciz	"Wrong magic"

L_.str.3:                               ## @.str.3
	.asciz	"Incomplete chunk structure"

L_.str.4:                               ## @.str.4
	.asciz	"Duplicate or incorrect header"

L_.str.5:                               ## @.str.5
	.asciz	"Duplicate or incorrect end"

L_.str.6:                               ## @.str.6
	.asciz	"Invalid CRC in chunk"

L_.str.7:                               ## @.str.7
	.asciz	"Incorrect header or configuration not implemented"

L_.str.8:                               ## @.str.8
	.asciz	"Non consecutive dat chunks"

L_.str.9:                               ## @.str.9
	.asciz	"Missing header/dat/end chunk(s)"

L_.str.10:                              ## @.str.10
	.asciz	"Zlib inflate error"

L_.str.11:                              ## @.str.11
	.asciz	"Inflated data size mismatch"

L_.str.12:                              ## @.str.12
	.asciz	"Unknown scanline filter"

	.section	__DATA,__data
	.globl	_mipng_err              ## @mipng_err
	.p2align	4
_mipng_err:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8
	.quad	L_.str.9
	.quad	L_.str.10
	.quad	L_.str.11
	.quad	L_.str.12

	.globl	_mipng_defilter         ## @mipng_defilter
	.p2align	4
_mipng_defilter:
	.quad	_mipng_defilter_none
	.quad	_mipng_defilter_sub
	.quad	_mipng_defilter_up
	.quad	_mipng_defilter_average
	.quad	_mipng_defilter_paeth

	.section	__TEXT,__cstring,cstring_literals
L_.str.13:                              ## @.str.13
	.asciz	"Can't malloc"

L_.str.14:                              ## @.str.14
	.asciz	"1.2.11"

	.section	__DATA,__data
	.globl	_crc_table              ## @crc_table
	.p2align	4
_crc_table:
	.quad	0                       ## 0x0
	.quad	1996959894              ## 0x77073096
	.quad	3993919788              ## 0xee0e612c
	.quad	2567524794              ## 0x990951ba
	.quad	124634137               ## 0x76dc419
	.quad	1886057615              ## 0x706af48f
	.quad	3915621685              ## 0xe963a535
	.quad	2657392035              ## 0x9e6495a3
	.quad	249268274               ## 0xedb8832
	.quad	2044508324              ## 0x79dcb8a4
	.quad	3772115230              ## 0xe0d5e91e
	.quad	2547177864              ## 0x97d2d988
	.quad	162941995               ## 0x9b64c2b
	.quad	2125561021              ## 0x7eb17cbd
	.quad	3887607047              ## 0xe7b82d07
	.quad	2428444049              ## 0x90bf1d91
	.quad	498536548               ## 0x1db71064
	.quad	1789927666              ## 0x6ab020f2
	.quad	4089016648              ## 0xf3b97148
	.quad	2227061214              ## 0x84be41de
	.quad	450548861               ## 0x1adad47d
	.quad	1843258603              ## 0x6ddde4eb
	.quad	4107580753              ## 0xf4d4b551
	.quad	2211677639              ## 0x83d385c7
	.quad	325883990               ## 0x136c9856
	.quad	1684777152              ## 0x646ba8c0
	.quad	4251122042              ## 0xfd62f97a
	.quad	2321926636              ## 0x8a65c9ec
	.quad	335633487               ## 0x14015c4f
	.quad	1661365465              ## 0x63066cd9
	.quad	4195302755              ## 0xfa0f3d63
	.quad	2366115317              ## 0x8d080df5
	.quad	997073096               ## 0x3b6e20c8
	.quad	1281953886              ## 0x4c69105e
	.quad	3579855332              ## 0xd56041e4
	.quad	2724688242              ## 0xa2677172
	.quad	1006888145              ## 0x3c03e4d1
	.quad	1258607687              ## 0x4b04d447
	.quad	3524101629              ## 0xd20d85fd
	.quad	2768942443              ## 0xa50ab56b
	.quad	901097722               ## 0x35b5a8fa
	.quad	1119000684              ## 0x42b2986c
	.quad	3686517206              ## 0xdbbbc9d6
	.quad	2898065728              ## 0xacbcf940
	.quad	853044451               ## 0x32d86ce3
	.quad	1172266101              ## 0x45df5c75
	.quad	3705015759              ## 0xdcd60dcf
	.quad	2882616665              ## 0xabd13d59
	.quad	651767980               ## 0x26d930ac
	.quad	1373503546              ## 0x51de003a
	.quad	3369554304              ## 0xc8d75180
	.quad	3218104598              ## 0xbfd06116
	.quad	565507253               ## 0x21b4f4b5
	.quad	1454621731              ## 0x56b3c423
	.quad	3485111705              ## 0xcfba9599
	.quad	3099436303              ## 0xb8bda50f
	.quad	671266974               ## 0x2802b89e
	.quad	1594198024              ## 0x5f058808
	.quad	3322730930              ## 0xc60cd9b2
	.quad	2970347812              ## 0xb10be924
	.quad	795835527               ## 0x2f6f7c87
	.quad	1483230225              ## 0x58684c11
	.quad	3244367275              ## 0xc1611dab
	.quad	3060149565              ## 0xb6662d3d
	.quad	1994146192              ## 0x76dc4190
	.quad	31158534                ## 0x1db7106
	.quad	2563907772              ## 0x98d220bc
	.quad	4023717930              ## 0xefd5102a
	.quad	1907459465              ## 0x71b18589
	.quad	112637215               ## 0x6b6b51f
	.quad	2680153253              ## 0x9fbfe4a5
	.quad	3904427059              ## 0xe8b8d433
	.quad	2013776290              ## 0x7807c9a2
	.quad	251722036               ## 0xf00f934
	.quad	2517215374              ## 0x9609a88e
	.quad	3775830040              ## 0xe10e9818
	.quad	2137656763              ## 0x7f6a0dbb
	.quad	141376813               ## 0x86d3d2d
	.quad	2439277719              ## 0x91646c97
	.quad	3865271297              ## 0xe6635c01
	.quad	1802195444              ## 0x6b6b51f4
	.quad	476864866               ## 0x1c6c6162
	.quad	2238001368              ## 0x856530d8
	.quad	4066508878              ## 0xf262004e
	.quad	1812370925              ## 0x6c0695ed
	.quad	453092731               ## 0x1b01a57b
	.quad	2181625025              ## 0x8208f4c1
	.quad	4111451223              ## 0xf50fc457
	.quad	1706088902              ## 0x65b0d9c6
	.quad	314042704               ## 0x12b7e950
	.quad	2344532202              ## 0x8bbeb8ea
	.quad	4240017532              ## 0xfcb9887c
	.quad	1658658271              ## 0x62dd1ddf
	.quad	366619977               ## 0x15da2d49
	.quad	2362670323              ## 0x8cd37cf3
	.quad	4224994405              ## 0xfbd44c65
	.quad	1303535960              ## 0x4db26158
	.quad	984961486               ## 0x3ab551ce
	.quad	2747007092              ## 0xa3bc0074
	.quad	3569037538              ## 0xd4bb30e2
	.quad	1256170817              ## 0x4adfa541
	.quad	1037604311              ## 0x3dd895d7
	.quad	2765210733              ## 0xa4d1c46d
	.quad	3554079995              ## 0xd3d6f4fb
	.quad	1131014506              ## 0x4369e96a
	.quad	879679996               ## 0x346ed9fc
	.quad	2909243462              ## 0xad678846
	.quad	3663771856              ## 0xda60b8d0
	.quad	1141124467              ## 0x44042d73
	.quad	855842277               ## 0x33031de5
	.quad	2852801631              ## 0xaa0a4c5f
	.quad	3708648649              ## 0xdd0d7cc9
	.quad	1342533948              ## 0x5005713c
	.quad	654459306               ## 0x270241aa
	.quad	3188396048              ## 0xbe0b1010
	.quad	3373015174              ## 0xc90c2086
	.quad	1466479909              ## 0x5768b525
	.quad	544179635               ## 0x206f85b3
	.quad	3110523913              ## 0xb966d409
	.quad	3462522015              ## 0xce61e49f
	.quad	1591671054              ## 0x5edef90e
	.quad	702138776               ## 0x29d9c998
	.quad	2966460450              ## 0xb0d09822
	.quad	3352799412              ## 0xc7d7a8b4
	.quad	1504918807              ## 0x59b33d17
	.quad	783551873               ## 0x2eb40d81
	.quad	3082640443              ## 0xb7bd5c3b
	.quad	3233442989              ## 0xc0ba6cad
	.quad	3988292384              ## 0xedb88320
	.quad	2596254646              ## 0x9abfb3b6
	.quad	62317068                ## 0x3b6e20c
	.quad	1957810842              ## 0x74b1d29a
	.quad	3939845945              ## 0xead54739
	.quad	2647816111              ## 0x9dd277af
	.quad	81470997                ## 0x4db2615
	.quad	1943803523              ## 0x73dc1683
	.quad	3814918930              ## 0xe3630b12
	.quad	2489596804              ## 0x94643b84
	.quad	225274430               ## 0xd6d6a3e
	.quad	2053790376              ## 0x7a6a5aa8
	.quad	3826175755              ## 0xe40ecf0b
	.quad	2466906013              ## 0x9309ff9d
	.quad	167816743               ## 0xa00ae27
	.quad	2097651377              ## 0x7d079eb1
	.quad	4027552580              ## 0xf00f9344
	.quad	2265490386              ## 0x8708a3d2
	.quad	503444072               ## 0x1e01f268
	.quad	1762050814              ## 0x6906c2fe
	.quad	4150417245              ## 0xf762575d
	.quad	2154129355              ## 0x806567cb
	.quad	426522225               ## 0x196c3671
	.quad	1852507879              ## 0x6e6b06e7
	.quad	4275313526              ## 0xfed41b76
	.quad	2312317920              ## 0x89d32be0
	.quad	282753626               ## 0x10da7a5a
	.quad	1742555852              ## 0x67dd4acc
	.quad	4189708143              ## 0xf9b9df6f
	.quad	2394877945              ## 0x8ebeeff9
	.quad	397917763               ## 0x17b7be43
	.quad	1622183637              ## 0x60b08ed5
	.quad	3604390888              ## 0xd6d6a3e8
	.quad	2714866558              ## 0xa1d1937e
	.quad	953729732               ## 0x38d8c2c4
	.quad	1340076626              ## 0x4fdff252
	.quad	3518719985              ## 0xd1bb67f1
	.quad	2797360999              ## 0xa6bc5767
	.quad	1068828381              ## 0x3fb506dd
	.quad	1219638859              ## 0x48b2364b
	.quad	3624741850              ## 0xd80d2bda
	.quad	2936675148              ## 0xaf0a1b4c
	.quad	906185462               ## 0x36034af6
	.quad	1090812512              ## 0x41047a60
	.quad	3747672003              ## 0xdf60efc3
	.quad	2825379669              ## 0xa867df55
	.quad	829329135               ## 0x316e8eef
	.quad	1181335161              ## 0x4669be79
	.quad	3412177804              ## 0xcb61b38c
	.quad	3160834842              ## 0xbc66831a
	.quad	628085408               ## 0x256fd2a0
	.quad	1382605366              ## 0x5268e236
	.quad	3423369109              ## 0xcc0c7795
	.quad	3138078467              ## 0xbb0b4703
	.quad	570562233               ## 0x220216b9
	.quad	1426400815              ## 0x5505262f
	.quad	3317316542              ## 0xc5ba3bbe
	.quad	2998733608              ## 0xb2bd0b28
	.quad	733239954               ## 0x2bb45a92
	.quad	1555261956              ## 0x5cb36a04
	.quad	3268935591              ## 0xc2d7ffa7
	.quad	3050360625              ## 0xb5d0cf31
	.quad	752459403               ## 0x2cd99e8b
	.quad	1541320221              ## 0x5bdeae1d
	.quad	2607071920              ## 0x9b64c2b0
	.quad	3965973030              ## 0xec63f226
	.quad	1969922972              ## 0x756aa39c
	.quad	40735498                ## 0x26d930a
	.quad	2617837225              ## 0x9c0906a9
	.quad	3943577151              ## 0xeb0e363f
	.quad	1913087877              ## 0x72076785
	.quad	83908371                ## 0x5005713
	.quad	2512341634              ## 0x95bf4a82
	.quad	3803740692              ## 0xe2b87a14
	.quad	2075208622              ## 0x7bb12bae
	.quad	213261112               ## 0xcb61b38
	.quad	2463272603              ## 0x92d28e9b
	.quad	3855990285              ## 0xe5d5be0d
	.quad	2094854071              ## 0x7cdcefb7
	.quad	198958881               ## 0xbdbdf21
	.quad	2262029012              ## 0x86d3d2d4
	.quad	4057260610              ## 0xf1d4e242
	.quad	1759359992              ## 0x68ddb3f8
	.quad	534414190               ## 0x1fda836e
	.quad	2176718541              ## 0x81be16cd
	.quad	4139329115              ## 0xf6b9265b
	.quad	1873836001              ## 0x6fb077e1
	.quad	414664567               ## 0x18b74777
	.quad	2282248934              ## 0x88085ae6
	.quad	4279200368              ## 0xff0f6a70
	.quad	1711684554              ## 0x66063bca
	.quad	285281116               ## 0x11010b5c
	.quad	2405801727              ## 0x8f659eff
	.quad	4167216745              ## 0xf862ae69
	.quad	1634467795              ## 0x616bffd3
	.quad	376229701               ## 0x166ccf45
	.quad	2685067896              ## 0xa00ae278
	.quad	3608007406              ## 0xd70dd2ee
	.quad	1308918612              ## 0x4e048354
	.quad	956543938               ## 0x3903b3c2
	.quad	2808555105              ## 0xa7672661
	.quad	3495958263              ## 0xd06016f7
	.quad	1231636301              ## 0x4969474d
	.quad	1047427035              ## 0x3e6e77db
	.quad	2932959818              ## 0xaed16a4a
	.quad	3654703836              ## 0xd9d65adc
	.quad	1088359270              ## 0x40df0b66
	.quad	936918000               ## 0x37d83bf0
	.quad	2847714899              ## 0xa9bcae53
	.quad	3736837829              ## 0xdebb9ec5
	.quad	1202900863              ## 0x47b2cf7f
	.quad	817233897               ## 0x30b5ffe9
	.quad	3183342108              ## 0xbdbdf21c
	.quad	3401237130              ## 0xcabac28a
	.quad	1404277552              ## 0x53b39330
	.quad	615818150               ## 0x24b4a3a6
	.quad	3134207493              ## 0xbad03605
	.quad	3453421203              ## 0xcdd70693
	.quad	1423857449              ## 0x54de5729
	.quad	601450431               ## 0x23d967bf
	.quad	3009837614              ## 0xb3667a2e
	.quad	3294710456              ## 0xc4614ab8
	.quad	1567103746              ## 0x5d681b02
	.quad	711928724               ## 0x2a6f2b94
	.quad	3020668471              ## 0xb40bbe37
	.quad	3272380065              ## 0xc30c8ea1
	.quad	1510334235              ## 0x5a05df1b
	.quad	755167117               ## 0x2d02ef8d

	.section	__TEXT,__cstring,cstring_literals
L_.str.18:                              ## @.str.18
	.asciz	"mlx PNG error : %s"

L_.str.19:                              ## @.str.19
	.asciz	"mlx PNG error : Can't create mlx image"

L_.str.20:                              ## @.str.20
	.asciz	"Can't map png file '%s'"

.subsections_via_symbols
