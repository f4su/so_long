	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_mlx_int_get_line       ## -- Begin function mlx_int_get_line
	.p2align	4, 0x90
_mlx_int_get_line:                      ## @mlx_int_get_line
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
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movslq	(%rsi), %rdi
	subl	%edi, %edx
	addq	%r14, %rdi
	leaq	L_.str.748(%rip), %rsi
	callq	_mlx_int_str_str
	cmpl	$-1, %eax
	je	LBB0_4
## %bb.1:
	movslq	(%r15), %rcx
	movslq	%eax, %r12
	notl	%eax
	addl	%ebx, %eax
	subl	%ecx, %eax
	addq	%r14, %rcx
	leaq	1(%r12,%rcx), %rdi
	leaq	L_.str.748(%rip), %rsi
	movl	%eax, %edx
	callq	_mlx_int_str_str
                                        ## kill: def $eax killed $eax def $rax
	cmpl	$-1, %eax
	je	LBB0_4
## %bb.2:
	movslq	(%r15), %rcx
	addq	%r14, %rcx
	movb	$0, (%r12,%rcx)
	movslq	(%r15), %rcx
	addq	%r14, %rcx
	addq	%r12, %rcx
	movslq	%eax, %rdx
	movb	$0, 1(%rdx,%rcx)
	movl	(%r15), %ecx
	addl	%r12d, %ecx
	leal	2(%rax,%rcx), %eax
	movl	%eax, (%r15)
	movslq	%ecx, %rax
	leaq	1(%rax,%r14), %rax
	jmp	LBB0_5
LBB0_4:
	xorl	%eax, %eax
LBB0_5:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_int_static_line    ## -- Begin function mlx_int_static_line
	.p2align	4, 0x90
_mlx_int_static_line:                   ## @mlx_int_static_line
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
	movslq	(%rsi), %rax
	leal	1(%rax), %ecx
	movl	%ecx, (%rsi)
	movq	(%rdi,%rax,8), %r14
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %rbx
	movq	_mlx_int_static_line.copy(%rip), %rdi
	cmpl	%ebx, _mlx_int_static_line.len(%rip)
	jge	LBB1_1
## %bb.2:
	testq	%rdi, %rdi
	je	LBB1_4
## %bb.3:
	callq	_free
LBB1_4:
	leal	1(%rbx), %eax
	movslq	%eax, %r15
	movq	%r15, %rdi
	callq	_malloc
	movq	%rax, _mlx_int_static_line.copy(%rip)
	testq	%rax, %rax
	je	LBB1_5
## %bb.6:
	movq	%rax, %rdi
	movl	%ebx, _mlx_int_static_line.len(%rip)
	jmp	LBB1_7
LBB1_1:                                 ## %._crit_edge
	leal	1(%rbx), %eax
	movslq	%eax, %r15
LBB1_7:
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_strlcpy
	movq	_mlx_int_static_line.copy(%rip), %rax
	jmp	LBB1_8
LBB1_5:
	xorl	%eax, %eax
LBB1_8:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_int_get_col_name   ## -- Begin function mlx_int_get_col_name
	.p2align	4, 0x90
_mlx_int_get_col_name:                  ## @mlx_int_get_col_name
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	je	LBB2_1
## %bb.2:                               ## %.lr.ph.preheader
	leal	-1(%rsi), %eax
	movl	%esi, %r8d
	andl	$3, %r8d
	cmpl	$3, %eax
	jae	LBB2_4
## %bb.3:
	xorl	%eax, %eax
	jmp	LBB2_6
LBB2_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
LBB2_4:                                 ## %.lr.ph.preheader.new
	movl	%r8d, %edx
	subl	%esi, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB2_5:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	movsbl	(%rdi), %ecx
	addl	%eax, %ecx
	shll	$8, %ecx
	movsbl	1(%rdi), %eax
	addl	%ecx, %eax
	shll	$8, %eax
	movsbl	2(%rdi), %ecx
	addl	%eax, %ecx
	shll	$8, %ecx
	movsbl	3(%rdi), %eax
	addq	$4, %rdi
	addl	%ecx, %eax
	addl	$4, %edx
	jne	LBB2_5
LBB2_6:                                 ## %._crit_edge.loopexit.unr-lcssa
	testl	%r8d, %r8d
	je	LBB2_9
## %bb.7:                               ## %.lr.ph.epil.preheader
	andl	$3, %esi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB2_8:                                 ## %.lr.ph.epil
                                        ## =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	movsbl	(%rdi,%rcx), %edx
	addl	%edx, %eax
	incq	%rcx
	cmpl	%ecx, %esi
	jne	LBB2_8
LBB2_9:                                 ## %._crit_edge
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_int_get_text_rgb   ## -- Begin function mlx_int_get_text_rgb
	.p2align	4, 0x90
_mlx_int_get_text_rgb:                  ## @mlx_int_get_text_rgb
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
	subq	$72, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpb	$35, (%rdi)
	jne	LBB3_2
## %bb.1:
	incq	%r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_strtol
	movq	%rax, %r14
	jmp	LBB3_9
LBB3_2:
	movq	%rsi, %r8
	testq	%rsi, %rsi
	je	LBB3_4
## %bb.3:
	leaq	-96(%rbp), %r14
	leaq	L_.str.749(%rip), %rdx
	movl	$64, %esi
	movq	%r14, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	_snprintf
	movq	%r14, %r15
LBB3_4:
	movq	_mlx_col_name(%rip), %rdi
	xorl	%r14d, %r14d
	testq	%rdi, %rdi
	je	LBB3_9
## %bb.5:                               ## %.lr.ph.preheader
	leaq	_mlx_col_name+16(%rip), %rbx
	.p2align	4, 0x90
LBB3_7:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rsi
	callq	_strcasecmp
	testl	%eax, %eax
	je	LBB3_8
## %bb.6:                               ##   in Loop: Header=BB3_7 Depth=1
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	jne	LBB3_7
	jmp	LBB3_9
LBB3_8:
	movl	-8(%rbx), %r14d
LBB3_9:                                 ## %.loopexit
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	LBB3_11
## %bb.10:                              ## %.loopexit
	movl	%r14d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_11:                                ## %.loopexit
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_int_xpm_set_pixel  ## -- Begin function mlx_int_xpm_set_pixel
	.p2align	4, 0x90
_mlx_int_xpm_set_pixel:                 ## @mlx_int_xpm_set_pixel
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%r8d, %rax
	movl	%ecx, (%rsi,%rax,4)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_int_parse_xpm      ## -- Begin function mlx_int_parse_xpm
	.p2align	4, 0x90
