	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_mlx_mouse_hide         ## -- Begin function mlx_mouse_hide
	.p2align	4, 0x90
_mlx_mouse_hide:                        ## @mlx_mouse_hide
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_mouse_show         ## -- Begin function mlx_mouse_show
	.p2align	4, 0x90
_mlx_mouse_show:                        ## @mlx_mouse_show
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.2(%rip), %rsi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function mlx_mouse_move
LCPI2_0:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mlx_mouse_move
	.p2align	4, 0x90
_mlx_mouse_move:                        ## @mlx_mouse_move
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
	subq	$120, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movl	%esi, %r13d
	movq	%rdi, %r12
	movq	(%rdi), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.4(%rip), %rsi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	%rax, %rbx
	movq	_OBJC_SELECTOR_REFERENCES_.6(%rip), %r15
	testq	%rax, %rax
	je	LBB2_2
## %bb.1:
	leaq	-96(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_objc_msgSend_stret
	movsd	-96(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	movsd	-88(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	jmp	LBB2_3
LBB2_2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
LBB2_3:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r13d, %xmm0
	movsd	%xmm0, -56(%rbp)        ## 8-byte Spill
	movq	_OBJC_SELECTOR_REFERENCES_.8(%rip), %rsi
	movq	%rbx, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	testq	%rax, %rax
	je	LBB2_5
## %bb.4:
	leaq	-160(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	_objc_msgSend_stret
	movsd	-136(%rbp), %xmm2       ## xmm2 = mem[0],zero
	jmp	LBB2_6
LBB2_5:
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -144(%rbp)
	movapd	%xmm0, -160(%rbp)
	xorpd	%xmm2, %xmm2
LBB2_6:
	movsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0        ## 8-byte Folded Reload
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	je	LBB2_8
## %bb.7:
	leaq	-128(%rbp), %rdi
	movq	%r15, %rdx
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	movsd	%xmm2, -56(%rbp)        ## 8-byte Spill
	callq	_objc_msgSend_stret
	movsd	-56(%rbp), %xmm2        ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       ## xmm1 = mem[0],zero
	jmp	LBB2_9
LBB2_8:
	xorpd	%xmm1, %xmm1
	movapd	%xmm1, -112(%rbp)
	movapd	%xmm1, -128(%rbp)
	xorpd	%xmm1, %xmm1
LBB2_9:
	subsd	%xmm1, %xmm2
	subsd	-64(%rbp), %xmm2        ## 8-byte Folded Reload
	addsd	LCPI2_0(%rip), %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r14d, %xmm1
	addsd	%xmm2, %xmm1
	callq	_CGWarpMouseCursorPosition
	movl	$1, %edi
	callq	_CGAssociateMouseAndMouseCursorPosition
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function mlx_mouse_get_pos
LCPI3_0:
	.quad	-4616189618054758400    ## double -1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mlx_mouse_get_pos
	.p2align	4, 0x90
_mlx_mouse_get_pos:                     ## @mlx_mouse_get_pos
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
	subq	$48, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.4(%rip), %rsi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	%rax, %r12
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	LBB3_2
## %bb.1:
	movq	_OBJC_SELECTOR_REFERENCES_.6(%rip), %rdx
	leaq	-80(%rbp), %rdi
	callq	_objc_msgSend_stret
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	addsd	LCPI3_0(%rip), %xmm0
	jmp	LBB3_3
LBB3_2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movsd	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero
LBB3_3:
	movsd	%xmm0, -40(%rbp)        ## 8-byte Spill
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	%r12, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%r15)
	movsd	-40(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%r14)
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_"
_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_NSCursor

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_:                  ## @OBJC_METH_VAR_NAME_
	.asciz	"hide"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_
_OBJC_SELECTOR_REFERENCES_:
	.quad	L_OBJC_METH_VAR_NAME_

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.1:                ## @OBJC_METH_VAR_NAME_.1
	.asciz	"unhide"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.2
_OBJC_SELECTOR_REFERENCES_.2:
	.quad	L_OBJC_METH_VAR_NAME_.1

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.3:                ## @OBJC_METH_VAR_NAME_.3
	.asciz	"win"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.4
_OBJC_SELECTOR_REFERENCES_.4:
	.quad	L_OBJC_METH_VAR_NAME_.3

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.5:                ## @OBJC_METH_VAR_NAME_.5
	.asciz	"frame"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.6
_OBJC_SELECTOR_REFERENCES_.6:
	.quad	L_OBJC_METH_VAR_NAME_.5

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.7:                ## @OBJC_METH_VAR_NAME_.7
	.asciz	"screen"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.8
_OBJC_SELECTOR_REFERENCES_.8:
	.quad	L_OBJC_METH_VAR_NAME_.7

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.9:                ## @OBJC_METH_VAR_NAME_.9
	.asciz	"mouseLocationOutsideOfEventStream"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.10
_OBJC_SELECTOR_REFERENCES_.10:
	.quad	L_OBJC_METH_VAR_NAME_.9

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64

.subsections_via_symbols
