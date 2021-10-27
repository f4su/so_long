	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_mlx_new_image          ## -- Begin function mlx_new_image
	.p2align	4, 0x90
_mlx_new_image:                         ## @mlx_new_image
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
	movl	%edx, %r15d
	movl	%esi, %r14d
	movq	%rdi, %r12
	movl	$56, %edi
	callq	_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	LBB0_2
## %bb.1:
	movq	16(%r12), %rax
	movq	%rax, 48(%rbx)
	movq	%rbx, 16(%r12)
	movl	%r14d, (%rbx)
	movl	%r15d, 4(%rbx)
	movq	$0, 16(%rbx)
	cvtsi2ss	%r14d, %xmm0
	movss	%xmm0, 24(%rbx)
	movl	$0, 28(%rbx)
	movss	%xmm0, 32(%rbx)
	imull	%r15d, %r14d
	negl	%r15d
	xorps	%xmm0, %xmm0
	cvtsi2ss	%r15d, %xmm0
	movss	%xmm0, 36(%rbx)
	movl	$0, 40(%rbx)
	movss	%xmm0, 44(%rbx)
	shll	$2, %r14d
	movslq	%r14d, %r14
	movq	%r14, %rdi
	callq	_malloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	___bzero
LBB0_2:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_add_img_to_ctx         ## -- Begin function add_img_to_ctx
	.p2align	4, 0x90
_add_img_to_ctx:                        ## @add_img_to_ctx
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%rsi), %r12
	testq	%r12, %r12
	je	LBB1_4
## %bb.1:                               ## %.lr.ph.preheader
	movq	%r12, %rbx
	.p2align	4, 0x90
LBB1_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%r14, 8(%rbx)
	je	LBB1_5
## %bb.3:                               ##   in Loop: Header=BB1_2 Depth=1
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB1_2
LBB1_4:                                 ## %._crit_edge
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%r14, 8(%rax)
	movq	%r12, 16(%rax)
	movq	%rax, 8(%r15)
	movl	$1, %edi
	movq	%rax, %rsi
	callq	_glGenTextures
	movl	(%rbx), %esi
	movl	$3553, %edi             ## imm = 0xDE1
	callq	_glBindTexture
	movl	$3553, %edi             ## imm = 0xDE1
	movl	$10241, %esi            ## imm = 0x2801
	movl	$9729, %edx             ## imm = 0x2601
	callq	_glTexParameteri
	movl	$3553, %edi             ## imm = 0xDE1
	movl	$10240, %esi            ## imm = 0x2800
	movl	$9729, %edx             ## imm = 0x2601
	callq	_glTexParameteri
	movl	$3553, %edi             ## imm = 0xDE1
	movl	$10242, %esi            ## imm = 0x2802
	movl	$33071, %edx            ## imm = 0x812F
	callq	_glTexParameteri
	movl	$3553, %edi             ## imm = 0xDE1
	movl	$10243, %esi            ## imm = 0x2803
	movl	$33071, %edx            ## imm = 0x812F
	callq	_glTexParameteri
	movl	(%r14), %ecx
	movl	4(%r14), %r8d
	subq	$8, %rsp
	movl	$3553, %edi             ## imm = 0xDE1
	xorl	%esi, %esi
	movl	$32856, %edx            ## imm = 0x8058
	xorl	%r9d, %r9d
	pushq	8(%r14)
	pushq	$5121                   ## imm = 0x1401
	pushq	$32993                  ## imm = 0x80E1
	callq	_glTexImage2D
	addq	$32, %rsp
	leaq	4(%rbx), %rsi
	movl	$1, %edi
	callq	_glGenBuffers
	movl	4(%rbx), %esi
	movl	$34962, %edi            ## imm = 0x8892
	callq	_glBindBuffer
	addq	$16, %r14
	movl	$32, %esi
	movl	$34962, %edi            ## imm = 0x8892
	movq	%r14, %rdx
	movl	$35048, %ecx            ## imm = 0x88E8
	callq	_glBufferData
LBB1_5:                                 ## %.loopexit
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_put_image_to_window ## -- Begin function mlx_put_image_to_window
	.p2align	4, 0x90