_mlx_int_parse_xpm:                     ## @mlx_int_parse_xpm
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
	subq	$200, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r12
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -136(%rbp)
	xorl	%r15d, %r15d
	leaq	-136(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	*%rcx
	testq	%rax, %rax
	je	LBB5_12
## %bb.1:
	movq	%rax, %rdi
	callq	_mlx_int_str_to_wordtab
	testq	%rax, %rax
	je	LBB5_11
## %bb.2:
	movq	%rax, %r15
	movq	%rbx, -224(%rbp)        ## 8-byte Spill
	movl	%r14d, -144(%rbp)       ## 4-byte Spill
	movq	(%rax), %rdi
	callq	_atoi
	movl	%eax, -140(%rbp)        ## 4-byte Spill
	testl	%eax, %eax
	je	LBB5_9
## %bb.3:
	movq	8(%r15), %rdi
	callq	_atoi
	movl	%eax, -132(%rbp)        ## 4-byte Spill
	testl	%eax, %eax
	je	LBB5_9
## %bb.4:
	movq	16(%r15), %rdi
	callq	_atoi
	movl	%eax, -148(%rbp)        ## 4-byte Spill
	testl	%eax, %eax
	je	LBB5_9
## %bb.5:
	movq	24(%r15), %rdi
	callq	_atoi
	testl	%eax, %eax
	je	LBB5_9
## %bb.6:
	movl	%eax, %r14d
	movq	%r15, %rdi
	callq	_free
	movslq	-148(%rbp), %rbx        ## 4-byte Folded Reload
	cmpl	$2, %r14d
	jg	LBB5_14
## %bb.7:
	movl	$262144, %eax           ## imm = 0x40000
	movl	$1024, %edi             ## imm = 0x400
	cmoveq	%rax, %rdi
	callq	_malloc
	xorl	%ecx, %ecx
	movq	%rcx, -128(%rbp)        ## 8-byte Spill
	testq	%rax, %rax
	je	LBB5_11
## %bb.8:
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	jmp	LBB5_16
LBB5_9:
	movq	%r15, %rdi
LBB5_10:
	callq	_free
LBB5_11:
	xorl	%r15d, %r15d
LBB5_12:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB5_81
## %bb.13:
	movq	%r15, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_14:
	leaq	(,%rbx,8), %rdi
	callq	_malloc
	testq	%rax, %rax
	je	LBB5_11
## %bb.15:
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	movb	$1, %al
LBB5_16:                                ## %.lr.ph236
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	movslq	%r14d, %rax
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	leal	-1(%r14), %eax
	movl	%eax, -156(%rbp)        ## 4-byte Spill
	movl	%r14d, %eax
	andl	$3, %eax
	movl	%eax, -152(%rbp)        ## 4-byte Spill
	subl	%r14d, %eax
	movl	%eax, -212(%rbp)        ## 4-byte Spill
	movl	%r14d, %eax
	andl	$3, %eax
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	movq	%rbx, -232(%rbp)        ## 8-byte Spill
	movq	%r13, -168(%rbp)        ## 8-byte Spill
	movq	%r12, -184(%rbp)        ## 8-byte Spill
	jmp	LBB5_19
LBB5_17:                                ##   in Loop: Header=BB5_19 Depth=1
	movq	-128(%rbp), %rcx        ## 8-byte Reload
	movl	%ebx, -8(%rcx,%r8,8)
	movq	-176(%rbp), %rbx        ## 8-byte Reload
	leaq	4(%rcx,%rbx,8), %rcx
	movq	-184(%rbp), %r12        ## 8-byte Reload
LBB5_18:                                ##   in Loop: Header=BB5_19 Depth=1
	movl	%eax, (%rcx)
	movq	%r15, %rdi
	callq	_free
	movq	%rbx, %rax
	testl	%eax, %eax
	je	LBB5_50
LBB5_19:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_22 Depth 2
                                        ##     Child Loop BB5_31 Depth 2
                                        ##     Child Loop BB5_38 Depth 2
                                        ##     Child Loop BB5_41 Depth 2
	movq	-224(%rbp), %rdi        ## 8-byte Reload
	leaq	-136(%rbp), %rsi
	movl	-144(%rbp), %edx        ## 4-byte Reload
	xorl	%eax, %eax
	callq	*%r12
	testq	%rax, %rax
	je	LBB5_44
## %bb.20:                              ##   in Loop: Header=BB5_19 Depth=1
	movq	%rax, %r12
	movq	-208(%rbp), %rax        ## 8-byte Reload
	leaq	(%r12,%rax), %rdi
	callq	_mlx_int_str_to_wordtab
	testq	%rax, %rax
	je	LBB5_44
## %bb.21:                              ## %.preheader223.preheader
                                        ##   in Loop: Header=BB5_19 Depth=1
	movq	%rax, %r15
	movq	%rbx, -192(%rbp)        ## 8-byte Spill
	leaq	-1(%rbx), %rax
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB5_22:                                ## %.preheader223
                                        ##   Parent Loop BB5_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r15,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	LBB5_24
## %bb.23:                              ##   in Loop: Header=BB5_22 Depth=2
	incq	%rbx
	leaq	L_.str.750(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB5_22
LBB5_24:                                ## %.critedge
                                        ##   in Loop: Header=BB5_19 Depth=1
	movslq	%ebx, %rax
	movq	(%r15,%rax,8), %rbx
	testq	%rbx, %rbx
	je	LBB5_47
## %bb.25:                              ##   in Loop: Header=BB5_19 Depth=1
	cmpb	$35, (%rbx)
	jne	LBB5_27
## %bb.26:                              ##   in Loop: Header=BB5_19 Depth=1
	incq	%rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_strtol
	jmp	LBB5_35
LBB5_27:                                ##   in Loop: Header=BB5_19 Depth=1
	movq	8(%r15,%rax,8), %r8
	testq	%r8, %r8
	je	LBB5_29
## %bb.28:                              ##   in Loop: Header=BB5_19 Depth=1
	movl	$64, %esi
	leaq	-112(%rbp), %r13
	movq	%r13, %rdi
	leaq	L_.str.749(%rip), %rdx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	_snprintf
	movq	%r13, %rbx
	movq	-168(%rbp), %r13        ## 8-byte Reload
LBB5_29:                                ##   in Loop: Header=BB5_19 Depth=1
	movq	-120(%rbp), %rsi        ## 8-byte Reload
	movq	_mlx_col_name(%rip), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	LBB5_36
## %bb.30:                              ## %.lr.ph.i.preheader
                                        ##   in Loop: Header=BB5_19 Depth=1
	leaq	_mlx_col_name+16(%rip), %r13
	.p2align	4, 0x90
LBB5_31:                                ## %.lr.ph.i
                                        ##   Parent Loop BB5_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rsi
	callq	_strcasecmp
	testl	%eax, %eax
	je	LBB5_34
## %bb.32:                              ##   in Loop: Header=BB5_31 Depth=2
	movq	(%r13), %rdi
	addq	$16, %r13
	testq	%rdi, %rdi
	jne	LBB5_31
## %bb.33:                              ##   in Loop: Header=BB5_19 Depth=1
	movq	-168(%rbp), %r13        ## 8-byte Reload
	movq	-120(%rbp), %rsi        ## 8-byte Reload
	xorl	%eax, %eax
	jmp	LBB5_36
LBB5_34:                                ##   in Loop: Header=BB5_19 Depth=1
	movl	-8(%r13), %eax
	movq	-168(%rbp), %r13        ## 8-byte Reload
LBB5_35:                                ## %mlx_int_get_text_rgb.exit
                                        ##   in Loop: Header=BB5_19 Depth=1
	movq	-120(%rbp), %rsi        ## 8-byte Reload
LBB5_36:                                ## %mlx_int_get_text_rgb.exit
                                        ##   in Loop: Header=BB5_19 Depth=1
	xorl	%ebx, %ebx
	cmpl	$3, -156(%rbp)          ## 4-byte Folded Reload
	movq	-240(%rbp), %rdi        ## 8-byte Reload
	movq	-192(%rbp), %r8         ## 8-byte Reload
	jb	LBB5_39
## %bb.37:                              ## %.lr.ph.i213.preheader
                                        ##   in Loop: Header=BB5_19 Depth=1
	xorl	%ebx, %ebx
	movl	-212(%rbp), %ecx        ## 4-byte Reload
	.p2align	4, 0x90
LBB5_38:                                ## %.lr.ph.i213
                                        ##   Parent Loop BB5_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	shll	$8, %ebx
	movsbl	(%r12), %edx
	addl	%ebx, %edx
	shll	$8, %edx
	movsbl	1(%r12), %ebx
	addl	%edx, %ebx
	shll	$8, %ebx
	movsbl	2(%r12), %edx
	addl	%ebx, %edx
	shll	$8, %edx
	movsbl	3(%r12), %ebx
	addq	$4, %r12
	addl	%edx, %ebx
	addl	$4, %ecx
	jne	LBB5_38
LBB5_39:                                ## %mlx_int_get_col_name.exit.unr-lcssa
                                        ##   in Loop: Header=BB5_19 Depth=1
	cmpl	$0, -152(%rbp)          ## 4-byte Folded Reload
	je	LBB5_42
## %bb.40:                              ## %.lr.ph.i213.epil.preheader
                                        ##   in Loop: Header=BB5_19 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB5_41:                                ## %.lr.ph.i213.epil
                                        ##   Parent Loop BB5_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	shll	$8, %ebx
	movsbl	(%r12,%rcx), %edx
	addl	%edx, %ebx
	incq	%rcx
	cmpl	%ecx, %edi
	jne	LBB5_41
LBB5_42:                                ## %mlx_int_get_col_name.exit
                                        ##   in Loop: Header=BB5_19 Depth=1
	cmpb	$0, -200(%rbp)          ## 1-byte Folded Reload
	jne	LBB5_17
## %bb.43:                              ##   in Loop: Header=BB5_19 Depth=1
	movslq	%ebx, %rcx
	leaq	(%rsi,%rcx,4), %rcx
	movq	-184(%rbp), %r12        ## 8-byte Reload
	movq	-176(%rbp), %rbx        ## 8-byte Reload
	jmp	LBB5_18
LBB5_47:
	movq	-128(%rbp), %rdi        ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB5_49
## %bb.48:
	callq	_free
LBB5_49:
	movq	%r15, %rdi
	jmp	LBB5_45
LBB5_50:                                ## %._crit_edge237
	movq	%r13, %rdi
	movl	-140(%rbp), %ebx        ## 4-byte Reload
	movl	%ebx, %esi
	movl	-132(%rbp), %edx        ## 4-byte Reload
	xorl	%eax, %eax
	callq	_mlx_new_image
	testq	%rax, %rax
	je	LBB5_44
## %bb.51:                              ## %.lr.ph233
	movq	%rax, %r15
	movq	8(%rax), %r12
	movl	%ebx, %eax
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	movl	%r14d, %r13d
	andl	$-4, %r13d
	andl	$3, %r14d
	movq	-128(%rbp), %rax        ## 8-byte Reload
	movq	-232(%rbp), %rcx        ## 8-byte Reload
	leaq	-4(%rax,%rcx,8), %rax
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	jmp	LBB5_53
LBB5_52:                                ## %._crit_edge
                                        ##   in Loop: Header=BB5_53 Depth=1
	movslq	(%r15), %rax
	leaq	(%r12,%rax,4), %r12
	movl	%r11d, -132(%rbp)       ## 4-byte Spill
	testl	%r11d, %r11d
	je	LBB5_77
LBB5_53:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_59 Depth 2
                                        ##       Child Loop BB5_62 Depth 3
                                        ##       Child Loop BB5_65 Depth 3
                                        ##       Child Loop BB5_68 Depth 3
	movq	-224(%rbp), %rdi        ## 8-byte Reload
	leaq	-136(%rbp), %rsi
	movl	-144(%rbp), %edx        ## 4-byte Reload
	xorl	%eax, %eax
	callq	*-184(%rbp)             ## 8-byte Folded Reload
	testq	%rax, %rax
	je	LBB5_72
## %bb.54:                              ## %.preheader222
                                        ##   in Loop: Header=BB5_53 Depth=1
	movl	-132(%rbp), %r11d       ## 4-byte Reload
	decl	%r11d
	cmpl	$0, -140(%rbp)          ## 4-byte Folded Reload
	movq	-120(%rbp), %r10        ## 8-byte Reload
	jle	LBB5_52
## %bb.55:                              ## %.lr.ph229.preheader
                                        ##   in Loop: Header=BB5_53 Depth=1
	movq	%rax, %r8
	negq	%r8
	movq	%rax, %rdx
	xorl	%r9d, %r9d
	jmp	LBB5_59
	.p2align	4, 0x90
LBB5_56:                                ##   in Loop: Header=BB5_59 Depth=2
	movslq	%edi, %rcx
	leaq	(%r10,%rcx,4), %rsi
LBB5_57:                                ## %.loopexit.sink.split
                                        ##   in Loop: Header=BB5_59 Depth=2
	movl	(%rsi), %ecx
LBB5_58:                                ## %.loopexit
                                        ##   in Loop: Header=BB5_59 Depth=2
	cmpl	$-1, %ecx
	movl	$-16777216, %esi        ## imm = 0xFF000000
	cmovel	%esi, %ecx
	leal	(,%r9,4), %esi
	movl	%ecx, (%r12,%rsi)
	incq	%r9
	movq	-208(%rbp), %rcx        ## 8-byte Reload
	subq	%rcx, %r8
	addq	%rcx, %rdx
	cmpq	-192(%rbp), %r9         ## 8-byte Folded Reload
	je	LBB5_52
LBB5_59:                                ## %.lr.ph229
                                        ##   Parent Loop BB5_53 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB5_62 Depth 3
                                        ##       Child Loop BB5_65 Depth 3
                                        ##       Child Loop BB5_68 Depth 3
	cmpl	$3, -156(%rbp)          ## 4-byte Folded Reload
	jae	LBB5_61
## %bb.60:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	%r9, %rsi
	imulq	-208(%rbp), %rsi        ## 8-byte Folded Reload
	addq	%rax, %rsi
	xorl	%edi, %edi
	cmpl	$0, -152(%rbp)          ## 4-byte Folded Reload
	jne	LBB5_64
	jmp	LBB5_66
	.p2align	4, 0x90
LBB5_61:                                ## %.lr.ph.i217.preheader
                                        ##   in Loop: Header=BB5_59 Depth=2
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB5_62:                                ## %.lr.ph.i217
                                        ##   Parent Loop BB5_53 Depth=1
                                        ##     Parent Loop BB5_59 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	shll	$8, %edi
	movsbl	(%rdx,%rsi), %ecx
	addl	%edi, %ecx
	shll	$8, %ecx
	movsbl	1(%rdx,%rsi), %edi
	addl	%ecx, %edi
	shll	$8, %edi
	movsbl	2(%rdx,%rsi), %ecx
	addl	%edi, %ecx
	shll	$8, %ecx
	movsbl	3(%rdx,%rsi), %edi
	addl	%ecx, %edi
	addq	$4, %rsi
	cmpl	%esi, %r13d
	jne	LBB5_62
## %bb.63:                              ## %mlx_int_get_col_name.exit219.unr-lcssa.loopexit
                                        ##   in Loop: Header=BB5_59 Depth=2
	subq	%r8, %rsi
	cmpl	$0, -152(%rbp)          ## 4-byte Folded Reload
	je	LBB5_66
LBB5_64:                                ## %.lr.ph.i217.epil.preheader
                                        ##   in Loop: Header=BB5_59 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB5_65:                                ## %.lr.ph.i217.epil
                                        ##   Parent Loop BB5_53 Depth=1
                                        ##     Parent Loop BB5_59 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	shll	$8, %edi
	movsbl	(%rsi,%rcx), %ebx
	addl	%ebx, %edi
	incq	%rcx
	cmpl	%ecx, %r14d
	jne	LBB5_65
LBB5_66:                                ## %mlx_int_get_col_name.exit219
                                        ##   in Loop: Header=BB5_59 Depth=2
	cmpb	$0, -200(%rbp)          ## 1-byte Folded Reload
	je	LBB5_56
## %bb.67:                              ## %.lr.ph.preheader
                                        ##   in Loop: Header=BB5_59 Depth=2
	movq	-176(%rbp), %rsi        ## 8-byte Reload
	movl	-148(%rbp), %ecx        ## 4-byte Reload
	.p2align	4, 0x90
LBB5_68:                                ## %.lr.ph
                                        ##   Parent Loop BB5_53 Depth=1
                                        ##     Parent Loop BB5_59 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	%edi, -4(%rsi)
	je	LBB5_57
## %bb.69:                              ##   in Loop: Header=BB5_68 Depth=3
	decl	%ecx
	addq	$-8, %rsi
	testl	%ecx, %ecx
	jne	LBB5_68
## %bb.70:                              ##   in Loop: Header=BB5_59 Depth=2
	xorl	%ecx, %ecx
	jmp	LBB5_58
LBB5_44:
	movq	-128(%rbp), %rdi        ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB5_46
LBB5_45:
	callq	_free
LBB5_46:
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	testq	%rdi, %rdi
	jne	LBB5_10
	jmp	LBB5_11
LBB5_72:
	movq	-128(%rbp), %rdi        ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB5_74
## %bb.73:
	callq	_free
LBB5_74:
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	testq	%rdi, %rdi
	movq	-168(%rbp), %rbx        ## 8-byte Reload
	je	LBB5_76
## %bb.75:
	callq	_free
LBB5_76:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_mlx_destroy_image
	jmp	LBB5_11
LBB5_77:                                ## %._crit_edge234
	movq	-128(%rbp), %rdi        ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB5_79
## %bb.78:
	callq	_free
LBB5_79:
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB5_12
## %bb.80:
	callq	_free
	jmp	LBB5_12
LBB5_81:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_int_file_get_rid_comment ## -- Begin function mlx_int_file_get_rid_comment
	.p2align	4, 0x90
_mlx_int_file_get_rid_comment:          ## @mlx_int_file_get_rid_comment
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %r13
	leaq	L_.str.751(%rip), %rsi
	movl	%r14d, %edx
	callq	_mlx_int_str_str_cote
	cmpl	$-1, %eax
	je	LBB6_3
## %bb.1:                               ## %.lr.ph27
	leal	-2(%r14), %r15d
	leaq	L_.str.751(%rip), %r12
	.p2align	4, 0x90
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	cltq
	leaq	(%r13,%rax), %rbx
	leaq	2(%r13,%rax), %rdi
	movl	%r15d, %edx
	subl	%eax, %edx
	leaq	L_.str.752(%rip), %rsi
	callq	_mlx_int_str_str
	addl	$4, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movl	$32, %esi
	callq	_memset
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	callq	_mlx_int_str_str_cote
	cmpl	$-1, %eax
	jne	LBB6_2
LBB6_3:                                 ## %.preheader
	leaq	L_.str.753(%rip), %rsi
	movq	%r13, %rdi
	movl	%r14d, %edx
	callq	_mlx_int_str_str_cote
	cmpl	$-1, %eax
	je	LBB6_6
## %bb.4:                               ## %.lr.ph
	leal	-2(%r14), %r15d
	leaq	L_.str.753(%rip), %r12
	.p2align	4, 0x90
LBB6_5:                                 ## =>This Inner Loop Header: Depth=1
	cltq
	leaq	(%r13,%rax), %rbx
	leaq	2(%r13,%rax), %rdi
	movl	%r15d, %edx
	subl	%eax, %edx
	leaq	L_.str.754(%rip), %rsi
	callq	_mlx_int_str_str
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movl	$32, %esi
	callq	_memset
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	callq	_mlx_int_str_str_cote
	cmpl	$-1, %eax
	jne	LBB6_5
LBB6_6:                                 ## %._crit_edge
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_xpm_file_to_image  ## -- Begin function mlx_xpm_file_to_image
	.p2align	4, 0x90
_mlx_xpm_file_to_image:                 ## @mlx_xpm_file_to_image
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
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rdi, %r12
	xorl	%r14d, %r14d
	movq	%rsi, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_open
	cmpl	$-1, %eax
	je	LBB7_9
## %bb.1:
	movl	%eax, %r13d
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	movq	%r15, -56(%rbp)         ## 8-byte Spill
	movl	%eax, %edi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	_lseek
	movq	%rax, %r14
	cmpl	$-1, %r14d
	je	LBB7_6
## %bb.2:
	movslq	%r14d, %rbx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movl	$3, %edx
	movl	$2, %ecx
	movl	%r13d, %r8d
	xorl	%r9d, %r9d
	callq	_mmap
	cmpq	$-1, %rax
	je	LBB7_6
## %bb.3:
	movq	%rax, %r15
	movq	%rax, %rdi
	movl	%r14d, %esi
	callq	_mlx_int_file_get_rid_comment
	leaq	_mlx_int_get_line(%rip), %rcx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	_mlx_int_parse_xpm
	movq	%rax, %r14
	testq	%rax, %rax
	je	LBB7_5
## %bb.4:
	movl	(%r14), %eax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movl	%eax, (%rcx)
	movl	4(%r14), %eax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movl	%eax, (%rcx)
LBB7_5:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_munmap
	movl	%r13d, %edi
	callq	_close
	jmp	LBB7_9
LBB7_6:
	testl	%r13d, %r13d
	js	LBB7_8
## %bb.7:
	movl	%r13d, %edi
	callq	_close
LBB7_8:
	xorl	%r14d, %r14d
LBB7_9:                                 ## %.thread
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_xpm_to_image       ## -- Begin function mlx_xpm_to_image
	.p2align	4, 0x90
_mlx_xpm_to_image:                      ## @mlx_xpm_to_image
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rcx, %r14
	movq	%rdx, %rbx
	leaq	_mlx_int_static_line(%rip), %rcx
	xorl	%edx, %edx
	callq	_mlx_int_parse_xpm
	testq	%rax, %rax
	je	LBB8_2
## %bb.1:
	movl	(%rax), %ecx
	movl	%ecx, (%rbx)
	movl	4(%rax), %ecx
	movl	%ecx, (%r14)
LBB8_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"snow"

L_.str.1:                               ## @.str.1
	.asciz	"ghost white"

L_.str.2:                               ## @.str.2
	.asciz	"ghostwhite"

L_.str.3:                               ## @.str.3
	.asciz	"white smoke"

L_.str.4:                               ## @.str.4
	.asciz	"whitesmoke"

L_.str.5:                               ## @.str.5
	.asciz	"gainsboro"

L_.str.6:                               ## @.str.6
	.asciz	"floral white"

L_.str.7:                               ## @.str.7
	.asciz	"floralwhite"

L_.str.8:                               ## @.str.8
	.asciz	"old lace"

L_.str.9:                               ## @.str.9
	.asciz	"oldlace"

L_.str.10:                              ## @.str.10
	.asciz	"linen"

L_.str.11:                              ## @.str.11
	.asciz	"antique white"

L_.str.12:                              ## @.str.12
	.asciz	"antiquewhite"

L_.str.13:                              ## @.str.13
	.asciz	"papaya whip"

L_.str.14:                              ## @.str.14
	.asciz	"papayawhip"

L_.str.15:                              ## @.str.15
	.asciz	"blanched almond"

L_.str.16:                              ## @.str.16
	.asciz	"blanchedalmond"

L_.str.17:                              ## @.str.17
	.asciz	"bisque"

L_.str.18:                              ## @.str.18
	.asciz	"peach puff"

L_.str.19:                              ## @.str.19
	.asciz	"peachpuff"

L_.str.20:                              ## @.str.20
	.asciz	"navajo white"

L_.str.21:                              ## @.str.21
	.asciz	"navajowhite"

L_.str.22:                              ## @.str.22
	.asciz	"moccasin"

L_.str.23:                              ## @.str.23
	.asciz	"cornsilk"

L_.str.24:                              ## @.str.24
	.asciz	"ivory"

L_.str.25:                              ## @.str.25
	.asciz	"lemon chiffon"

L_.str.26:                              ## @.str.26
	.asciz	"lemonchiffon"

L_.str.27:                              ## @.str.27
	.asciz	"seashell"

L_.str.28:                              ## @.str.28
	.asciz	"honeydew"

L_.str.29:                              ## @.str.29
	.asciz	"mint cream"

L_.str.30:                              ## @.str.30
	.asciz	"mintcream"

L_.str.31:                              ## @.str.31
	.asciz	"azure"

L_.str.32:                              ## @.str.32
	.asciz	"alice blue"

L_.str.33:                              ## @.str.33
	.asciz	"aliceblue"

L_.str.34:                              ## @.str.34
	.asciz	"lavender"

L_.str.35:                              ## @.str.35
	.asciz	"lavender blush"

L_.str.36:                              ## @.str.36
	.asciz	"lavenderblush"

L_.str.37:                              ## @.str.37
	.asciz	"misty rose"

L_.str.38:                              ## @.str.38
	.asciz	"mistyrose"

L_.str.39:                              ## @.str.39
	.asciz	"white"

L_.str.40:                              ## @.str.40
	.asciz	"black"

L_.str.41:                              ## @.str.41
	.asciz	"dark slate"

L_.str.42:                              ## @.str.42
	.asciz	"darkslategray"

L_.str.43:                              ## @.str.43
	.asciz	"darkslategrey"

L_.str.44:                              ## @.str.44
	.asciz	"dim gray"

L_.str.45:                              ## @.str.45
	.asciz	"dimgray"

L_.str.46:                              ## @.str.46
	.asciz	"dim grey"

L_.str.47:                              ## @.str.47
	.asciz	"dimgrey"

L_.str.48:                              ## @.str.48
	.asciz	"slate gray"

L_.str.49:                              ## @.str.49
	.asciz	"slategray"

L_.str.50:                              ## @.str.50
	.asciz	"slate grey"

L_.str.51:                              ## @.str.51
	.asciz	"slategrey"

L_.str.52:                              ## @.str.52
	.asciz	"light slate"

L_.str.53:                              ## @.str.53
	.asciz	"lightslategray"

L_.str.54:                              ## @.str.54
	.asciz	"lightslategrey"

L_.str.55:                              ## @.str.55
	.asciz	"gray"

L_.str.56:                              ## @.str.56
	.asciz	"grey"

L_.str.57:                              ## @.str.57
	.asciz	"light grey"

L_.str.58:                              ## @.str.58
	.asciz	"lightgrey"

L_.str.59:                              ## @.str.59
	.asciz	"light gray"

L_.str.60:                              ## @.str.60
	.asciz	"lightgray"

L_.str.61:                              ## @.str.61
	.asciz	"midnight blue"

L_.str.62:                              ## @.str.62
	.asciz	"midnightblue"

L_.str.63:                              ## @.str.63
	.asciz	"navy"

L_.str.64:                              ## @.str.64
	.asciz	"navy blue"

L_.str.65:                              ## @.str.65
	.asciz	"navyblue"

L_.str.66:                              ## @.str.66
	.asciz	"cornflower blue"

L_.str.67:                              ## @.str.67
	.asciz	"cornflowerblue"

L_.str.68:                              ## @.str.68
	.asciz	"darkslateblue"

L_.str.69:                              ## @.str.69
	.asciz	"slate blue"

L_.str.70:                              ## @.str.70
	.asciz	"slateblue"

L_.str.71:                              ## @.str.71
	.asciz	"medium slate"

L_.str.72:                              ## @.str.72
	.asciz	"mediumslateblue"

L_.str.73:                              ## @.str.73
	.asciz	"lightslateblue"

L_.str.74:                              ## @.str.74
	.asciz	"medium blue"

L_.str.75:                              ## @.str.75
	.asciz	"mediumblue"

L_.str.76:                              ## @.str.76
	.asciz	"royal blue"

L_.str.77:                              ## @.str.77
	.asciz	"royalblue"

L_.str.78:                              ## @.str.78
	.asciz	"blue"

L_.str.79:                              ## @.str.79
	.asciz	"dodger blue"

L_.str.80:                              ## @.str.80
	.asciz	"dodgerblue"

L_.str.81:                              ## @.str.81
	.asciz	"deep sky"

L_.str.82:                              ## @.str.82
	.asciz	"deepskyblue"

L_.str.83:                              ## @.str.83
	.asciz	"sky blue"

L_.str.84:                              ## @.str.84
	.asciz	"skyblue"

L_.str.85:                              ## @.str.85
	.asciz	"light sky"

L_.str.86:                              ## @.str.86
	.asciz	"lightskyblue"

L_.str.87:                              ## @.str.87
	.asciz	"steel blue"

L_.str.88:                              ## @.str.88
	.asciz	"steelblue"

L_.str.89:                              ## @.str.89
	.asciz	"light steel"

L_.str.90:                              ## @.str.90
	.asciz	"lightsteelblue"

L_.str.91:                              ## @.str.91
	.asciz	"light blue"

L_.str.92:                              ## @.str.92
	.asciz	"lightblue"

L_.str.93:                              ## @.str.93
	.asciz	"powder blue"

L_.str.94:                              ## @.str.94
	.asciz	"powderblue"

L_.str.95:                              ## @.str.95
	.asciz	"pale turquoise"

L_.str.96:                              ## @.str.96
	.asciz	"paleturquoise"

L_.str.97:                              ## @.str.97
	.asciz	"dark turquoise"

L_.str.98:                              ## @.str.98
	.asciz	"darkturquoise"

L_.str.99:                              ## @.str.99
	.asciz	"medium turquoise"

L_.str.100:                             ## @.str.100
	.asciz	"mediumturquoise"

L_.str.101:                             ## @.str.101
	.asciz	"turquoise"

L_.str.102:                             ## @.str.102
	.asciz	"cyan"

L_.str.103:                             ## @.str.103
	.asciz	"light cyan"

L_.str.104:                             ## @.str.104
	.asciz	"lightcyan"

L_.str.105:                             ## @.str.105
	.asciz	"cadet blue"

L_.str.106:                             ## @.str.106
	.asciz	"cadetblue"

L_.str.107:                             ## @.str.107
	.asciz	"medium aquamarine"

L_.str.108:                             ## @.str.108
	.asciz	"mediumaquamarine"

L_.str.109:                             ## @.str.109
	.asciz	"aquamarine"

L_.str.110:                             ## @.str.110
	.asciz	"dark green"

L_.str.111:                             ## @.str.111
	.asciz	"darkgreen"

L_.str.112:                             ## @.str.112
	.asciz	"dark olive"

L_.str.113:                             ## @.str.113
	.asciz	"darkolivegreen"

L_.str.114:                             ## @.str.114
	.asciz	"dark sea"

L_.str.115:                             ## @.str.115
	.asciz	"darkseagreen"

L_.str.116:                             ## @.str.116
	.asciz	"sea green"

L_.str.117:                             ## @.str.117
	.asciz	"seagreen"

L_.str.118:                             ## @.str.118
	.asciz	"medium sea"

L_.str.119:                             ## @.str.119
	.asciz	"mediumseagreen"

L_.str.120:                             ## @.str.120
	.asciz	"light sea"

L_.str.121:                             ## @.str.121
	.asciz	"lightseagreen"

L_.str.122:                             ## @.str.122
	.asciz	"pale green"

L_.str.123:                             ## @.str.123
	.asciz	"palegreen"

L_.str.124:                             ## @.str.124
	.asciz	"spring green"

L_.str.125:                             ## @.str.125
	.asciz	"springgreen"

L_.str.126:                             ## @.str.126
	.asciz	"lawn green"

L_.str.127:                             ## @.str.127
	.asciz	"lawngreen"

L_.str.128:                             ## @.str.128
	.asciz	"green"

L_.str.129:                             ## @.str.129
	.asciz	"chartreuse"

L_.str.130:                             ## @.str.130
	.asciz	"medium spring"

L_.str.131:                             ## @.str.131
	.asciz	"mediumspringgreen"

L_.str.132:                             ## @.str.132
	.asciz	"green yellow"

L_.str.133:                             ## @.str.133
	.asciz	"greenyellow"

L_.str.134:                             ## @.str.134
	.asciz	"lime green"

L_.str.135:                             ## @.str.135
	.asciz	"limegreen"

L_.str.136:                             ## @.str.136
	.asciz	"yellow green"

L_.str.137:                             ## @.str.137
	.asciz	"yellowgreen"

L_.str.138:                             ## @.str.138
	.asciz	"forest green"

L_.str.139:                             ## @.str.139
	.asciz	"forestgreen"

L_.str.140:                             ## @.str.140
	.asciz	"olive drab"

L_.str.141:                             ## @.str.141
	.asciz	"olivedrab"

L_.str.142:                             ## @.str.142
	.asciz	"dark khaki"

L_.str.143:                             ## @.str.143
	.asciz	"darkkhaki"

L_.str.144:                             ## @.str.144
	.asciz	"khaki"

L_.str.145:                             ## @.str.145
	.asciz	"pale goldenrod"

L_.str.146:                             ## @.str.146
	.asciz	"palegoldenrod"

L_.str.147:                             ## @.str.147
	.asciz	"light goldenrod"

L_.str.148:                             ## @.str.148
	.asciz	"lightgoldenrodyellow"

L_.str.149:                             ## @.str.149
	.asciz	"light yellow"

L_.str.150:                             ## @.str.150
	.asciz	"lightyellow"

L_.str.151:                             ## @.str.151
	.asciz	"yellow"

L_.str.152:                             ## @.str.152
	.asciz	"gold"

L_.str.153:                             ## @.str.153
	.asciz	"lightgoldenrod"

L_.str.154:                             ## @.str.154
	.asciz	"goldenrod"

L_.str.155:                             ## @.str.155
	.asciz	"dark goldenrod"

L_.str.156:                             ## @.str.156
	.asciz	"darkgoldenrod"

L_.str.157:                             ## @.str.157
	.asciz	"rosy brown"

L_.str.158:                             ## @.str.158
	.asciz	"rosybrown"

L_.str.159:                             ## @.str.159
	.asciz	"indian red"

L_.str.160:                             ## @.str.160
	.asciz	"indianred"

L_.str.161:                             ## @.str.161
	.asciz	"saddle brown"

L_.str.162:                             ## @.str.162
	.asciz	"saddlebrown"

L_.str.163:                             ## @.str.163
	.asciz	"sienna"

L_.str.164:                             ## @.str.164
	.asciz	"peru"

L_.str.165:                             ## @.str.165
	.asciz	"burlywood"

L_.str.166:                             ## @.str.166
	.asciz	"beige"

L_.str.167:                             ## @.str.167
	.asciz	"wheat"

L_.str.168:                             ## @.str.168
	.asciz	"sandy brown"

L_.str.169:                             ## @.str.169
	.asciz	"sandybrown"

L_.str.170:                             ## @.str.170
	.asciz	"tan"

L_.str.171:                             ## @.str.171
	.asciz	"chocolate"

L_.str.172:                             ## @.str.172
	.asciz	"firebrick"

L_.str.173:                             ## @.str.173
	.asciz	"brown"

L_.str.174:                             ## @.str.174
	.asciz	"dark salmon"

L_.str.175:                             ## @.str.175
	.asciz	"darksalmon"

L_.str.176:                             ## @.str.176
	.asciz	"salmon"

L_.str.177:                             ## @.str.177
	.asciz	"light salmon"

L_.str.178:                             ## @.str.178
	.asciz	"lightsalmon"

L_.str.179:                             ## @.str.179
	.asciz	"orange"

L_.str.180:                             ## @.str.180
	.asciz	"dark orange"

L_.str.181:                             ## @.str.181
	.asciz	"darkorange"

L_.str.182:                             ## @.str.182
	.asciz	"coral"

L_.str.183:                             ## @.str.183
	.asciz	"light coral"

L_.str.184:                             ## @.str.184
	.asciz	"lightcoral"

L_.str.185:                             ## @.str.185
	.asciz	"tomato"

L_.str.186:                             ## @.str.186
	.asciz	"orange red"

L_.str.187:                             ## @.str.187
	.asciz	"orangered"

L_.str.188:                             ## @.str.188
	.asciz	"red"

L_.str.189:                             ## @.str.189
	.asciz	"hot pink"

L_.str.190:                             ## @.str.190
	.asciz	"hotpink"

L_.str.191:                             ## @.str.191
	.asciz	"deep pink"

L_.str.192:                             ## @.str.192
	.asciz	"deeppink"

L_.str.193:                             ## @.str.193
	.asciz	"pink"

L_.str.194:                             ## @.str.194
	.asciz	"light pink"

L_.str.195:                             ## @.str.195
	.asciz	"lightpink"

L_.str.196:                             ## @.str.196
	.asciz	"pale violet"

L_.str.197:                             ## @.str.197
	.asciz	"palevioletred"

L_.str.198:                             ## @.str.198
	.asciz	"maroon"

L_.str.199:                             ## @.str.199
	.asciz	"medium violet"

L_.str.200:                             ## @.str.200
	.asciz	"mediumvioletred"

L_.str.201:                             ## @.str.201
	.asciz	"violet red"

L_.str.202:                             ## @.str.202
	.asciz	"violetred"

L_.str.203:                             ## @.str.203
	.asciz	"magenta"

L_.str.204:                             ## @.str.204
	.asciz	"violet"

L_.str.205:                             ## @.str.205
	.asciz	"plum"

L_.str.206:                             ## @.str.206
	.asciz	"orchid"

L_.str.207:                             ## @.str.207
	.asciz	"medium orchid"

L_.str.208:                             ## @.str.208
	.asciz	"mediumorchid"

L_.str.209:                             ## @.str.209
	.asciz	"dark orchid"

L_.str.210:                             ## @.str.210
	.asciz	"darkorchid"

L_.str.211:                             ## @.str.211
	.asciz	"dark violet"

L_.str.212:                             ## @.str.212
	.asciz	"darkviolet"

L_.str.213:                             ## @.str.213
	.asciz	"blue violet"

L_.str.214:                             ## @.str.214
	.asciz	"blueviolet"

L_.str.215:                             ## @.str.215
	.asciz	"purple"

L_.str.216:                             ## @.str.216
	.asciz	"medium purple"

L_.str.217:                             ## @.str.217
	.asciz	"mediumpurple"

L_.str.218:                             ## @.str.218
	.asciz	"thistle"

L_.str.219:                             ## @.str.219
	.asciz	"snow1"

L_.str.220:                             ## @.str.220
	.asciz	"snow2"

L_.str.221:                             ## @.str.221
	.asciz	"snow3"

L_.str.222:                             ## @.str.222
	.asciz	"snow4"

L_.str.223:                             ## @.str.223
	.asciz	"seashell1"

L_.str.224:                             ## @.str.224
	.asciz	"seashell2"

L_.str.225:                             ## @.str.225
	.asciz	"seashell3"

L_.str.226:                             ## @.str.226
	.asciz	"seashell4"

L_.str.227:                             ## @.str.227
	.asciz	"antiquewhite1"

L_.str.228:                             ## @.str.228
	.asciz	"antiquewhite2"

L_.str.229:                             ## @.str.229
	.asciz	"antiquewhite3"

L_.str.230:                             ## @.str.230
	.asciz	"antiquewhite4"

L_.str.231:                             ## @.str.231
	.asciz	"bisque1"

L_.str.232:                             ## @.str.232
	.asciz	"bisque2"

L_.str.233:                             ## @.str.233
	.asciz	"bisque3"

L_.str.234:                             ## @.str.234
	.asciz	"bisque4"

L_.str.235:                             ## @.str.235
	.asciz	"peachpuff1"

L_.str.236:                             ## @.str.236
	.asciz	"peachpuff2"

L_.str.237:                             ## @.str.237
	.asciz	"peachpuff3"

L_.str.238:                             ## @.str.238
	.asciz	"peachpuff4"

L_.str.239:                             ## @.str.239
	.asciz	"navajowhite1"

L_.str.240:                             ## @.str.240
	.asciz	"navajowhite2"

L_.str.241:                             ## @.str.241
	.asciz	"navajowhite3"

L_.str.242:                             ## @.str.242
	.asciz	"navajowhite4"

L_.str.243:                             ## @.str.243
	.asciz	"lemonchiffon1"

L_.str.244:                             ## @.str.244
	.asciz	"lemonchiffon2"

L_.str.245:                             ## @.str.245
	.asciz	"lemonchiffon3"

L_.str.246:                             ## @.str.246
	.asciz	"lemonchiffon4"

L_.str.247:                             ## @.str.247
	.asciz	"cornsilk1"

L_.str.248:                             ## @.str.248
	.asciz	"cornsilk2"

L_.str.249:                             ## @.str.249
	.asciz	"cornsilk3"

L_.str.250:                             ## @.str.250
	.asciz	"cornsilk4"

L_.str.251:                             ## @.str.251
	.asciz	"ivory1"

L_.str.252:                             ## @.str.252
	.asciz	"ivory2"

L_.str.253:                             ## @.str.253
	.asciz	"ivory3"

L_.str.254:                             ## @.str.254
	.asciz	"ivory4"

L_.str.255:                             ## @.str.255
	.asciz	"honeydew1"

L_.str.256:                             ## @.str.256
	.asciz	"honeydew2"

L_.str.257:                             ## @.str.257
	.asciz	"honeydew3"

L_.str.258:                             ## @.str.258
	.asciz	"honeydew4"

L_.str.259:                             ## @.str.259
	.asciz	"lavenderblush1"

L_.str.260:                             ## @.str.260
	.asciz	"lavenderblush2"

L_.str.261:                             ## @.str.261
	.asciz	"lavenderblush3"

L_.str.262:                             ## @.str.262
	.asciz	"lavenderblush4"

L_.str.263:                             ## @.str.263
	.asciz	"mistyrose1"

L_.str.264:                             ## @.str.264
	.asciz	"mistyrose2"

L_.str.265:                             ## @.str.265
	.asciz	"mistyrose3"

L_.str.266:                             ## @.str.266
	.asciz	"mistyrose4"

L_.str.267:                             ## @.str.267
	.asciz	"azure1"

L_.str.268:                             ## @.str.268
	.asciz	"azure2"

L_.str.269:                             ## @.str.269
	.asciz	"azure3"

L_.str.270:                             ## @.str.270
	.asciz	"azure4"

L_.str.271:                             ## @.str.271
	.asciz	"slateblue1"

L_.str.272:                             ## @.str.272
	.asciz	"slateblue2"

L_.str.273:                             ## @.str.273
	.asciz	"slateblue3"

L_.str.274:                             ## @.str.274
	.asciz	"slateblue4"

L_.str.275:                             ## @.str.275
	.asciz	"royalblue1"

L_.str.276:                             ## @.str.276
	.asciz	"royalblue2"

L_.str.277:                             ## @.str.277
	.asciz	"royalblue3"

L_.str.278:                             ## @.str.278
	.asciz	"royalblue4"

L_.str.279:                             ## @.str.279
	.asciz	"blue1"

L_.str.280:                             ## @.str.280
	.asciz	"blue2"

L_.str.281:                             ## @.str.281
	.asciz	"blue3"

L_.str.282:                             ## @.str.282
	.asciz	"blue4"

L_.str.283:                             ## @.str.283
	.asciz	"dodgerblue1"

L_.str.284:                             ## @.str.284
	.asciz	"dodgerblue2"

L_.str.285:                             ## @.str.285
	.asciz	"dodgerblue3"

L_.str.286:                             ## @.str.286
	.asciz	"dodgerblue4"

L_.str.287:                             ## @.str.287
	.asciz	"steelblue1"

L_.str.288:                             ## @.str.288
	.asciz	"steelblue2"

L_.str.289:                             ## @.str.289
	.asciz	"steelblue3"

L_.str.290:                             ## @.str.290
	.asciz	"steelblue4"

L_.str.291:                             ## @.str.291
	.asciz	"deepskyblue1"

L_.str.292:                             ## @.str.292
	.asciz	"deepskyblue2"

L_.str.293:                             ## @.str.293
	.asciz	"deepskyblue3"

L_.str.294:                             ## @.str.294
	.asciz	"deepskyblue4"

L_.str.295:                             ## @.str.295
	.asciz	"skyblue1"

L_.str.296:                             ## @.str.296
	.asciz	"skyblue2"

L_.str.297:                             ## @.str.297
	.asciz	"skyblue3"

L_.str.298:                             ## @.str.298
	.asciz	"skyblue4"

L_.str.299:                             ## @.str.299
	.asciz	"lightskyblue1"

L_.str.300:                             ## @.str.300
	.asciz	"lightskyblue2"

L_.str.301:                             ## @.str.301
	.asciz	"lightskyblue3"

L_.str.302:                             ## @.str.302
	.asciz	"lightskyblue4"

L_.str.303:                             ## @.str.303
	.asciz	"slategray1"

L_.str.304:                             ## @.str.304
	.asciz	"slategray2"

L_.str.305:                             ## @.str.305
	.asciz	"slategray3"

L_.str.306:                             ## @.str.306
	.asciz	"slategray4"

L_.str.307:                             ## @.str.307
	.asciz	"lightsteelblue1"

L_.str.308:                             ## @.str.308
	.asciz	"lightsteelblue2"

L_.str.309:                             ## @.str.309
	.asciz	"lightsteelblue3"

L_.str.310:                             ## @.str.310
	.asciz	"lightsteelblue4"

L_.str.311:                             ## @.str.311
	.asciz	"lightblue1"

L_.str.312:                             ## @.str.312
	.asciz	"lightblue2"

L_.str.313:                             ## @.str.313
	.asciz	"lightblue3"

L_.str.314:                             ## @.str.314
	.asciz	"lightblue4"

L_.str.315:                             ## @.str.315
	.asciz	"lightcyan1"

L_.str.316:                             ## @.str.316
	.asciz	"lightcyan2"

L_.str.317:                             ## @.str.317
	.asciz	"lightcyan3"

L_.str.318:                             ## @.str.318
	.asciz	"lightcyan4"

L_.str.319:                             ## @.str.319
	.asciz	"paleturquoise1"

L_.str.320:                             ## @.str.320
	.asciz	"paleturquoise2"

L_.str.321:                             ## @.str.321
	.asciz	"paleturquoise3"

L_.str.322:                             ## @.str.322
	.asciz	"paleturquoise4"

L_.str.323:                             ## @.str.323
	.asciz	"cadetblue1"

L_.str.324:                             ## @.str.324
	.asciz	"cadetblue2"

L_.str.325:                             ## @.str.325
	.asciz	"cadetblue3"

L_.str.326:                             ## @.str.326
	.asciz	"cadetblue4"

L_.str.327:                             ## @.str.327
	.asciz	"turquoise1"

L_.str.328:                             ## @.str.328
	.asciz	"turquoise2"

L_.str.329:                             ## @.str.329
	.asciz	"turquoise3"

L_.str.330:                             ## @.str.330
	.asciz	"turquoise4"

L_.str.331:                             ## @.str.331
	.asciz	"cyan1"

L_.str.332:                             ## @.str.332
	.asciz	"cyan2"

L_.str.333:                             ## @.str.333
	.asciz	"cyan3"

L_.str.334:                             ## @.str.334
	.asciz	"cyan4"

L_.str.335:                             ## @.str.335
	.asciz	"darkslategray1"

L_.str.336:                             ## @.str.336
	.asciz	"darkslategray2"

L_.str.337:                             ## @.str.337
	.asciz	"darkslategray3"

L_.str.338:                             ## @.str.338
	.asciz	"darkslategray4"

L_.str.339:                             ## @.str.339
	.asciz	"aquamarine1"

L_.str.340:                             ## @.str.340
	.asciz	"aquamarine2"

L_.str.341:                             ## @.str.341
	.asciz	"aquamarine3"

L_.str.342:                             ## @.str.342
	.asciz	"aquamarine4"

L_.str.343:                             ## @.str.343
	.asciz	"darkseagreen1"

L_.str.344:                             ## @.str.344
	.asciz	"darkseagreen2"

L_.str.345:                             ## @.str.345
	.asciz	"darkseagreen3"

L_.str.346:                             ## @.str.346
	.asciz	"darkseagreen4"

L_.str.347:                             ## @.str.347
	.asciz	"seagreen1"

L_.str.348:                             ## @.str.348
	.asciz	"seagreen2"

L_.str.349:                             ## @.str.349
	.asciz	"seagreen3"

L_.str.350:                             ## @.str.350
	.asciz	"seagreen4"

L_.str.351:                             ## @.str.351
	.asciz	"palegreen1"

L_.str.352:                             ## @.str.352
	.asciz	"palegreen2"

L_.str.353:                             ## @.str.353
	.asciz	"palegreen3"

L_.str.354:                             ## @.str.354
	.asciz	"palegreen4"

L_.str.355:                             ## @.str.355
	.asciz	"springgreen1"

L_.str.356:                             ## @.str.356
	.asciz	"springgreen2"

L_.str.357:                             ## @.str.357
	.asciz	"springgreen3"

L_.str.358:                             ## @.str.358
	.asciz	"springgreen4"

L_.str.359:                             ## @.str.359
	.asciz	"green1"

L_.str.360:                             ## @.str.360
	.asciz	"green2"

L_.str.361:                             ## @.str.361
	.asciz	"green3"

L_.str.362:                             ## @.str.362
	.asciz	"green4"

L_.str.363:                             ## @.str.363
	.asciz	"chartreuse1"

L_.str.364:                             ## @.str.364
	.asciz	"chartreuse2"

L_.str.365:                             ## @.str.365
	.asciz	"chartreuse3"

L_.str.366:                             ## @.str.366
	.asciz	"chartreuse4"

L_.str.367:                             ## @.str.367
	.asciz	"olivedrab1"

L_.str.368:                             ## @.str.368
	.asciz	"olivedrab2"

L_.str.369:                             ## @.str.369
	.asciz	"olivedrab3"

L_.str.370:                             ## @.str.370
	.asciz	"olivedrab4"

L_.str.371:                             ## @.str.371
	.asciz	"darkolivegreen1"

L_.str.372:                             ## @.str.372
	.asciz	"darkolivegreen2"

L_.str.373:                             ## @.str.373
	.asciz	"darkolivegreen3"

L_.str.374:                             ## @.str.374
	.asciz	"darkolivegreen4"

L_.str.375:                             ## @.str.375
	.asciz	"khaki1"

L_.str.376:                             ## @.str.376
	.asciz	"khaki2"

L_.str.377:                             ## @.str.377
	.asciz	"khaki3"

L_.str.378:                             ## @.str.378
	.asciz	"khaki4"

L_.str.379:                             ## @.str.379
	.asciz	"lightgoldenrod1"

L_.str.380:                             ## @.str.380
	.asciz	"lightgoldenrod2"

L_.str.381:                             ## @.str.381
	.asciz	"lightgoldenrod3"

L_.str.382:                             ## @.str.382
	.asciz	"lightgoldenrod4"

L_.str.383:                             ## @.str.383
	.asciz	"lightyellow1"

L_.str.384:                             ## @.str.384
	.asciz	"lightyellow2"

L_.str.385:                             ## @.str.385
	.asciz	"lightyellow3"

L_.str.386:                             ## @.str.386
	.asciz	"lightyellow4"

L_.str.387:                             ## @.str.387
	.asciz	"yellow1"

L_.str.388:                             ## @.str.388
	.asciz	"yellow2"

L_.str.389:                             ## @.str.389
	.asciz	"yellow3"

L_.str.390:                             ## @.str.390
	.asciz	"yellow4"

L_.str.391:                             ## @.str.391
	.asciz	"gold1"

L_.str.392:                             ## @.str.392
	.asciz	"gold2"

L_.str.393:                             ## @.str.393
	.asciz	"gold3"

L_.str.394:                             ## @.str.394
	.asciz	"gold4"

L_.str.395:                             ## @.str.395
	.asciz	"goldenrod1"

L_.str.396:                             ## @.str.396
	.asciz	"goldenrod2"

L_.str.397:                             ## @.str.397
	.asciz	"goldenrod3"

L_.str.398:                             ## @.str.398
	.asciz	"goldenrod4"

L_.str.399:                             ## @.str.399
	.asciz	"darkgoldenrod1"

L_.str.400:                             ## @.str.400
	.asciz	"darkgoldenrod2"

L_.str.401:                             ## @.str.401
	.asciz	"darkgoldenrod3"

L_.str.402:                             ## @.str.402
	.asciz	"darkgoldenrod4"

L_.str.403:                             ## @.str.403
	.asciz	"rosybrown1"

L_.str.404:                             ## @.str.404
	.asciz	"rosybrown2"

L_.str.405:                             ## @.str.405
	.asciz	"rosybrown3"

L_.str.406:                             ## @.str.406
	.asciz	"rosybrown4"

L_.str.407:                             ## @.str.407
	.asciz	"indianred1"

L_.str.408:                             ## @.str.408
	.asciz	"indianred2"

L_.str.409:                             ## @.str.409
	.asciz	"indianred3"

L_.str.410:                             ## @.str.410
	.asciz	"indianred4"

L_.str.411:                             ## @.str.411
	.asciz	"sienna1"

L_.str.412:                             ## @.str.412
	.asciz	"sienna2"

L_.str.413:                             ## @.str.413
	.asciz	"sienna3"

L_.str.414:                             ## @.str.414
	.asciz	"sienna4"

L_.str.415:                             ## @.str.415
	.asciz	"burlywood1"

L_.str.416:                             ## @.str.416
	.asciz	"burlywood2"

L_.str.417:                             ## @.str.417
	.asciz	"burlywood3"

L_.str.418:                             ## @.str.418
	.asciz	"burlywood4"

L_.str.419:                             ## @.str.419
	.asciz	"wheat1"

L_.str.420:                             ## @.str.420
	.asciz	"wheat2"

L_.str.421:                             ## @.str.421
	.asciz	"wheat3"

L_.str.422:                             ## @.str.422
	.asciz	"wheat4"

L_.str.423:                             ## @.str.423
	.asciz	"tan1"

L_.str.424:                             ## @.str.424
	.asciz	"tan2"

L_.str.425:                             ## @.str.425
	.asciz	"tan3"

L_.str.426:                             ## @.str.426
	.asciz	"tan4"

L_.str.427:                             ## @.str.427
	.asciz	"chocolate1"

L_.str.428:                             ## @.str.428
	.asciz	"chocolate2"

L_.str.429:                             ## @.str.429
	.asciz	"chocolate3"

L_.str.430:                             ## @.str.430
	.asciz	"chocolate4"

L_.str.431:                             ## @.str.431
	.asciz	"firebrick1"

L_.str.432:                             ## @.str.432
	.asciz	"firebrick2"

L_.str.433:                             ## @.str.433
	.asciz	"firebrick3"

L_.str.434:                             ## @.str.434
	.asciz	"firebrick4"

L_.str.435:                             ## @.str.435
	.asciz	"brown1"

L_.str.436:                             ## @.str.436
	.asciz	"brown2"

L_.str.437:                             ## @.str.437
	.asciz	"brown3"

L_.str.438:                             ## @.str.438
	.asciz	"brown4"

L_.str.439:                             ## @.str.439
	.asciz	"salmon1"

L_.str.440:                             ## @.str.440
	.asciz	"salmon2"

L_.str.441:                             ## @.str.441
	.asciz	"salmon3"

L_.str.442:                             ## @.str.442
	.asciz	"salmon4"

L_.str.443:                             ## @.str.443
	.asciz	"lightsalmon1"

L_.str.444:                             ## @.str.444
	.asciz	"lightsalmon2"

L_.str.445:                             ## @.str.445
	.asciz	"lightsalmon3"

L_.str.446:                             ## @.str.446
	.asciz	"lightsalmon4"

L_.str.447:                             ## @.str.447
	.asciz	"orange1"

L_.str.448:                             ## @.str.448
	.asciz	"orange2"

L_.str.449:                             ## @.str.449
	.asciz	"orange3"

L_.str.450:                             ## @.str.450
	.asciz	"orange4"

L_.str.451:                             ## @.str.451
	.asciz	"darkorange1"

L_.str.452:                             ## @.str.452
	.asciz	"darkorange2"

L_.str.453:                             ## @.str.453
	.asciz	"darkorange3"

L_.str.454:                             ## @.str.454
	.asciz	"darkorange4"

L_.str.455:                             ## @.str.455
	.asciz	"coral1"

L_.str.456:                             ## @.str.456
	.asciz	"coral2"

L_.str.457:                             ## @.str.457
	.asciz	"coral3"

L_.str.458:                             ## @.str.458
	.asciz	"coral4"

L_.str.459:                             ## @.str.459
	.asciz	"tomato1"

L_.str.460:                             ## @.str.460
	.asciz	"tomato2"

L_.str.461:                             ## @.str.461
	.asciz	"tomato3"

L_.str.462:                             ## @.str.462
	.asciz	"tomato4"

L_.str.463:                             ## @.str.463
	.asciz	"orangered1"

L_.str.464:                             ## @.str.464
	.asciz	"orangered2"

L_.str.465:                             ## @.str.465
	.asciz	"orangered3"

L_.str.466:                             ## @.str.466
	.asciz	"orangered4"

L_.str.467:                             ## @.str.467
	.asciz	"red1"

L_.str.468:                             ## @.str.468
	.asciz	"red2"

L_.str.469:                             ## @.str.469
	.asciz	"red3"

L_.str.470:                             ## @.str.470
	.asciz	"red4"

L_.str.471:                             ## @.str.471
	.asciz	"deeppink1"

L_.str.472:                             ## @.str.472
	.asciz	"deeppink2"

L_.str.473:                             ## @.str.473
	.asciz	"deeppink3"

L_.str.474:                             ## @.str.474
	.asciz	"deeppink4"

L_.str.475:                             ## @.str.475
	.asciz	"hotpink1"

L_.str.476:                             ## @.str.476
	.asciz	"hotpink2"

L_.str.477:                             ## @.str.477
	.asciz	"hotpink3"

L_.str.478:                             ## @.str.478
	.asciz	"hotpink4"

L_.str.479:                             ## @.str.479
	.asciz	"pink1"

L_.str.480:                             ## @.str.480
	.asciz	"pink2"

L_.str.481:                             ## @.str.481
	.asciz	"pink3"

L_.str.482:                             ## @.str.482
	.asciz	"pink4"

L_.str.483:                             ## @.str.483
	.asciz	"lightpink1"

L_.str.484:                             ## @.str.484
	.asciz	"lightpink2"

L_.str.485:                             ## @.str.485
	.asciz	"lightpink3"

L_.str.486:                             ## @.str.486
	.asciz	"lightpink4"

L_.str.487:                             ## @.str.487
	.asciz	"palevioletred1"

L_.str.488:                             ## @.str.488
	.asciz	"palevioletred2"

L_.str.489:                             ## @.str.489
	.asciz	"palevioletred3"

L_.str.490:                             ## @.str.490
	.asciz	"palevioletred4"

L_.str.491:                             ## @.str.491
	.asciz	"maroon1"

L_.str.492:                             ## @.str.492
	.asciz	"maroon2"

L_.str.493:                             ## @.str.493
	.asciz	"maroon3"

L_.str.494:                             ## @.str.494
	.asciz	"maroon4"

L_.str.495:                             ## @.str.495
	.asciz	"violetred1"

L_.str.496:                             ## @.str.496
	.asciz	"violetred2"

L_.str.497:                             ## @.str.497
	.asciz	"violetred3"

L_.str.498:                             ## @.str.498
	.asciz	"violetred4"

L_.str.499:                             ## @.str.499
	.asciz	"magenta1"

L_.str.500:                             ## @.str.500
	.asciz	"magenta2"

L_.str.501:                             ## @.str.501
	.asciz	"magenta3"

L_.str.502:                             ## @.str.502
	.asciz	"magenta4"

L_.str.503:                             ## @.str.503
	.asciz	"orchid1"

L_.str.504:                             ## @.str.504
	.asciz	"orchid2"

L_.str.505:                             ## @.str.505
	.asciz	"orchid3"

L_.str.506:                             ## @.str.506
	.asciz	"orchid4"

L_.str.507:                             ## @.str.507
	.asciz	"plum1"

L_.str.508:                             ## @.str.508
	.asciz	"plum2"

L_.str.509:                             ## @.str.509
	.asciz	"plum3"

L_.str.510:                             ## @.str.510
	.asciz	"plum4"

L_.str.511:                             ## @.str.511
	.asciz	"mediumorchid1"

L_.str.512:                             ## @.str.512
	.asciz	"mediumorchid2"

L_.str.513:                             ## @.str.513
	.asciz	"mediumorchid3"

L_.str.514:                             ## @.str.514
	.asciz	"mediumorchid4"

L_.str.515:                             ## @.str.515
	.asciz	"darkorchid1"

L_.str.516:                             ## @.str.516
	.asciz	"darkorchid2"

L_.str.517:                             ## @.str.517
	.asciz	"darkorchid3"

L_.str.518:                             ## @.str.518
	.asciz	"darkorchid4"

L_.str.519:                             ## @.str.519
	.asciz	"purple1"

L_.str.520:                             ## @.str.520
	.asciz	"purple2"

L_.str.521:                             ## @.str.521
	.asciz	"purple3"

L_.str.522:                             ## @.str.522
	.asciz	"purple4"

L_.str.523:                             ## @.str.523
	.asciz	"mediumpurple1"

L_.str.524:                             ## @.str.524
	.asciz	"mediumpurple2"

L_.str.525:                             ## @.str.525
	.asciz	"mediumpurple3"

L_.str.526:                             ## @.str.526
	.asciz	"mediumpurple4"

L_.str.527:                             ## @.str.527
	.asciz	"thistle1"

L_.str.528:                             ## @.str.528
	.asciz	"thistle2"

L_.str.529:                             ## @.str.529
	.asciz	"thistle3"

L_.str.530:                             ## @.str.530
	.asciz	"thistle4"

L_.str.531:                             ## @.str.531
	.asciz	"gray0"

L_.str.532:                             ## @.str.532
	.asciz	"grey0"

L_.str.533:                             ## @.str.533
	.asciz	"gray1"

L_.str.534:                             ## @.str.534
	.asciz	"grey1"

L_.str.535:                             ## @.str.535
	.asciz	"gray2"

L_.str.536:                             ## @.str.536
	.asciz	"grey2"

L_.str.537:                             ## @.str.537
	.asciz	"gray3"

L_.str.538:                             ## @.str.538
	.asciz	"grey3"

L_.str.539:                             ## @.str.539
	.asciz	"gray4"

L_.str.540:                             ## @.str.540
	.asciz	"grey4"

L_.str.541:                             ## @.str.541
	.asciz	"gray5"

L_.str.542:                             ## @.str.542
	.asciz	"grey5"

L_.str.543:                             ## @.str.543
	.asciz	"gray6"

L_.str.544:                             ## @.str.544
	.asciz	"grey6"

L_.str.545:                             ## @.str.545
	.asciz	"gray7"

L_.str.546:                             ## @.str.546
	.asciz	"grey7"

L_.str.547:                             ## @.str.547
	.asciz	"gray8"

L_.str.548:                             ## @.str.548
	.asciz	"grey8"

L_.str.549:                             ## @.str.549
	.asciz	"gray9"

L_.str.550:                             ## @.str.550
	.asciz	"grey9"

L_.str.551:                             ## @.str.551
	.asciz	"gray10"

L_.str.552:                             ## @.str.552
	.asciz	"grey10"

L_.str.553:                             ## @.str.553
	.asciz	"gray11"

L_.str.554:                             ## @.str.554
	.asciz	"grey11"

L_.str.555:                             ## @.str.555
	.asciz	"gray12"

L_.str.556:                             ## @.str.556
	.asciz	"grey12"

L_.str.557:                             ## @.str.557
	.asciz	"gray13"

L_.str.558:                             ## @.str.558
	.asciz	"grey13"

L_.str.559:                             ## @.str.559
	.asciz	"gray14"

L_.str.560:                             ## @.str.560
	.asciz	"grey14"

L_.str.561:                             ## @.str.561
	.asciz	"gray15"

L_.str.562:                             ## @.str.562
	.asciz	"grey15"

L_.str.563:                             ## @.str.563
	.asciz	"gray16"

L_.str.564:                             ## @.str.564
	.asciz	"grey16"

L_.str.565:                             ## @.str.565
	.asciz	"gray17"

L_.str.566:                             ## @.str.566
	.asciz	"grey17"

L_.str.567:                             ## @.str.567
	.asciz	"gray18"

L_.str.568:                             ## @.str.568
	.asciz	"grey18"

L_.str.569:                             ## @.str.569
	.asciz	"gray19"

L_.str.570:                             ## @.str.570
	.asciz	"grey19"

L_.str.571:                             ## @.str.571
	.asciz	"gray20"

L_.str.572:                             ## @.str.572
	.asciz	"grey20"

L_.str.573:                             ## @.str.573
	.asciz	"gray21"

L_.str.574:                             ## @.str.574
	.asciz	"grey21"

L_.str.575:                             ## @.str.575
	.asciz	"gray22"

L_.str.576:                             ## @.str.576
	.asciz	"grey22"

L_.str.577:                             ## @.str.577
	.asciz	"gray23"

L_.str.578:                             ## @.str.578
	.asciz	"grey23"

L_.str.579:                             ## @.str.579
	.asciz	"gray24"

L_.str.580:                             ## @.str.580
	.asciz	"grey24"

L_.str.581:                             ## @.str.581
	.asciz	"gray25"

L_.str.582:                             ## @.str.582
	.asciz	"grey25"

L_.str.583:                             ## @.str.583
	.asciz	"gray26"

L_.str.584:                             ## @.str.584
	.asciz	"grey26"

L_.str.585:                             ## @.str.585
	.asciz	"gray27"

L_.str.586:                             ## @.str.586
	.asciz	"grey27"

L_.str.587:                             ## @.str.587
	.asciz	"gray28"

L_.str.588:                             ## @.str.588
	.asciz	"grey28"

L_.str.589:                             ## @.str.589
	.asciz	"gray29"

L_.str.590:                             ## @.str.590
	.asciz	"grey29"

L_.str.591:                             ## @.str.591
	.asciz	"gray30"

L_.str.592:                             ## @.str.592
	.asciz	"grey30"

L_.str.593:                             ## @.str.593
	.asciz	"gray31"

L_.str.594:                             ## @.str.594
	.asciz	"grey31"

L_.str.595:                             ## @.str.595
	.asciz	"gray32"

L_.str.596:                             ## @.str.596
	.asciz	"grey32"

L_.str.597:                             ## @.str.597
	.asciz	"gray33"

L_.str.598:                             ## @.str.598
	.asciz	"grey33"

L_.str.599:                             ## @.str.599
	.asciz	"gray34"

L_.str.600:                             ## @.str.600
	.asciz	"grey34"

L_.str.601:                             ## @.str.601
	.asciz	"gray35"

L_.str.602:                             ## @.str.602
	.asciz	"grey35"

L_.str.603:                             ## @.str.603
	.asciz	"gray36"

L_.str.604:                             ## @.str.604
	.asciz	"grey36"

L_.str.605:                             ## @.str.605
	.asciz	"gray37"

L_.str.606:                             ## @.str.606
	.asciz	"grey37"

L_.str.607:                             ## @.str.607
	.asciz	"gray38"

L_.str.608:                             ## @.str.608
	.asciz	"grey38"

L_.str.609:                             ## @.str.609
	.asciz	"gray39"

L_.str.610:                             ## @.str.610
	.asciz	"grey39"

L_.str.611:                             ## @.str.611
	.asciz	"gray40"

L_.str.612:                             ## @.str.612
	.asciz	"grey40"

L_.str.613:                             ## @.str.613
	.asciz	"gray41"

L_.str.614:                             ## @.str.614
	.asciz	"grey41"

L_.str.615:                             ## @.str.615
	.asciz	"gray42"

L_.str.616:                             ## @.str.616
	.asciz	"grey42"

L_.str.617:                             ## @.str.617
	.asciz	"gray43"

L_.str.618:                             ## @.str.618
	.asciz	"grey43"

L_.str.619:                             ## @.str.619
	.asciz	"gray44"

L_.str.620:                             ## @.str.620
	.asciz	"grey44"

L_.str.621:                             ## @.str.621
	.asciz	"gray45"

L_.str.622:                             ## @.str.622
	.asciz	"grey45"

L_.str.623:                             ## @.str.623
	.asciz	"gray46"

L_.str.624:                             ## @.str.624
	.asciz	"grey46"

L_.str.625:                             ## @.str.625
	.asciz	"gray47"

L_.str.626:                             ## @.str.626
	.asciz	"grey47"

L_.str.627:                             ## @.str.627
	.asciz	"gray48"

L_.str.628:                             ## @.str.628
	.asciz	"grey48"

L_.str.629:                             ## @.str.629
	.asciz	"gray49"

L_.str.630:                             ## @.str.630
	.asciz	"grey49"

L_.str.631:                             ## @.str.631
	.asciz	"gray50"

L_.str.632:                             ## @.str.632
	.asciz	"grey50"

L_.str.633:                             ## @.str.633
	.asciz	"gray51"

L_.str.634:                             ## @.str.634
	.asciz	"grey51"

L_.str.635:                             ## @.str.635
	.asciz	"gray52"

L_.str.636:                             ## @.str.636
	.asciz	"grey52"

L_.str.637:                             ## @.str.637
	.asciz	"gray53"

L_.str.638:                             ## @.str.638
	.asciz	"grey53"

L_.str.639:                             ## @.str.639
	.asciz	"gray54"

L_.str.640:                             ## @.str.640
	.asciz	"grey54"

L_.str.641:                             ## @.str.641
	.asciz	"gray55"

L_.str.642:                             ## @.str.642
	.asciz	"grey55"

L_.str.643:                             ## @.str.643
	.asciz	"gray56"

L_.str.644:                             ## @.str.644
	.asciz	"grey56"

L_.str.645:                             ## @.str.645
	.asciz	"gray57"

L_.str.646:                             ## @.str.646
	.asciz	"grey57"

L_.str.647:                             ## @.str.647
	.asciz	"gray58"

L_.str.648:                             ## @.str.648
	.asciz	"grey58"

L_.str.649:                             ## @.str.649
	.asciz	"gray59"

L_.str.650:                             ## @.str.650
	.asciz	"grey59"

L_.str.651:                             ## @.str.651
	.asciz	"gray60"

L_.str.652:                             ## @.str.652
	.asciz	"grey60"

L_.str.653:                             ## @.str.653
	.asciz	"gray61"

L_.str.654:                             ## @.str.654
	.asciz	"grey61"

L_.str.655:                             ## @.str.655
	.asciz	"gray62"

L_.str.656:                             ## @.str.656
	.asciz	"grey62"

L_.str.657:                             ## @.str.657
	.asciz	"gray63"

L_.str.658:                             ## @.str.658
	.asciz	"grey63"

L_.str.659:                             ## @.str.659
	.asciz	"gray64"

L_.str.660:                             ## @.str.660
	.asciz	"grey64"

L_.str.661:                             ## @.str.661
	.asciz	"gray65"

L_.str.662:                             ## @.str.662
	.asciz	"grey65"

L_.str.663:                             ## @.str.663
	.asciz	"gray66"

L_.str.664:                             ## @.str.664
	.asciz	"grey66"

L_.str.665:                             ## @.str.665
	.asciz	"gray67"

L_.str.666:                             ## @.str.666
	.asciz	"grey67"

L_.str.667:                             ## @.str.667
	.asciz	"gray68"

L_.str.668:                             ## @.str.668
	.asciz	"grey68"

L_.str.669:                             ## @.str.669
	.asciz	"gray69"

L_.str.670:                             ## @.str.670
	.asciz	"grey69"

L_.str.671:                             ## @.str.671
	.asciz	"gray70"

L_.str.672:                             ## @.str.672
	.asciz	"grey70"

L_.str.673:                             ## @.str.673
	.asciz	"gray71"

L_.str.674:                             ## @.str.674
	.asciz	"grey71"

L_.str.675:                             ## @.str.675
	.asciz	"gray72"

L_.str.676:                             ## @.str.676
	.asciz	"grey72"

L_.str.677:                             ## @.str.677
	.asciz	"gray73"

L_.str.678:                             ## @.str.678
	.asciz	"grey73"

L_.str.679:                             ## @.str.679
	.asciz	"gray74"

L_.str.680:                             ## @.str.680
	.asciz	"grey74"

L_.str.681:                             ## @.str.681
	.asciz	"gray75"

L_.str.682:                             ## @.str.682
	.asciz	"grey75"

L_.str.683:                             ## @.str.683
	.asciz	"gray76"

L_.str.684:                             ## @.str.684
	.asciz	"grey76"

L_.str.685:                             ## @.str.685
	.asciz	"gray77"

L_.str.686:                             ## @.str.686
	.asciz	"grey77"

L_.str.687:                             ## @.str.687
	.asciz	"gray78"

L_.str.688:                             ## @.str.688
	.asciz	"grey78"

L_.str.689:                             ## @.str.689
	.asciz	"gray79"

L_.str.690:                             ## @.str.690
	.asciz	"grey79"

L_.str.691:                             ## @.str.691
	.asciz	"gray80"

L_.str.692:                             ## @.str.692
	.asciz	"grey80"

L_.str.693:                             ## @.str.693
	.asciz	"gray81"

L_.str.694:                             ## @.str.694
	.asciz	"grey81"

L_.str.695:                             ## @.str.695
	.asciz	"gray82"

L_.str.696:                             ## @.str.696
	.asciz	"grey82"

L_.str.697:                             ## @.str.697
	.asciz	"gray83"

L_.str.698:                             ## @.str.698
	.asciz	"grey83"

L_.str.699:                             ## @.str.699
	.asciz	"gray84"

L_.str.700:                             ## @.str.700
	.asciz	"grey84"

L_.str.701:                             ## @.str.701
	.asciz	"gray85"

L_.str.702:                             ## @.str.702
	.asciz	"grey85"

L_.str.703:                             ## @.str.703
	.asciz	"gray86"

L_.str.704:                             ## @.str.704
	.asciz	"grey86"

L_.str.705:                             ## @.str.705
	.asciz	"gray87"

L_.str.706:                             ## @.str.706
	.asciz	"grey87"

L_.str.707:                             ## @.str.707
	.asciz	"gray88"

L_.str.708:                             ## @.str.708
	.asciz	"grey88"

L_.str.709:                             ## @.str.709
	.asciz	"gray89"

L_.str.710:                             ## @.str.710
	.asciz	"grey89"

L_.str.711:                             ## @.str.711
	.asciz	"gray90"

L_.str.712:                             ## @.str.712
	.asciz	"grey90"

L_.str.713:                             ## @.str.713
	.asciz	"gray91"

L_.str.714:                             ## @.str.714
	.asciz	"grey91"

L_.str.715:                             ## @.str.715
	.asciz	"gray92"

L_.str.716:                             ## @.str.716
	.asciz	"grey92"

L_.str.717:                             ## @.str.717
	.asciz	"gray93"

L_.str.718:                             ## @.str.718
	.asciz	"grey93"

L_.str.719:                             ## @.str.719
	.asciz	"gray94"

L_.str.720:                             ## @.str.720
	.asciz	"grey94"

L_.str.721:                             ## @.str.721
	.asciz	"gray95"

L_.str.722:                             ## @.str.722
	.asciz	"grey95"

L_.str.723:                             ## @.str.723
	.asciz	"gray96"

L_.str.724:                             ## @.str.724
	.asciz	"grey96"

L_.str.725:                             ## @.str.725
	.asciz	"gray97"

L_.str.726:                             ## @.str.726
	.asciz	"grey97"

L_.str.727:                             ## @.str.727
	.asciz	"gray98"

L_.str.728:                             ## @.str.728
	.asciz	"grey98"

L_.str.729:                             ## @.str.729
	.asciz	"gray99"

L_.str.730:                             ## @.str.730
	.asciz	"grey99"

L_.str.731:                             ## @.str.731
	.asciz	"gray100"

L_.str.732:                             ## @.str.732
	.asciz	"grey100"

L_.str.733:                             ## @.str.733
	.asciz	"dark grey"

L_.str.734:                             ## @.str.734
	.asciz	"darkgrey"

L_.str.735:                             ## @.str.735
	.asciz	"dark gray"

L_.str.736:                             ## @.str.736
	.asciz	"darkgray"

L_.str.737:                             ## @.str.737
	.asciz	"dark blue"

L_.str.738:                             ## @.str.738
	.asciz	"darkblue"

L_.str.739:                             ## @.str.739
	.asciz	"dark cyan"

L_.str.740:                             ## @.str.740
	.asciz	"darkcyan"

L_.str.741:                             ## @.str.741
	.asciz	"dark magenta"

L_.str.742:                             ## @.str.742
	.asciz	"darkmagenta"

L_.str.743:                             ## @.str.743
	.asciz	"dark red"

L_.str.744:                             ## @.str.744
	.asciz	"darkred"

L_.str.745:                             ## @.str.745
	.asciz	"light green"

L_.str.746:                             ## @.str.746
	.asciz	"lightgreen"

L_.str.747:                             ## @.str.747
	.asciz	"none"

	.section	__DATA,__data
	.globl	_mlx_col_name           ## @mlx_col_name
	.p2align	4
_mlx_col_name:
	.quad	L_.str
	.long	16775930                ## 0xfffafa
	.space	4
	.quad	L_.str.1
	.long	16316671                ## 0xf8f8ff
	.space	4
	.quad	L_.str.2
	.long	16316671                ## 0xf8f8ff
	.space	4
	.quad	L_.str.3
	.long	16119285                ## 0xf5f5f5
	.space	4
	.quad	L_.str.4
	.long	16119285                ## 0xf5f5f5
	.space	4
	.quad	L_.str.5
	.long	14474460                ## 0xdcdcdc
	.space	4
	.quad	L_.str.6
	.long	16775920                ## 0xfffaf0
	.space	4
	.quad	L_.str.7
	.long	16775920                ## 0xfffaf0
	.space	4
	.quad	L_.str.8
	.long	16643558                ## 0xfdf5e6
	.space	4
	.quad	L_.str.9
	.long	16643558                ## 0xfdf5e6
	.space	4
	.quad	L_.str.10
	.long	16445670                ## 0xfaf0e6
	.space	4
	.quad	L_.str.11
	.long	16444375                ## 0xfaebd7
	.space	4
	.quad	L_.str.12
	.long	16444375                ## 0xfaebd7
	.space	4
	.quad	L_.str.13
	.long	16773077                ## 0xffefd5
	.space	4
	.quad	L_.str.14
	.long	16773077                ## 0xffefd5
	.space	4
	.quad	L_.str.15
	.long	16772045                ## 0xffebcd
	.space	4
	.quad	L_.str.16
	.long	16772045                ## 0xffebcd
	.space	4
	.quad	L_.str.17
	.long	16770244                ## 0xffe4c4
	.space	4
	.quad	L_.str.18
	.long	16767673                ## 0xffdab9
	.space	4
	.quad	L_.str.19
	.long	16767673                ## 0xffdab9
	.space	4
	.quad	L_.str.20
	.long	16768685                ## 0xffdead
	.space	4
	.quad	L_.str.21
	.long	16768685                ## 0xffdead
	.space	4
	.quad	L_.str.22
	.long	16770229                ## 0xffe4b5
	.space	4
	.quad	L_.str.23
	.long	16775388                ## 0xfff8dc
	.space	4
	.quad	L_.str.24
	.long	16777200                ## 0xfffff0
	.space	4
	.quad	L_.str.25
	.long	16775885                ## 0xfffacd
	.space	4
	.quad	L_.str.26
	.long	16775885                ## 0xfffacd
	.space	4
	.quad	L_.str.27
	.long	16774638                ## 0xfff5ee
	.space	4
	.quad	L_.str.28
	.long	15794160                ## 0xf0fff0
	.space	4
	.quad	L_.str.29
	.long	16121850                ## 0xf5fffa
	.space	4
	.quad	L_.str.30
	.long	16121850                ## 0xf5fffa
	.space	4
	.quad	L_.str.31
	.long	15794175                ## 0xf0ffff
	.space	4
	.quad	L_.str.32
	.long	15792383                ## 0xf0f8ff
	.space	4
	.quad	L_.str.33
	.long	15792383                ## 0xf0f8ff
	.space	4
	.quad	L_.str.34
	.long	15132410                ## 0xe6e6fa
	.space	4
	.quad	L_.str.35
	.long	16773365                ## 0xfff0f5
	.space	4
	.quad	L_.str.36
	.long	16773365                ## 0xfff0f5
	.space	4
	.quad	L_.str.37
	.long	16770273                ## 0xffe4e1
	.space	4
	.quad	L_.str.38
	.long	16770273                ## 0xffe4e1
	.space	4
	.quad	L_.str.39
	.long	16777215                ## 0xffffff
	.space	4
	.quad	L_.str.40
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.41
	.long	3100495                 ## 0x2f4f4f
	.space	4
	.quad	L_.str.42
	.long	3100495                 ## 0x2f4f4f
	.space	4
	.quad	L_.str.41
	.long	3100495                 ## 0x2f4f4f
	.space	4
	.quad	L_.str.43
	.long	3100495                 ## 0x2f4f4f
	.space	4
	.quad	L_.str.44
	.long	6908265                 ## 0x696969
	.space	4
	.quad	L_.str.45
	.long	6908265                 ## 0x696969
	.space	4
	.quad	L_.str.46
	.long	6908265                 ## 0x696969
	.space	4
	.quad	L_.str.47
	.long	6908265                 ## 0x696969
	.space	4
	.quad	L_.str.48
	.long	7372944                 ## 0x708090
	.space	4
	.quad	L_.str.49
	.long	7372944                 ## 0x708090
	.space	4
	.quad	L_.str.50
	.long	7372944                 ## 0x708090
	.space	4
	.quad	L_.str.51
	.long	7372944                 ## 0x708090
	.space	4
	.quad	L_.str.52
	.long	7833753                 ## 0x778899
	.space	4
	.quad	L_.str.53
	.long	7833753                 ## 0x778899
	.space	4
	.quad	L_.str.52
	.long	7833753                 ## 0x778899
	.space	4
	.quad	L_.str.54
	.long	7833753                 ## 0x778899
	.space	4
	.quad	L_.str.55
	.long	12500670                ## 0xbebebe
	.space	4
	.quad	L_.str.56
	.long	12500670                ## 0xbebebe
	.space	4
	.quad	L_.str.57
	.long	13882323                ## 0xd3d3d3
	.space	4
	.quad	L_.str.58
	.long	13882323                ## 0xd3d3d3
	.space	4
	.quad	L_.str.59
	.long	13882323                ## 0xd3d3d3
	.space	4
	.quad	L_.str.60
	.long	13882323                ## 0xd3d3d3
	.space	4
	.quad	L_.str.61
	.long	1644912                 ## 0x191970
	.space	4
	.quad	L_.str.62
	.long	1644912                 ## 0x191970
	.space	4
	.quad	L_.str.63
	.long	128                     ## 0x80
	.space	4
	.quad	L_.str.64
	.long	128                     ## 0x80
	.space	4
	.quad	L_.str.65
	.long	128                     ## 0x80
	.space	4
	.quad	L_.str.66
	.long	6591981                 ## 0x6495ed
	.space	4
	.quad	L_.str.67
	.long	6591981                 ## 0x6495ed
	.space	4
	.quad	L_.str.41
	.long	4734347                 ## 0x483d8b
	.space	4
	.quad	L_.str.68
	.long	4734347                 ## 0x483d8b
	.space	4
	.quad	L_.str.69
	.long	6970061                 ## 0x6a5acd
	.space	4
	.quad	L_.str.70
	.long	6970061                 ## 0x6a5acd
	.space	4
	.quad	L_.str.71
	.long	8087790                 ## 0x7b68ee
	.space	4
	.quad	L_.str.72
	.long	8087790                 ## 0x7b68ee
	.space	4
	.quad	L_.str.52
	.long	8679679                 ## 0x8470ff
	.space	4
	.quad	L_.str.73
	.long	8679679                 ## 0x8470ff
	.space	4
	.quad	L_.str.74
	.long	205                     ## 0xcd
	.space	4
	.quad	L_.str.75
	.long	205                     ## 0xcd
	.space	4
	.quad	L_.str.76
	.long	4286945                 ## 0x4169e1
	.space	4
	.quad	L_.str.77
	.long	4286945                 ## 0x4169e1
	.space	4
	.quad	L_.str.78
	.long	255                     ## 0xff
	.space	4
	.quad	L_.str.79
	.long	2003199                 ## 0x1e90ff
	.space	4
	.quad	L_.str.80
	.long	2003199                 ## 0x1e90ff
	.space	4
	.quad	L_.str.81
	.long	49151                   ## 0xbfff
	.space	4
	.quad	L_.str.82
	.long	49151                   ## 0xbfff
	.space	4
	.quad	L_.str.83
	.long	8900331                 ## 0x87ceeb
	.space	4
	.quad	L_.str.84
	.long	8900331                 ## 0x87ceeb
	.space	4
	.quad	L_.str.85
	.long	8900346                 ## 0x87cefa
	.space	4
	.quad	L_.str.86
	.long	8900346                 ## 0x87cefa
	.space	4
	.quad	L_.str.87
	.long	4620980                 ## 0x4682b4
	.space	4
	.quad	L_.str.88
	.long	4620980                 ## 0x4682b4
	.space	4
	.quad	L_.str.89
	.long	11584734                ## 0xb0c4de
	.space	4
	.quad	L_.str.90
	.long	11584734                ## 0xb0c4de
	.space	4
	.quad	L_.str.91
	.long	11393254                ## 0xadd8e6
	.space	4
	.quad	L_.str.92
	.long	11393254                ## 0xadd8e6
	.space	4
	.quad	L_.str.93
	.long	11591910                ## 0xb0e0e6
	.space	4
	.quad	L_.str.94
	.long	11591910                ## 0xb0e0e6
	.space	4
	.quad	L_.str.95
	.long	11529966                ## 0xafeeee
	.space	4
	.quad	L_.str.96
	.long	11529966                ## 0xafeeee
	.space	4
	.quad	L_.str.97
	.long	52945                   ## 0xced1
	.space	4
	.quad	L_.str.98
	.long	52945                   ## 0xced1
	.space	4
	.quad	L_.str.99
	.long	4772300                 ## 0x48d1cc
	.space	4
	.quad	L_.str.100
	.long	4772300                 ## 0x48d1cc
	.space	4
	.quad	L_.str.101
	.long	4251856                 ## 0x40e0d0
	.space	4
	.quad	L_.str.102
	.long	65535                   ## 0xffff
	.space	4
	.quad	L_.str.103
	.long	14745599                ## 0xe0ffff
	.space	4
	.quad	L_.str.104
	.long	14745599                ## 0xe0ffff
	.space	4
	.quad	L_.str.105
	.long	6266528                 ## 0x5f9ea0
	.space	4
	.quad	L_.str.106
	.long	6266528                 ## 0x5f9ea0
	.space	4
	.quad	L_.str.107
	.long	6737322                 ## 0x66cdaa
	.space	4
	.quad	L_.str.108
	.long	6737322                 ## 0x66cdaa
	.space	4
	.quad	L_.str.109
	.long	8388564                 ## 0x7fffd4
	.space	4
	.quad	L_.str.110
	.long	25600                   ## 0x6400
	.space	4
	.quad	L_.str.111
	.long	25600                   ## 0x6400
	.space	4
	.quad	L_.str.112
	.long	5597999                 ## 0x556b2f
	.space	4
	.quad	L_.str.113
	.long	5597999                 ## 0x556b2f
	.space	4
	.quad	L_.str.114
	.long	9419919                 ## 0x8fbc8f
	.space	4
	.quad	L_.str.115
	.long	9419919                 ## 0x8fbc8f
	.space	4
	.quad	L_.str.116
	.long	3050327                 ## 0x2e8b57
	.space	4
	.quad	L_.str.117
	.long	3050327                 ## 0x2e8b57
	.space	4
	.quad	L_.str.118
	.long	3978097                 ## 0x3cb371
	.space	4
	.quad	L_.str.119
	.long	3978097                 ## 0x3cb371
	.space	4
	.quad	L_.str.120
	.long	2142890                 ## 0x20b2aa
	.space	4
	.quad	L_.str.121
	.long	2142890                 ## 0x20b2aa
	.space	4
	.quad	L_.str.122
	.long	10025880                ## 0x98fb98
	.space	4
	.quad	L_.str.123
	.long	10025880                ## 0x98fb98
	.space	4
	.quad	L_.str.124
	.long	65407                   ## 0xff7f
	.space	4
	.quad	L_.str.125
	.long	65407                   ## 0xff7f
	.space	4
	.quad	L_.str.126
	.long	8190976                 ## 0x7cfc00
	.space	4
	.quad	L_.str.127
	.long	8190976                 ## 0x7cfc00
	.space	4
	.quad	L_.str.128
	.long	65280                   ## 0xff00
	.space	4
	.quad	L_.str.129
	.long	8388352                 ## 0x7fff00
	.space	4
	.quad	L_.str.130
	.long	64154                   ## 0xfa9a
	.space	4
	.quad	L_.str.131
	.long	64154                   ## 0xfa9a
	.space	4
	.quad	L_.str.132
	.long	11403055                ## 0xadff2f
	.space	4
	.quad	L_.str.133
	.long	11403055                ## 0xadff2f
	.space	4
	.quad	L_.str.134
	.long	3329330                 ## 0x32cd32
	.space	4
	.quad	L_.str.135
	.long	3329330                 ## 0x32cd32
	.space	4
	.quad	L_.str.136
	.long	10145074                ## 0x9acd32
	.space	4
	.quad	L_.str.137
	.long	10145074                ## 0x9acd32
	.space	4
	.quad	L_.str.138
	.long	2263842                 ## 0x228b22
	.space	4
	.quad	L_.str.139
	.long	2263842                 ## 0x228b22
	.space	4
	.quad	L_.str.140
	.long	7048739                 ## 0x6b8e23
	.space	4
	.quad	L_.str.141
	.long	7048739                 ## 0x6b8e23
	.space	4
	.quad	L_.str.142
	.long	12433259                ## 0xbdb76b
	.space	4
	.quad	L_.str.143
	.long	12433259                ## 0xbdb76b
	.space	4
	.quad	L_.str.144
	.long	15787660                ## 0xf0e68c
	.space	4
	.quad	L_.str.145
	.long	15657130                ## 0xeee8aa
	.space	4
	.quad	L_.str.146
	.long	15657130                ## 0xeee8aa
	.space	4
	.quad	L_.str.147
	.long	16448210                ## 0xfafad2
	.space	4
	.quad	L_.str.148
	.long	16448210                ## 0xfafad2
	.space	4
	.quad	L_.str.149
	.long	16777184                ## 0xffffe0
	.space	4
	.quad	L_.str.150
	.long	16777184                ## 0xffffe0
	.space	4
	.quad	L_.str.151
	.long	16776960                ## 0xffff00
	.space	4
	.quad	L_.str.152
	.long	16766720                ## 0xffd700
	.space	4
	.quad	L_.str.147
	.long	15654274                ## 0xeedd82
	.space	4
	.quad	L_.str.153
	.long	15654274                ## 0xeedd82
	.space	4
	.quad	L_.str.154
	.long	14329120                ## 0xdaa520
	.space	4
	.quad	L_.str.155
	.long	12092939                ## 0xb8860b
	.space	4
	.quad	L_.str.156
	.long	12092939                ## 0xb8860b
	.space	4
	.quad	L_.str.157
	.long	12357519                ## 0xbc8f8f
	.space	4
	.quad	L_.str.158
	.long	12357519                ## 0xbc8f8f
	.space	4
	.quad	L_.str.159
	.long	13458524                ## 0xcd5c5c
	.space	4
	.quad	L_.str.160
	.long	13458524                ## 0xcd5c5c
	.space	4
	.quad	L_.str.161
	.long	9127187                 ## 0x8b4513
	.space	4
	.quad	L_.str.162
	.long	9127187                 ## 0x8b4513
	.space	4
	.quad	L_.str.163
	.long	10506797                ## 0xa0522d
	.space	4
	.quad	L_.str.164
	.long	13468991                ## 0xcd853f
	.space	4
	.quad	L_.str.165
	.long	14596231                ## 0xdeb887
	.space	4
	.quad	L_.str.166
	.long	16119260                ## 0xf5f5dc
	.space	4
	.quad	L_.str.167
	.long	16113331                ## 0xf5deb3
	.space	4
	.quad	L_.str.168
	.long	16032864                ## 0xf4a460
	.space	4
	.quad	L_.str.169
	.long	16032864                ## 0xf4a460
	.space	4
	.quad	L_.str.170
	.long	13808780                ## 0xd2b48c
	.space	4
	.quad	L_.str.171
	.long	13789470                ## 0xd2691e
	.space	4
	.quad	L_.str.172
	.long	11674146                ## 0xb22222
	.space	4
	.quad	L_.str.173
	.long	10824234                ## 0xa52a2a
	.space	4
	.quad	L_.str.174
	.long	15308410                ## 0xe9967a
	.space	4
	.quad	L_.str.175
	.long	15308410                ## 0xe9967a
	.space	4
	.quad	L_.str.176
	.long	16416882                ## 0xfa8072
	.space	4
	.quad	L_.str.177
	.long	16752762                ## 0xffa07a
	.space	4
	.quad	L_.str.178
	.long	16752762                ## 0xffa07a
	.space	4
	.quad	L_.str.179
	.long	16753920                ## 0xffa500
	.space	4
	.quad	L_.str.180
	.long	16747520                ## 0xff8c00
	.space	4
	.quad	L_.str.181
	.long	16747520                ## 0xff8c00
	.space	4
	.quad	L_.str.182
	.long	16744272                ## 0xff7f50
	.space	4
	.quad	L_.str.183
	.long	15761536                ## 0xf08080
	.space	4
	.quad	L_.str.184
	.long	15761536                ## 0xf08080
	.space	4
	.quad	L_.str.185
	.long	16737095                ## 0xff6347
	.space	4
	.quad	L_.str.186
	.long	16729344                ## 0xff4500
	.space	4
	.quad	L_.str.187
	.long	16729344                ## 0xff4500
	.space	4
	.quad	L_.str.188
	.long	16711680                ## 0xff0000
	.space	4
	.quad	L_.str.189
	.long	16738740                ## 0xff69b4
	.space	4
	.quad	L_.str.190
	.long	16738740                ## 0xff69b4
	.space	4
	.quad	L_.str.191
	.long	16716947                ## 0xff1493
	.space	4
	.quad	L_.str.192
	.long	16716947                ## 0xff1493
	.space	4
	.quad	L_.str.193
	.long	16761035                ## 0xffc0cb
	.space	4
	.quad	L_.str.194
	.long	16758465                ## 0xffb6c1
	.space	4
	.quad	L_.str.195
	.long	16758465                ## 0xffb6c1
	.space	4
	.quad	L_.str.196
	.long	14381203                ## 0xdb7093
	.space	4
	.quad	L_.str.197
	.long	14381203                ## 0xdb7093
	.space	4
	.quad	L_.str.198
	.long	11546720                ## 0xb03060
	.space	4
	.quad	L_.str.199
	.long	13047173                ## 0xc71585
	.space	4
	.quad	L_.str.200
	.long	13047173                ## 0xc71585
	.space	4
	.quad	L_.str.201
	.long	13639824                ## 0xd02090
	.space	4
	.quad	L_.str.202
	.long	13639824                ## 0xd02090
	.space	4
	.quad	L_.str.203
	.long	16711935                ## 0xff00ff
	.space	4
	.quad	L_.str.204
	.long	15631086                ## 0xee82ee
	.space	4
	.quad	L_.str.205
	.long	14524637                ## 0xdda0dd
	.space	4
	.quad	L_.str.206
	.long	14315734                ## 0xda70d6
	.space	4
	.quad	L_.str.207
	.long	12211667                ## 0xba55d3
	.space	4
	.quad	L_.str.208
	.long	12211667                ## 0xba55d3
	.space	4
	.quad	L_.str.209
	.long	10040012                ## 0x9932cc
	.space	4
	.quad	L_.str.210
	.long	10040012                ## 0x9932cc
	.space	4
	.quad	L_.str.211
	.long	9699539                 ## 0x9400d3
	.space	4
	.quad	L_.str.212
	.long	9699539                 ## 0x9400d3
	.space	4
	.quad	L_.str.213
	.long	9055202                 ## 0x8a2be2
	.space	4
	.quad	L_.str.214
	.long	9055202                 ## 0x8a2be2
	.space	4
	.quad	L_.str.215
	.long	10494192                ## 0xa020f0
	.space	4
	.quad	L_.str.216
	.long	9662683                 ## 0x9370db
	.space	4
	.quad	L_.str.217
	.long	9662683                 ## 0x9370db
	.space	4
	.quad	L_.str.218
	.long	14204888                ## 0xd8bfd8
	.space	4
	.quad	L_.str.219
	.long	16775930                ## 0xfffafa
	.space	4
	.quad	L_.str.220
	.long	15657449                ## 0xeee9e9
	.space	4
	.quad	L_.str.221
	.long	13486537                ## 0xcdc9c9
	.space	4
	.quad	L_.str.222
	.long	9144713                 ## 0x8b8989
	.space	4
	.quad	L_.str.223
	.long	16774638                ## 0xfff5ee
	.space	4
	.quad	L_.str.224
	.long	15656414                ## 0xeee5de
	.space	4
	.quad	L_.str.225
	.long	13485503                ## 0xcdc5bf
	.space	4
	.quad	L_.str.226
	.long	9143938                 ## 0x8b8682
	.space	4
	.quad	L_.str.227
	.long	16773083                ## 0xffefdb
	.space	4
	.quad	L_.str.228
	.long	15654860                ## 0xeedfcc
	.space	4
	.quad	L_.str.229
	.long	13484208                ## 0xcdc0b0
	.space	4
	.quad	L_.str.230
	.long	9143160                 ## 0x8b8378
	.space	4
	.quad	L_.str.231
	.long	16770244                ## 0xffe4c4
	.space	4
	.quad	L_.str.232
	.long	15652279                ## 0xeed5b7
	.space	4
	.quad	L_.str.233
	.long	13481886                ## 0xcdb79e
	.space	4
	.quad	L_.str.234
	.long	9141611                 ## 0x8b7d6b
	.space	4
	.quad	L_.str.235
	.long	16767673                ## 0xffdab9
	.space	4
	.quad	L_.str.236
	.long	15649709                ## 0xeecbad
	.space	4
	.quad	L_.str.237
	.long	13479829                ## 0xcdaf95
	.space	4
	.quad	L_.str.238
	.long	9140069                 ## 0x8b7765
	.space	4
	.quad	L_.str.239
	.long	16768685                ## 0xffdead
	.space	4
	.quad	L_.str.240
	.long	15650721                ## 0xeecfa1
	.space	4
	.quad	L_.str.241
	.long	13480843                ## 0xcdb38b
	.space	4
	.quad	L_.str.242
	.long	9140574                 ## 0x8b795e
	.space	4
	.quad	L_.str.243
	.long	16775885                ## 0xfffacd
	.space	4
	.quad	L_.str.244
	.long	15657407                ## 0xeee9bf
	.space	4
	.quad	L_.str.245
	.long	13486501                ## 0xcdc9a5
	.space	4
	.quad	L_.str.246
	.long	9144688                 ## 0x8b8970
	.space	4
	.quad	L_.str.247
	.long	16775388                ## 0xfff8dc
	.space	4
	.quad	L_.str.248
	.long	15657165                ## 0xeee8cd
	.space	4
	.quad	L_.str.249
	.long	13486257                ## 0xcdc8b1
	.space	4
	.quad	L_.str.250
	.long	9144440                 ## 0x8b8878
	.space	4
	.quad	L_.str.251
	.long	16777200                ## 0xfffff0
	.space	4
	.quad	L_.str.252
	.long	15658720                ## 0xeeeee0
	.space	4
	.quad	L_.str.253
	.long	13487553                ## 0xcdcdc1
	.space	4
	.quad	L_.str.254
	.long	9145219                 ## 0x8b8b83
	.space	4
	.quad	L_.str.255
	.long	15794160                ## 0xf0fff0
	.space	4
	.quad	L_.str.256
	.long	14741216                ## 0xe0eee0
	.space	4
	.quad	L_.str.257
	.long	12701121                ## 0xc1cdc1
	.space	4
	.quad	L_.str.258
	.long	8620931                 ## 0x838b83
	.space	4
	.quad	L_.str.259
	.long	16773365                ## 0xfff0f5
	.space	4
	.quad	L_.str.260
	.long	15655141                ## 0xeee0e5
	.space	4
	.quad	L_.str.261
	.long	13484485                ## 0xcdc1c5
	.space	4
	.quad	L_.str.262
	.long	9143174                 ## 0x8b8386
	.space	4
	.quad	L_.str.263
	.long	16770273                ## 0xffe4e1
	.space	4
	.quad	L_.str.264
	.long	15652306                ## 0xeed5d2
	.space	4
	.quad	L_.str.265
	.long	13481909                ## 0xcdb7b5
	.space	4
	.quad	L_.str.266
	.long	9141627                 ## 0x8b7d7b
	.space	4
	.quad	L_.str.267
	.long	15794175                ## 0xf0ffff
	.space	4
	.quad	L_.str.268
	.long	14741230                ## 0xe0eeee
	.space	4
	.quad	L_.str.269
	.long	12701133                ## 0xc1cdcd
	.space	4
	.quad	L_.str.270
	.long	8620939                 ## 0x838b8b
	.space	4
	.quad	L_.str.271
	.long	8613887                 ## 0x836fff
	.space	4
	.quad	L_.str.272
	.long	8021998                 ## 0x7a67ee
	.space	4
	.quad	L_.str.273
	.long	6904269                 ## 0x6959cd
	.space	4
	.quad	L_.str.274
	.long	4668555                 ## 0x473c8b
	.space	4
	.quad	L_.str.275
	.long	4749055                 ## 0x4876ff
	.space	4
	.quad	L_.str.276
	.long	4419310                 ## 0x436eee
	.space	4
	.quad	L_.str.277
	.long	3825613                 ## 0x3a5fcd
	.space	4
	.quad	L_.str.278
	.long	2572427                 ## 0x27408b
	.space	4
	.quad	L_.str.279
	.long	255                     ## 0xff
	.space	4
	.quad	L_.str.280
	.long	238                     ## 0xee
	.space	4
	.quad	L_.str.281
	.long	205                     ## 0xcd
	.space	4
	.quad	L_.str.282
	.long	139                     ## 0x8b
	.space	4
	.quad	L_.str.283
	.long	2003199                 ## 0x1e90ff
	.space	4
	.quad	L_.str.284
	.long	1869550                 ## 0x1c86ee
	.space	4
	.quad	L_.str.285
	.long	1602765                 ## 0x1874cd
	.space	4
	.quad	L_.str.286
	.long	1068683                 ## 0x104e8b
	.space	4
	.quad	L_.str.287
	.long	6535423                 ## 0x63b8ff
	.space	4
	.quad	L_.str.288
	.long	6073582                 ## 0x5cacee
	.space	4
	.quad	L_.str.289
	.long	5215437                 ## 0x4f94cd
	.space	4
	.quad	L_.str.290
	.long	3564683                 ## 0x36648b
	.space	4
	.quad	L_.str.291
	.long	49151                   ## 0xbfff
	.space	4
	.quad	L_.str.292
	.long	45806                   ## 0xb2ee
	.space	4
	.quad	L_.str.293
	.long	39629                   ## 0x9acd
	.space	4
	.quad	L_.str.294
	.long	26763                   ## 0x688b
	.space	4
	.quad	L_.str.295
	.long	8900351                 ## 0x87ceff
	.space	4
	.quad	L_.str.296
	.long	8306926                 ## 0x7ec0ee
	.space	4
	.quad	L_.str.297
	.long	7120589                 ## 0x6ca6cd
	.space	4
	.quad	L_.str.298
	.long	4878475                 ## 0x4a708b
	.space	4
	.quad	L_.str.299
	.long	11592447                ## 0xb0e2ff
	.space	4
	.quad	L_.str.300
	.long	10802158                ## 0xa4d3ee
	.space	4
	.quad	L_.str.301
	.long	9287373                 ## 0x8db6cd
	.space	4
	.quad	L_.str.302
	.long	6323083                 ## 0x607b8b
	.space	4
	.quad	L_.str.303
	.long	13034239                ## 0xc6e2ff
	.space	4
	.quad	L_.str.304
	.long	12178414                ## 0xb9d3ee
	.space	4
	.quad	L_.str.305
	.long	10467021                ## 0x9fb6cd
	.space	4
	.quad	L_.str.306
	.long	7109515                 ## 0x6c7b8b
	.space	4
	.quad	L_.str.307
	.long	13296127                ## 0xcae1ff
	.space	4
	.quad	L_.str.308
	.long	12374766                ## 0xbcd2ee
	.space	4
	.quad	L_.str.309
	.long	10663373                ## 0xa2b5cd
	.space	4
	.quad	L_.str.310
	.long	7240587                 ## 0x6e7b8b
	.space	4
	.quad	L_.str.311
	.long	12578815                ## 0xbfefff
	.space	4
	.quad	L_.str.312
	.long	11722734                ## 0xb2dfee
	.space	4
	.quad	L_.str.313
	.long	10141901                ## 0x9ac0cd
	.space	4
	.quad	L_.str.314
	.long	6849419                 ## 0x68838b
	.space	4
	.quad	L_.str.315
	.long	14745599                ## 0xe0ffff
	.space	4
	.quad	L_.str.316
	.long	13758190                ## 0xd1eeee
	.space	4
	.quad	L_.str.317
	.long	11849165                ## 0xb4cdcd
	.space	4
	.quad	L_.str.318
	.long	8031115                 ## 0x7a8b8b
	.space	4
	.quad	L_.str.319
	.long	12320767                ## 0xbbffff
	.space	4
	.quad	L_.str.320
	.long	11464430                ## 0xaeeeee
	.space	4
	.quad	L_.str.321
	.long	9883085                 ## 0x96cdcd
	.space	4
	.quad	L_.str.322
	.long	6720395                 ## 0x668b8b
	.space	4
	.quad	L_.str.323
	.long	10024447                ## 0x98f5ff
	.space	4
	.quad	L_.str.324
	.long	9364974                 ## 0x8ee5ee
	.space	4
	.quad	L_.str.325
	.long	8046029                 ## 0x7ac5cd
	.space	4
	.quad	L_.str.326
	.long	5473931                 ## 0x53868b
	.space	4
	.quad	L_.str.327
	.long	62975                   ## 0xf5ff
	.space	4
	.quad	L_.str.328
	.long	58862                   ## 0xe5ee
	.space	4
	.quad	L_.str.329
	.long	50637                   ## 0xc5cd
	.space	4
	.quad	L_.str.330
	.long	34443                   ## 0x868b
	.space	4
	.quad	L_.str.331
	.long	65535                   ## 0xffff
	.space	4
	.quad	L_.str.332
	.long	61166                   ## 0xeeee
	.space	4
	.quad	L_.str.333
	.long	52685                   ## 0xcdcd
	.space	4
	.quad	L_.str.334
	.long	35723                   ## 0x8b8b
	.space	4
	.quad	L_.str.335
	.long	9961471                 ## 0x97ffff
	.space	4
	.quad	L_.str.336
	.long	9301742                 ## 0x8deeee
	.space	4
	.quad	L_.str.337
	.long	7982541                 ## 0x79cdcd
	.space	4
	.quad	L_.str.338
	.long	5409675                 ## 0x528b8b
	.space	4
	.quad	L_.str.339
	.long	8388564                 ## 0x7fffd4
	.space	4
	.quad	L_.str.340
	.long	7794374                 ## 0x76eec6
	.space	4
	.quad	L_.str.341
	.long	6737322                 ## 0x66cdaa
	.space	4
	.quad	L_.str.342
	.long	4557684                 ## 0x458b74
	.space	4
	.quad	L_.str.343
	.long	12713921                ## 0xc1ffc1
	.space	4
	.quad	L_.str.344
	.long	11857588                ## 0xb4eeb4
	.space	4
	.quad	L_.str.345
	.long	10210715                ## 0x9bcd9b
	.space	4
	.quad	L_.str.346
	.long	6916969                 ## 0x698b69
	.space	4
	.quad	L_.str.347
	.long	5570463                 ## 0x54ff9f
	.space	4
	.quad	L_.str.348
	.long	5172884                 ## 0x4eee94
	.space	4
	.quad	L_.str.349
	.long	4443520                 ## 0x43cd80
	.space	4
	.quad	L_.str.350
	.long	3050327                 ## 0x2e8b57
	.space	4
	.quad	L_.str.351
	.long	10157978                ## 0x9aff9a
	.space	4
	.quad	L_.str.352
	.long	9498256                 ## 0x90ee90
	.space	4
	.quad	L_.str.353
	.long	8179068                 ## 0x7ccd7c
	.space	4
	.quad	L_.str.354
	.long	5540692                 ## 0x548b54
	.space	4
	.quad	L_.str.355
	.long	65407                   ## 0xff7f
	.space	4
	.quad	L_.str.356
	.long	61046                   ## 0xee76
	.space	4
	.quad	L_.str.357
	.long	52582                   ## 0xcd66
	.space	4
	.quad	L_.str.358
	.long	35653                   ## 0x8b45
	.space	4
	.quad	L_.str.359
	.long	65280                   ## 0xff00
	.space	4
	.quad	L_.str.360
	.long	60928                   ## 0xee00
	.space	4
	.quad	L_.str.361
	.long	52480                   ## 0xcd00
	.space	4
	.quad	L_.str.362
	.long	35584                   ## 0x8b00
	.space	4
	.quad	L_.str.363
	.long	8388352                 ## 0x7fff00
	.space	4
	.quad	L_.str.364
	.long	7794176                 ## 0x76ee00
	.space	4
	.quad	L_.str.365
	.long	6737152                 ## 0x66cd00
	.space	4
	.quad	L_.str.366
	.long	4557568                 ## 0x458b00
	.space	4
	.quad	L_.str.367
	.long	12648254                ## 0xc0ff3e
	.space	4
	.quad	L_.str.368
	.long	11791930                ## 0xb3ee3a
	.space	4
	.quad	L_.str.369
	.long	10145074                ## 0x9acd32
	.space	4
	.quad	L_.str.370
	.long	6916898                 ## 0x698b22
	.space	4
	.quad	L_.str.371
	.long	13303664                ## 0xcaff70
	.space	4
	.quad	L_.str.372
	.long	12381800                ## 0xbcee68
	.space	4
	.quad	L_.str.373
	.long	10669402                ## 0xa2cd5a
	.space	4
	.quad	L_.str.374
	.long	7244605                 ## 0x6e8b3d
	.space	4
	.quad	L_.str.375
	.long	16774799                ## 0xfff68f
	.space	4
	.quad	L_.str.376
	.long	15656581                ## 0xeee685
	.space	4
	.quad	L_.str.377
	.long	13485683                ## 0xcdc673
	.space	4
	.quad	L_.str.378
	.long	9143886                 ## 0x8b864e
	.space	4
	.quad	L_.str.379
	.long	16772235                ## 0xffec8b
	.space	4
	.quad	L_.str.380
	.long	15654018                ## 0xeedc82
	.space	4
	.quad	L_.str.381
	.long	13483632                ## 0xcdbe70
	.space	4
	.quad	L_.str.382
	.long	9142604                 ## 0x8b814c
	.space	4
	.quad	L_.str.383
	.long	16777184                ## 0xffffe0
	.space	4
	.quad	L_.str.384
	.long	15658705                ## 0xeeeed1
	.space	4
	.quad	L_.str.385
	.long	13487540                ## 0xcdcdb4
	.space	4
	.quad	L_.str.386
	.long	9145210                 ## 0x8b8b7a
	.space	4
	.quad	L_.str.387
	.long	16776960                ## 0xffff00
	.space	4
	.quad	L_.str.388
	.long	15658496                ## 0xeeee00
	.space	4
	.quad	L_.str.389
	.long	13487360                ## 0xcdcd00
	.space	4
	.quad	L_.str.390
	.long	9145088                 ## 0x8b8b00
	.space	4
	.quad	L_.str.391
	.long	16766720                ## 0xffd700
	.space	4
	.quad	L_.str.392
	.long	15649024                ## 0xeec900
	.space	4
	.quad	L_.str.393
	.long	13479168                ## 0xcdad00
	.space	4
	.quad	L_.str.394
	.long	9139456                 ## 0x8b7500
	.space	4
	.quad	L_.str.395
	.long	16761125                ## 0xffc125
	.space	4
	.quad	L_.str.396
	.long	15643682                ## 0xeeb422
	.space	4
	.quad	L_.str.397
	.long	13474589                ## 0xcd9b1d
	.space	4
	.quad	L_.str.398
	.long	9136404                 ## 0x8b6914
	.space	4
	.quad	L_.str.399
	.long	16759055                ## 0xffb90f
	.space	4
	.quad	L_.str.400
	.long	15641870                ## 0xeead0e
	.space	4
	.quad	L_.str.401
	.long	13473036                ## 0xcd950c
	.space	4
	.quad	L_.str.402
	.long	9135368                 ## 0x8b6508
	.space	4
	.quad	L_.str.403
	.long	16761281                ## 0xffc1c1
	.space	4
	.quad	L_.str.404
	.long	15643828                ## 0xeeb4b4
	.space	4
	.quad	L_.str.405
	.long	13474715                ## 0xcd9b9b
	.space	4
	.quad	L_.str.406
	.long	9136489                 ## 0x8b6969
	.space	4
	.quad	L_.str.407
	.long	16738922                ## 0xff6a6a
	.space	4
	.quad	L_.str.408
	.long	15623011                ## 0xee6363
	.space	4
	.quad	L_.str.409
	.long	13456725                ## 0xcd5555
	.space	4
	.quad	L_.str.410
	.long	9124410                 ## 0x8b3a3a
	.space	4
	.quad	L_.str.411
	.long	16745031                ## 0xff8247
	.space	4
	.quad	L_.str.412
	.long	15628610                ## 0xee7942
	.space	4
	.quad	L_.str.413
	.long	13461561                ## 0xcd6839
	.space	4
	.quad	L_.str.414
	.long	9127718                 ## 0x8b4726
	.space	4
	.quad	L_.str.415
	.long	16765851                ## 0xffd39b
	.space	4
	.quad	L_.str.416
	.long	15648145                ## 0xeec591
	.space	4
	.quad	L_.str.417
	.long	13478525                ## 0xcdaa7d
	.space	4
	.quad	L_.str.418
	.long	9139029                 ## 0x8b7355
	.space	4
	.quad	L_.str.419
	.long	16771002                ## 0xffe7ba
	.space	4
	.quad	L_.str.420
	.long	15653038                ## 0xeed8ae
	.space	4
	.quad	L_.str.421
	.long	13482646                ## 0xcdba96
	.space	4
	.quad	L_.str.422
	.long	9141862                 ## 0x8b7e66
	.space	4
	.quad	L_.str.423
	.long	16753999                ## 0xffa54f
	.space	4
	.quad	L_.str.424
	.long	15637065                ## 0xee9a49
	.space	4
	.quad	L_.str.425
	.long	13468991                ## 0xcd853f
	.space	4
	.quad	L_.str.426
	.long	9132587                 ## 0x8b5a2b
	.space	4
	.quad	L_.str.427
	.long	16744228                ## 0xff7f24
	.space	4
	.quad	L_.str.428
	.long	15627809                ## 0xee7621
	.space	4
	.quad	L_.str.429
	.long	13461021                ## 0xcd661d
	.space	4
	.quad	L_.str.430
	.long	9127187                 ## 0x8b4513
	.space	4
	.quad	L_.str.431
	.long	16724016                ## 0xff3030
	.space	4
	.quad	L_.str.432
	.long	15608876                ## 0xee2c2c
	.space	4
	.quad	L_.str.433
	.long	13444646                ## 0xcd2626
	.space	4
	.quad	L_.str.434
	.long	9116186                 ## 0x8b1a1a
	.space	4
	.quad	L_.str.435
	.long	16728128                ## 0xff4040
	.space	4
	.quad	L_.str.436
	.long	15612731                ## 0xee3b3b
	.space	4
	.quad	L_.str.437
	.long	13447987                ## 0xcd3333
	.space	4
	.quad	L_.str.438
	.long	9118499                 ## 0x8b2323
	.space	4
	.quad	L_.str.439
	.long	16747625                ## 0xff8c69
	.space	4
	.quad	L_.str.440
	.long	15630946                ## 0xee8262
	.space	4
	.quad	L_.str.441
	.long	13463636                ## 0xcd7054
	.space	4
	.quad	L_.str.442
	.long	9129017                 ## 0x8b4c39
	.space	4
	.quad	L_.str.443
	.long	16752762                ## 0xffa07a
	.space	4
	.quad	L_.str.444
	.long	15635826                ## 0xee9572
	.space	4
	.quad	L_.str.445
	.long	13468002                ## 0xcd8162
	.space	4
	.quad	L_.str.446
	.long	9131842                 ## 0x8b5742
	.space	4
	.quad	L_.str.447
	.long	16753920                ## 0xffa500
	.space	4
	.quad	L_.str.448
	.long	15636992                ## 0xee9a00
	.space	4
	.quad	L_.str.449
	.long	13468928                ## 0xcd8500
	.space	4
	.quad	L_.str.450
	.long	9132544                 ## 0x8b5a00
	.space	4
	.quad	L_.str.451
	.long	16744192                ## 0xff7f00
	.space	4
	.quad	L_.str.452
	.long	15627776                ## 0xee7600
	.space	4
	.quad	L_.str.453
	.long	13460992                ## 0xcd6600
	.space	4
	.quad	L_.str.454
	.long	9127168                 ## 0x8b4500
	.space	4
	.quad	L_.str.455
	.long	16740950                ## 0xff7256
	.space	4
	.quad	L_.str.456
	.long	15624784                ## 0xee6a50
	.space	4
	.quad	L_.str.457
	.long	13458245                ## 0xcd5b45
	.space	4
	.quad	L_.str.458
	.long	9125423                 ## 0x8b3e2f
	.space	4
	.quad	L_.str.459
	.long	16737095                ## 0xff6347
	.space	4
	.quad	L_.str.460
	.long	15621186                ## 0xee5c42
	.space	4
	.quad	L_.str.461
	.long	13455161                ## 0xcd4f39
	.space	4
	.quad	L_.str.462
	.long	9123366                 ## 0x8b3626
	.space	4
	.quad	L_.str.463
	.long	16729344                ## 0xff4500
	.space	4
	.quad	L_.str.464
	.long	15613952                ## 0xee4000
	.space	4
	.quad	L_.str.465
	.long	13448960                ## 0xcd3700
	.space	4
	.quad	L_.str.466
	.long	9118976                 ## 0x8b2500
	.space	4
	.quad	L_.str.467
	.long	16711680                ## 0xff0000
	.space	4
	.quad	L_.str.468
	.long	15597568                ## 0xee0000
	.space	4
	.quad	L_.str.469
	.long	13434880                ## 0xcd0000
	.space	4
	.quad	L_.str.470
	.long	9109504                 ## 0x8b0000
	.space	4
	.quad	L_.str.471
	.long	16716947                ## 0xff1493
	.space	4
	.quad	L_.str.472
	.long	15602313                ## 0xee1289
	.space	4
	.quad	L_.str.473
	.long	13439094                ## 0xcd1076
	.space	4
	.quad	L_.str.474
	.long	9112144                 ## 0x8b0a50
	.space	4
	.quad	L_.str.475
	.long	16740020                ## 0xff6eb4
	.space	4
	.quad	L_.str.476
	.long	15624871                ## 0xee6aa7
	.space	4
	.quad	L_.str.477
	.long	13459600                ## 0xcd6090
	.space	4
	.quad	L_.str.478
	.long	9124450                 ## 0x8b3a62
	.space	4
	.quad	L_.str.479
	.long	16758213                ## 0xffb5c5
	.space	4
	.quad	L_.str.480
	.long	15641016                ## 0xeea9b8
	.space	4
	.quad	L_.str.481
	.long	13472158                ## 0xcd919e
	.space	4
	.quad	L_.str.482
	.long	9134956                 ## 0x8b636c
	.space	4
	.quad	L_.str.483
	.long	16756409                ## 0xffaeb9
	.space	4
	.quad	L_.str.484
	.long	15639213                ## 0xeea2ad
	.space	4
	.quad	L_.str.485
	.long	13470869                ## 0xcd8c95
	.space	4
	.quad	L_.str.486
	.long	9133925                 ## 0x8b5f65
	.space	4
	.quad	L_.str.487
	.long	16745131                ## 0xff82ab
	.space	4
	.quad	L_.str.488
	.long	15628703                ## 0xee799f
	.space	4
	.quad	L_.str.489
	.long	13461641                ## 0xcd6889
	.space	4
	.quad	L_.str.490
	.long	9127773                 ## 0x8b475d
	.space	4
	.quad	L_.str.491
	.long	16725171                ## 0xff34b3
	.space	4
	.quad	L_.str.492
	.long	15610023                ## 0xee30a7
	.space	4
	.quad	L_.str.493
	.long	13445520                ## 0xcd2990
	.space	4
	.quad	L_.str.494
	.long	9116770                 ## 0x8b1c62
	.space	4
	.quad	L_.str.495
	.long	16727702                ## 0xff3e96
	.space	4
	.quad	L_.str.496
	.long	15612556                ## 0xee3a8c
	.space	4
	.quad	L_.str.497
	.long	13447800                ## 0xcd3278
	.space	4
	.quad	L_.str.498
	.long	9118290                 ## 0x8b2252
	.space	4
	.quad	L_.str.499
	.long	16711935                ## 0xff00ff
	.space	4
	.quad	L_.str.500
	.long	15597806                ## 0xee00ee
	.space	4
	.quad	L_.str.501
	.long	13435085                ## 0xcd00cd
	.space	4
	.quad	L_.str.502
	.long	9109643                 ## 0x8b008b
	.space	4
	.quad	L_.str.503
	.long	16745466                ## 0xff83fa
	.space	4
	.quad	L_.str.504
	.long	15629033                ## 0xee7ae9
	.space	4
	.quad	L_.str.505
	.long	13461961                ## 0xcd69c9
	.space	4
	.quad	L_.str.506
	.long	9127817                 ## 0x8b4789
	.space	4
	.quad	L_.str.507
	.long	16759807                ## 0xffbbff
	.space	4
	.quad	L_.str.508
	.long	15642350                ## 0xeeaeee
	.space	4
	.quad	L_.str.509
	.long	13473485                ## 0xcd96cd
	.space	4
	.quad	L_.str.510
	.long	9135755                 ## 0x8b668b
	.space	4
	.quad	L_.str.511
	.long	14706431                ## 0xe066ff
	.space	4
	.quad	L_.str.512
	.long	13721582                ## 0xd15fee
	.space	4
	.quad	L_.str.513
	.long	11817677                ## 0xb452cd
	.space	4
	.quad	L_.str.514
	.long	8009611                 ## 0x7a378b
	.space	4
	.quad	L_.str.515
	.long	12533503                ## 0xbf3eff
	.space	4
	.quad	L_.str.516
	.long	11680494                ## 0xb23aee
	.space	4
	.quad	L_.str.517
	.long	10105549                ## 0x9a32cd
	.space	4
	.quad	L_.str.518
	.long	6824587                 ## 0x68228b
	.space	4
	.quad	L_.str.519
	.long	10170623                ## 0x9b30ff
	.space	4
	.quad	L_.str.520
	.long	9514222                 ## 0x912cee
	.space	4
	.quad	L_.str.521
	.long	8201933                 ## 0x7d26cd
	.space	4
	.quad	L_.str.522
	.long	5577355                 ## 0x551a8b
	.space	4
	.quad	L_.str.523
	.long	11240191                ## 0xab82ff
	.space	4
	.quad	L_.str.524
	.long	10451438                ## 0x9f79ee
	.space	4
	.quad	L_.str.525
	.long	9005261                 ## 0x8968cd
	.space	4
	.quad	L_.str.526
	.long	6113163                 ## 0x5d478b
	.space	4
	.quad	L_.str.527
	.long	16769535                ## 0xffe1ff
	.space	4
	.quad	L_.str.528
	.long	15651566                ## 0xeed2ee
	.space	4
	.quad	L_.str.529
	.long	13481421                ## 0xcdb5cd
	.space	4
	.quad	L_.str.530
	.long	9141131                 ## 0x8b7b8b
	.space	4
	.quad	L_.str.531
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.532
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.533
	.long	197379                  ## 0x30303
	.space	4
	.quad	L_.str.534
	.long	197379                  ## 0x30303
	.space	4
	.quad	L_.str.535
	.long	328965                  ## 0x50505
	.space	4
	.quad	L_.str.536
	.long	328965                  ## 0x50505
	.space	4
	.quad	L_.str.537
	.long	526344                  ## 0x80808
	.space	4
	.quad	L_.str.538
	.long	526344                  ## 0x80808
	.space	4
	.quad	L_.str.539
	.long	657930                  ## 0xa0a0a
	.space	4
	.quad	L_.str.540
	.long	657930                  ## 0xa0a0a
	.space	4
	.quad	L_.str.541
	.long	855309                  ## 0xd0d0d
	.space	4
	.quad	L_.str.542
	.long	855309                  ## 0xd0d0d
	.space	4
	.quad	L_.str.543
	.long	986895                  ## 0xf0f0f
	.space	4
	.quad	L_.str.544
	.long	986895                  ## 0xf0f0f
	.space	4
	.quad	L_.str.545
	.long	1184274                 ## 0x121212
	.space	4
	.quad	L_.str.546
	.long	1184274                 ## 0x121212
	.space	4
	.quad	L_.str.547
	.long	1315860                 ## 0x141414
	.space	4
	.quad	L_.str.548
	.long	1315860                 ## 0x141414
	.space	4
	.quad	L_.str.549
	.long	1513239                 ## 0x171717
	.space	4
	.quad	L_.str.550
	.long	1513239                 ## 0x171717
	.space	4
	.quad	L_.str.551
	.long	1710618                 ## 0x1a1a1a
	.space	4
	.quad	L_.str.552
	.long	1710618                 ## 0x1a1a1a
	.space	4
	.quad	L_.str.553
	.long	1842204                 ## 0x1c1c1c
	.space	4
	.quad	L_.str.554
	.long	1842204                 ## 0x1c1c1c
	.space	4
	.quad	L_.str.555
	.long	2039583                 ## 0x1f1f1f
	.space	4
	.quad	L_.str.556
	.long	2039583                 ## 0x1f1f1f
	.space	4
	.quad	L_.str.557
	.long	2171169                 ## 0x212121
	.space	4
	.quad	L_.str.558
	.long	2171169                 ## 0x212121
	.space	4
	.quad	L_.str.559
	.long	2368548                 ## 0x242424
	.space	4
	.quad	L_.str.560
	.long	2368548                 ## 0x242424
	.space	4
	.quad	L_.str.561
	.long	2500134                 ## 0x262626
	.space	4
	.quad	L_.str.562
	.long	2500134                 ## 0x262626
	.space	4
	.quad	L_.str.563
	.long	2697513                 ## 0x292929
	.space	4
	.quad	L_.str.564
	.long	2697513                 ## 0x292929
	.space	4
	.quad	L_.str.565
	.long	2829099                 ## 0x2b2b2b
	.space	4
	.quad	L_.str.566
	.long	2829099                 ## 0x2b2b2b
	.space	4
	.quad	L_.str.567
	.long	3026478                 ## 0x2e2e2e
	.space	4
	.quad	L_.str.568
	.long	3026478                 ## 0x2e2e2e
	.space	4
	.quad	L_.str.569
	.long	3158064                 ## 0x303030
	.space	4
	.quad	L_.str.570
	.long	3158064                 ## 0x303030
	.space	4
	.quad	L_.str.571
	.long	3355443                 ## 0x333333
	.space	4
	.quad	L_.str.572
	.long	3355443                 ## 0x333333
	.space	4
	.quad	L_.str.573
	.long	3552822                 ## 0x363636
	.space	4
	.quad	L_.str.574
	.long	3552822                 ## 0x363636
	.space	4
	.quad	L_.str.575
	.long	3684408                 ## 0x383838
	.space	4
	.quad	L_.str.576
	.long	3684408                 ## 0x383838
	.space	4
	.quad	L_.str.577
	.long	3881787                 ## 0x3b3b3b
	.space	4
	.quad	L_.str.578
	.long	3881787                 ## 0x3b3b3b
	.space	4
	.quad	L_.str.579
	.long	4013373                 ## 0x3d3d3d
	.space	4
	.quad	L_.str.580
	.long	4013373                 ## 0x3d3d3d
	.space	4
	.quad	L_.str.581
	.long	4210752                 ## 0x404040
	.space	4
	.quad	L_.str.582
	.long	4210752                 ## 0x404040
	.space	4
	.quad	L_.str.583
	.long	4342338                 ## 0x424242
	.space	4
	.quad	L_.str.584
	.long	4342338                 ## 0x424242
	.space	4
	.quad	L_.str.585
	.long	4539717                 ## 0x454545
	.space	4
	.quad	L_.str.586
	.long	4539717                 ## 0x454545
	.space	4
	.quad	L_.str.587
	.long	4671303                 ## 0x474747
	.space	4
	.quad	L_.str.588
	.long	4671303                 ## 0x474747
	.space	4
	.quad	L_.str.589
	.long	4868682                 ## 0x4a4a4a
	.space	4
	.quad	L_.str.590
	.long	4868682                 ## 0x4a4a4a
	.space	4
	.quad	L_.str.591
	.long	5066061                 ## 0x4d4d4d
	.space	4
	.quad	L_.str.592
	.long	5066061                 ## 0x4d4d4d
	.space	4
	.quad	L_.str.593
	.long	5197647                 ## 0x4f4f4f
	.space	4
	.quad	L_.str.594
	.long	5197647                 ## 0x4f4f4f
	.space	4
	.quad	L_.str.595
	.long	5395026                 ## 0x525252
	.space	4
	.quad	L_.str.596
	.long	5395026                 ## 0x525252
	.space	4
	.quad	L_.str.597
	.long	5526612                 ## 0x545454
	.space	4
	.quad	L_.str.598
	.long	5526612                 ## 0x545454
	.space	4
	.quad	L_.str.599
	.long	5723991                 ## 0x575757
	.space	4
	.quad	L_.str.600
	.long	5723991                 ## 0x575757
	.space	4
	.quad	L_.str.601
	.long	5855577                 ## 0x595959
	.space	4
	.quad	L_.str.602
	.long	5855577                 ## 0x595959
	.space	4
	.quad	L_.str.603
	.long	6052956                 ## 0x5c5c5c
	.space	4
	.quad	L_.str.604
	.long	6052956                 ## 0x5c5c5c
	.space	4
	.quad	L_.str.605
	.long	6184542                 ## 0x5e5e5e
	.space	4
	.quad	L_.str.606
	.long	6184542                 ## 0x5e5e5e
	.space	4
	.quad	L_.str.607
	.long	6381921                 ## 0x616161
	.space	4
	.quad	L_.str.608
	.long	6381921                 ## 0x616161
	.space	4
	.quad	L_.str.609
	.long	6513507                 ## 0x636363
	.space	4
	.quad	L_.str.610
	.long	6513507                 ## 0x636363
	.space	4
	.quad	L_.str.611
	.long	6710886                 ## 0x666666
	.space	4
	.quad	L_.str.612
	.long	6710886                 ## 0x666666
	.space	4
	.quad	L_.str.613
	.long	6908265                 ## 0x696969
	.space	4
	.quad	L_.str.614
	.long	6908265                 ## 0x696969
	.space	4
	.quad	L_.str.615
	.long	7039851                 ## 0x6b6b6b
	.space	4
	.quad	L_.str.616
	.long	7039851                 ## 0x6b6b6b
	.space	4
	.quad	L_.str.617
	.long	7237230                 ## 0x6e6e6e
	.space	4
	.quad	L_.str.618
	.long	7237230                 ## 0x6e6e6e
	.space	4
	.quad	L_.str.619
	.long	7368816                 ## 0x707070
	.space	4
	.quad	L_.str.620
	.long	7368816                 ## 0x707070
	.space	4
	.quad	L_.str.621
	.long	7566195                 ## 0x737373
	.space	4
	.quad	L_.str.622
	.long	7566195                 ## 0x737373
	.space	4
	.quad	L_.str.623
	.long	7697781                 ## 0x757575
	.space	4
	.quad	L_.str.624
	.long	7697781                 ## 0x757575
	.space	4
	.quad	L_.str.625
	.long	7895160                 ## 0x787878
	.space	4
	.quad	L_.str.626
	.long	7895160                 ## 0x787878
	.space	4
	.quad	L_.str.627
	.long	8026746                 ## 0x7a7a7a
	.space	4
	.quad	L_.str.628
	.long	8026746                 ## 0x7a7a7a
	.space	4
	.quad	L_.str.629
	.long	8224125                 ## 0x7d7d7d
	.space	4
	.quad	L_.str.630
	.long	8224125                 ## 0x7d7d7d
	.space	4
	.quad	L_.str.631
	.long	8355711                 ## 0x7f7f7f
	.space	4
	.quad	L_.str.632
	.long	8355711                 ## 0x7f7f7f
	.space	4
	.quad	L_.str.633
	.long	8553090                 ## 0x828282
	.space	4
	.quad	L_.str.634
	.long	8553090                 ## 0x828282
	.space	4
	.quad	L_.str.635
	.long	8750469                 ## 0x858585
	.space	4
	.quad	L_.str.636
	.long	8750469                 ## 0x858585
	.space	4
	.quad	L_.str.637
	.long	8882055                 ## 0x878787
	.space	4
	.quad	L_.str.638
	.long	8882055                 ## 0x878787
	.space	4
	.quad	L_.str.639
	.long	9079434                 ## 0x8a8a8a
	.space	4
	.quad	L_.str.640
	.long	9079434                 ## 0x8a8a8a
	.space	4
	.quad	L_.str.641
	.long	9211020                 ## 0x8c8c8c
	.space	4
	.quad	L_.str.642
	.long	9211020                 ## 0x8c8c8c
	.space	4
	.quad	L_.str.643
	.long	9408399                 ## 0x8f8f8f
	.space	4
	.quad	L_.str.644
	.long	9408399                 ## 0x8f8f8f
	.space	4
	.quad	L_.str.645
	.long	9539985                 ## 0x919191
	.space	4
	.quad	L_.str.646
	.long	9539985                 ## 0x919191
	.space	4
	.quad	L_.str.647
	.long	9737364                 ## 0x949494
	.space	4
	.quad	L_.str.648
	.long	9737364                 ## 0x949494
	.space	4
	.quad	L_.str.649
	.long	9868950                 ## 0x969696
	.space	4
	.quad	L_.str.650
	.long	9868950                 ## 0x969696
	.space	4
	.quad	L_.str.651
	.long	10066329                ## 0x999999
	.space	4
	.quad	L_.str.652
	.long	10066329                ## 0x999999
	.space	4
	.quad	L_.str.653
	.long	10263708                ## 0x9c9c9c
	.space	4
	.quad	L_.str.654
	.long	10263708                ## 0x9c9c9c
	.space	4
	.quad	L_.str.655
	.long	10395294                ## 0x9e9e9e
	.space	4
	.quad	L_.str.656
	.long	10395294                ## 0x9e9e9e
	.space	4
	.quad	L_.str.657
	.long	10592673                ## 0xa1a1a1
	.space	4
	.quad	L_.str.658
	.long	10592673                ## 0xa1a1a1
	.space	4
	.quad	L_.str.659
	.long	10724259                ## 0xa3a3a3
	.space	4
	.quad	L_.str.660
	.long	10724259                ## 0xa3a3a3
	.space	4
	.quad	L_.str.661
	.long	10921638                ## 0xa6a6a6
	.space	4
	.quad	L_.str.662
	.long	10921638                ## 0xa6a6a6
	.space	4
	.quad	L_.str.663
	.long	11053224                ## 0xa8a8a8
	.space	4
	.quad	L_.str.664
	.long	11053224                ## 0xa8a8a8
	.space	4
	.quad	L_.str.665
	.long	11250603                ## 0xababab
	.space	4
	.quad	L_.str.666
	.long	11250603                ## 0xababab
	.space	4
	.quad	L_.str.667
	.long	11382189                ## 0xadadad
	.space	4
	.quad	L_.str.668
	.long	11382189                ## 0xadadad
	.space	4
	.quad	L_.str.669
	.long	11579568                ## 0xb0b0b0
	.space	4
	.quad	L_.str.670
	.long	11579568                ## 0xb0b0b0
	.space	4
	.quad	L_.str.671
	.long	11776947                ## 0xb3b3b3
	.space	4
	.quad	L_.str.672
	.long	11776947                ## 0xb3b3b3
	.space	4
	.quad	L_.str.673
	.long	11908533                ## 0xb5b5b5
	.space	4
	.quad	L_.str.674
	.long	11908533                ## 0xb5b5b5
	.space	4
	.quad	L_.str.675
	.long	12105912                ## 0xb8b8b8
	.space	4
	.quad	L_.str.676
	.long	12105912                ## 0xb8b8b8
	.space	4
	.quad	L_.str.677
	.long	12237498                ## 0xbababa
	.space	4
	.quad	L_.str.678
	.long	12237498                ## 0xbababa
	.space	4
	.quad	L_.str.679
	.long	12434877                ## 0xbdbdbd
	.space	4
	.quad	L_.str.680
	.long	12434877                ## 0xbdbdbd
	.space	4
	.quad	L_.str.681
	.long	12566463                ## 0xbfbfbf
	.space	4
	.quad	L_.str.682
	.long	12566463                ## 0xbfbfbf
	.space	4
	.quad	L_.str.683
	.long	12763842                ## 0xc2c2c2
	.space	4
	.quad	L_.str.684
	.long	12763842                ## 0xc2c2c2
	.space	4
	.quad	L_.str.685
	.long	12895428                ## 0xc4c4c4
	.space	4
	.quad	L_.str.686
	.long	12895428                ## 0xc4c4c4
	.space	4
	.quad	L_.str.687
	.long	13092807                ## 0xc7c7c7
	.space	4
	.quad	L_.str.688
	.long	13092807                ## 0xc7c7c7
	.space	4
	.quad	L_.str.689
	.long	13224393                ## 0xc9c9c9
	.space	4
	.quad	L_.str.690
	.long	13224393                ## 0xc9c9c9
	.space	4
	.quad	L_.str.691
	.long	13421772                ## 0xcccccc
	.space	4
	.quad	L_.str.692
	.long	13421772                ## 0xcccccc
	.space	4
	.quad	L_.str.693
	.long	13619151                ## 0xcfcfcf
	.space	4
	.quad	L_.str.694
	.long	13619151                ## 0xcfcfcf
	.space	4
	.quad	L_.str.695
	.long	13750737                ## 0xd1d1d1
	.space	4
	.quad	L_.str.696
	.long	13750737                ## 0xd1d1d1
	.space	4
	.quad	L_.str.697
	.long	13948116                ## 0xd4d4d4
	.space	4
	.quad	L_.str.698
	.long	13948116                ## 0xd4d4d4
	.space	4
	.quad	L_.str.699
	.long	14079702                ## 0xd6d6d6
	.space	4
	.quad	L_.str.700
	.long	14079702                ## 0xd6d6d6
	.space	4
	.quad	L_.str.701
	.long	14277081                ## 0xd9d9d9
	.space	4
	.quad	L_.str.702
	.long	14277081                ## 0xd9d9d9
	.space	4
	.quad	L_.str.703
	.long	14408667                ## 0xdbdbdb
	.space	4
	.quad	L_.str.704
	.long	14408667                ## 0xdbdbdb
	.space	4
	.quad	L_.str.705
	.long	14606046                ## 0xdedede
	.space	4
	.quad	L_.str.706
	.long	14606046                ## 0xdedede
	.space	4
	.quad	L_.str.707
	.long	14737632                ## 0xe0e0e0
	.space	4
	.quad	L_.str.708
	.long	14737632                ## 0xe0e0e0
	.space	4
	.quad	L_.str.709
	.long	14935011                ## 0xe3e3e3
	.space	4
	.quad	L_.str.710
	.long	14935011                ## 0xe3e3e3
	.space	4
	.quad	L_.str.711
	.long	15066597                ## 0xe5e5e5
	.space	4
	.quad	L_.str.712
	.long	15066597                ## 0xe5e5e5
	.space	4
	.quad	L_.str.713
	.long	15263976                ## 0xe8e8e8
	.space	4
	.quad	L_.str.714
	.long	15263976                ## 0xe8e8e8
	.space	4
	.quad	L_.str.715
	.long	15461355                ## 0xebebeb
	.space	4
	.quad	L_.str.716
	.long	15461355                ## 0xebebeb
	.space	4
	.quad	L_.str.717
	.long	15592941                ## 0xededed
	.space	4
	.quad	L_.str.718
	.long	15592941                ## 0xededed
	.space	4
	.quad	L_.str.719
	.long	15790320                ## 0xf0f0f0
	.space	4
	.quad	L_.str.720
	.long	15790320                ## 0xf0f0f0
	.space	4
	.quad	L_.str.721
	.long	15921906                ## 0xf2f2f2
	.space	4
	.quad	L_.str.722
	.long	15921906                ## 0xf2f2f2
	.space	4
	.quad	L_.str.723
	.long	16119285                ## 0xf5f5f5
	.space	4
	.quad	L_.str.724
	.long	16119285                ## 0xf5f5f5
	.space	4
	.quad	L_.str.725
	.long	16250871                ## 0xf7f7f7
	.space	4
	.quad	L_.str.726
	.long	16250871                ## 0xf7f7f7
	.space	4
	.quad	L_.str.727
	.long	16448250                ## 0xfafafa
	.space	4
	.quad	L_.str.728
	.long	16448250                ## 0xfafafa
	.space	4
	.quad	L_.str.729
	.long	16579836                ## 0xfcfcfc
	.space	4
	.quad	L_.str.730
	.long	16579836                ## 0xfcfcfc
	.space	4
	.quad	L_.str.731
	.long	16777215                ## 0xffffff
	.space	4
	.quad	L_.str.732
	.long	16777215                ## 0xffffff
	.space	4
	.quad	L_.str.733
	.long	11119017                ## 0xa9a9a9
	.space	4
	.quad	L_.str.734
	.long	11119017                ## 0xa9a9a9
	.space	4
	.quad	L_.str.735
	.long	11119017                ## 0xa9a9a9
	.space	4
	.quad	L_.str.736
	.long	11119017                ## 0xa9a9a9
	.space	4
	.quad	L_.str.737
	.long	139                     ## 0x8b
	.space	4
	.quad	L_.str.738
	.long	139                     ## 0x8b
	.space	4
	.quad	L_.str.739
	.long	35723                   ## 0x8b8b
	.space	4
	.quad	L_.str.740
	.long	35723                   ## 0x8b8b
	.space	4
	.quad	L_.str.741
	.long	9109643                 ## 0x8b008b
	.space	4
	.quad	L_.str.742
	.long	9109643                 ## 0x8b008b
	.space	4
	.quad	L_.str.743
	.long	9109504                 ## 0x8b0000
	.space	4
	.quad	L_.str.744
	.long	9109504                 ## 0x8b0000
	.space	4
	.quad	L_.str.745
	.long	9498256                 ## 0x90ee90
	.space	4
	.quad	L_.str.746
	.long	9498256                 ## 0x90ee90
	.space	4
	.quad	L_.str.747
	.long	4294967295              ## 0xffffffff
	.space	4
	.space	16

	.section	__TEXT,__cstring,cstring_literals
L_.str.748:                             ## @.str.748
	.asciz	"\""

.zerofill __DATA,__bss,_mlx_int_static_line.copy,8,3 ## @mlx_int_static_line.copy
.zerofill __DATA,__bss,_mlx_int_static_line.len,4,2 ## @mlx_int_static_line.len
L_.str.749:                             ## @.str.749
	.asciz	"%s %s"

L_.str.750:                             ## @.str.750
	.asciz	"c"

L_.str.751:                             ## @.str.751
	.asciz	"/*"

L_.str.752:                             ## @.str.752
	.asciz	"*/"

L_.str.753:                             ## @.str.753
	.asciz	"//"

L_.str.754:                             ## @.str.754
	.asciz	"\n"

.subsections_via_symbols