_mlx_put_image_to_window:               ## @mlx_put_image_to_window
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
	cmpl	$0, 20(%rsi)
	je	LBB2_2
## %bb.1:
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	(%rsi), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_add_img_to_ctx
	movq	%rax, %r13
	movl	(%rax), %esi
	movl	$3553, %edi             ## imm = 0xDE1
	callq	_glBindTexture
	movl	(%r12), %ecx
	movl	4(%r12), %r8d
	subq	$8, %rsp
	movl	$3553, %edi             ## imm = 0xDE1
	xorl	%esi, %esi
	movl	$32856, %edx            ## imm = 0x8058
	xorl	%r9d, %r9d
	pushq	8(%r12)
	pushq	$5121                   ## imm = 0x1401
	pushq	$32993                  ## imm = 0x80E1
	callq	_glTexImage2D
	addq	$32, %rsp
	movq	(%rbx), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.2(%rip), %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	movl	%r15d, %r8d
	movl	%r14d, %r9d
	callq	*_objc_msgSend@GOTPCREL(%rip)
	incl	16(%rbx)
LBB2_2:
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
	.globl	_mlx_get_data_addr      ## -- Begin function mlx_get_data_addr
	.p2align	4, 0x90
_mlx_get_data_addr:                     ## @mlx_get_data_addr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$32, (%rsi)
	movl	(%rdi), %eax
	shll	$2, %eax
	movl	%eax, (%rdx)
	movl	$0, (%rcx)
	movq	8(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_get_color_value    ## -- Begin function mlx_get_color_value
	.p2align	4, 0x90
_mlx_get_color_value:                   ## @mlx_get_color_value
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function mlx_string_put
LCPI5_0:
	.quad	4619728160619120933     ## double 7.1428571428571432
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mlx_string_put
	.p2align	4, 0x90
_mlx_string_put:                        ## @mlx_string_put
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
                                        ## kill: def $r8d killed $r8d def $r8
	movq	%r8, -64(%rbp)          ## 8-byte Spill
	movl	%ecx, -44(%rbp)         ## 4-byte Spill
	cmpl	$0, 20(%rsi)
	je	LBB5_8
## %bb.1:
	movq	%r9, %rbx
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	(%rsi), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	%r15, -56(%rbp)         ## 8-byte Spill
	movq	48(%r15), %rdi
	movq	%r12, %rsi
	callq	_add_img_to_ctx
	movq	%rax, %r15
	movb	(%rbx), %al
	testb	%al, %al
	je	LBB5_7
## %bb.2:                               ## %.lr.ph
	addl	$-13, -44(%rbp)         ## 4-byte Folded Spill
	movq	_OBJC_SELECTOR_REFERENCES_.4(%rip), %r13
	incq	%rbx
	jmp	LBB5_3
	.p2align	4, 0x90
LBB5_6:                                 ##   in Loop: Header=BB5_3 Depth=1
	movzbl	(%rbx), %eax
	incq	%rbx
	testb	%al, %al
	je	LBB5_7
LBB5_3:                                 ## =>This Inner Loop Header: Depth=1
	cmpb	$32, %al
	jb	LBB5_6
## %bb.4:                               ##   in Loop: Header=BB5_3 Depth=1
	testb	%al, %al
	js	LBB5_6
## %bb.5:                               ##   in Loop: Header=BB5_3 Depth=1
	movzbl	%al, %eax
	leal	(%rax,%rax,2), %eax
	leal	-384(,%rax,4), %eax
	movq	(%r12), %rdi
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	48(%rcx), %rdx
	subq	$8, %rsp
	movq	%r13, %rsi
	movq	%r15, %rcx
	movl	%r14d, %r8d
	movl	-44(%rbp), %r9d         ## 4-byte Reload
	pushq	$0
	pushq	%rax
	pushq	-64(%rbp)               ## 8-byte Folded Reload
	callq	*_objc_msgSend@GOTPCREL(%rip)
	addq	$32, %rsp
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	addsd	LCPI5_0(%rip), %xmm0
	cvttsd2si	%xmm0, %r14d
	jmp	LBB5_6
LBB5_7:                                 ## %._crit_edge
	incl	16(%r12)
LBB5_8:
	xorl	%eax, %eax
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
	.globl	_mlx_destroy_image      ## -- Begin function mlx_destroy_image
	.p2align	4, 0x90
_mlx_destroy_image:                     ## @mlx_destroy_image
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
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	16(%rdi), %rax
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	je	LBB6_6
## %bb.1:                               ## %.lr.ph53
	leaq	-120(%rbp), %rcx
	.p2align	4, 0x90
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	%r15, %rax
	jne	LBB6_4
## %bb.3:                               ##   in Loop: Header=BB6_2 Depth=1
	movq	48(%r15), %rax
	movq	%rax, 48(%rcx)
LBB6_4:                                 ##   in Loop: Header=BB6_2 Depth=1
	testq	%rax, %rax
	je	LBB6_6
## %bb.5:                               ## %._crit_edge44
                                        ##   in Loop: Header=BB6_2 Depth=1
	movq	%rax, %rcx
	movq	48(%rax), %rdx
	movq	%rdx, %rax
	testq	%rdx, %rdx
	jne	LBB6_2
LBB6_6:                                 ## %.critedge
	movq	-72(%rbp), %rax
	movq	%rax, 16(%rdi)
	movq	8(%rdi), %rbx
	testq	%rbx, %rbx
	je	LBB6_15
## %bb.7:                               ## %.lr.ph
	movq	_objc_msgSend@GOTPCREL(%rip), %r13
	jmp	LBB6_8
	.p2align	4, 0x90
LBB6_14:                                ## %.critedge1
                                        ##   in Loop: Header=BB6_8 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	24(%rbx), %rbx
	testq	%rbx, %rbx
	je	LBB6_15
LBB6_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_10 Depth 2
	movq	8(%rbx), %rax
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	LBB6_14
## %bb.9:                               ## %.lr.ph50
                                        ##   in Loop: Header=BB6_8 Depth=1
	movq	_OBJC_SELECTOR_REFERENCES_(%rip), %r14
	leaq	-64(%rbp), %r12
	.p2align	4, 0x90
LBB6_10:                                ##   Parent Loop BB6_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%r15, 8(%rax)
	jne	LBB6_12
## %bb.11:                              ##   in Loop: Header=BB6_10 Depth=2
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%r13
	movq	16(%r12), %rsi
	addq	$4, %rsi
	movl	$1, %edi
	callq	_glDeleteBuffers
	movq	16(%r12), %rsi
	movl	$1, %edi
	callq	_glDeleteTextures
	movq	16(%r12), %rdi
	movq	16(%rdi), %rax
	movq	%rax, 16(%r12)
	callq	_free
	movq	16(%r12), %rax
LBB6_12:                                ##   in Loop: Header=BB6_10 Depth=2
	testq	%rax, %rax
	je	LBB6_14
## %bb.13:                              ## %._crit_edge45
                                        ##   in Loop: Header=BB6_10 Depth=2
	movq	%rax, %r12
	movq	16(%rax), %rcx
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	LBB6_10
	jmp	LBB6_14
LBB6_15:                                ## %._crit_edge
	movq	8(%r15), %rdi
	callq	_free
	movq	%r15, %rdi
	callq	_free
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_:                  ## @OBJC_METH_VAR_NAME_
	.asciz	"selectGLContext"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_
_OBJC_SELECTOR_REFERENCES_:
	.quad	L_OBJC_METH_VAR_NAME_

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.1:                ## @OBJC_METH_VAR_NAME_.1
	.asciz	"mlx_gl_draw_img:andCtx:andX:andY:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.2
_OBJC_SELECTOR_REFERENCES_.2:
	.quad	L_OBJC_METH_VAR_NAME_.1

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.3:                ## @OBJC_METH_VAR_NAME_.3
	.asciz	"mlx_gl_draw_font:andCtx:andX:andY:andColor:glyphX:glyphY:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.4
_OBJC_SELECTOR_REFERENCES_.4:
	.quad	L_OBJC_METH_VAR_NAME_.3

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64

.subsections_via_symbols
