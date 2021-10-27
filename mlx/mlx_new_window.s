	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_get_mouse_button       ## -- Begin function get_mouse_button
	.p2align	4, 0x90
_get_mouse_button:                      ## @get_mouse_button
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpq	$27, %rdi
	ja	LBB0_6
## %bb.1:
	movl	$70, %eax
	btq	%rdi, %rax
	jb	LBB0_2
## %bb.3:
	movl	$152, %eax
	btq	%rdi, %rax
	jb	LBB0_8
## %bb.4:
	movl	$234881024, %eax        ## imm = 0xE000000
	btq	%rdi, %rax
	jae	LBB0_6
## %bb.5:
	movl	$3, %eax
	popq	%rbp
	retq
LBB0_2:
	movl	$1, %eax
	popq	%rbp
	retq
LBB0_8:
	movl	$2, %eax
	popq	%rbp
	retq
LBB0_6:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent initWithContentRect:styleMask:backing:defer:]
"-[NSWindowEvent initWithContentRect:styleMask:backing:defer:]": ## @"\01-[NSWindowEvent initWithContentRect:styleMask:backing:defer:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_SUP_REFS_$_(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	movq	40(%rbp), %r11
	movq	32(%rbp), %r9
	movq	16(%rbp), %r10
	movq	24(%rbp), %rax
	leaq	-16(%rbp), %rdi
	pushq	%r11
	pushq	%r9
	pushq	%rax
	pushq	%r10
	callq	_objc_msgSendSuper2
	addq	$32, %rsp
	testq	%rax, %rax
	je	LBB1_9
## %bb.1:                               ## %.preheader
	leaq	16(%rbp), %r8
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %r9
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rcx
	leaq	248(%rax,%r9), %rdx
	cmpq	$248, %rdx
	jb	LBB1_3
## %bb.2:                               ## %.preheader
	leaq	248(%rax,%rcx), %rdx
	cmpq	$247, %rdx
	jbe	LBB1_3
## %bb.5:                               ## %vector.memcheck
	leaq	(%rax,%r9), %rdx
	leaq	(%rax,%rcx), %rsi
	leaq	248(%rcx,%rax), %rdi
	cmpq	%rdi, %rdx
	jae	LBB1_7
## %bb.6:                               ## %vector.memcheck
	leaq	248(%r9,%rax), %rdi
	cmpq	%rdi, %rsi
	jae	LBB1_7
LBB1_3:                                 ## %scalar.ph.preheader
	leaq	248(%rcx,%rax), %rcx
	leaq	248(%r9,%rax), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB1_4:                                 ## %scalar.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	$0, (%rdx,%rsi,8)
	movq	$0, (%rcx,%rsi,8)
	movq	$0, -8(%rdx,%rsi,8)
	movq	$0, -8(%rcx,%rsi,8)
	movq	$0, -16(%rdx,%rsi,8)
	movq	$0, -16(%rcx,%rsi,8)
	movq	$0, -24(%rdx,%rsi,8)
	movq	$0, -24(%rcx,%rsi,8)
	addq	$-4, %rsi
	cmpq	$-32, %rsi
	jne	LBB1_4
	jmp	LBB1_8
LBB1_7:                                 ## %vector.body
	xorps	%xmm0, %xmm0
	movups	%xmm0, 240(%rdx)
	movups	%xmm0, 240(%rsi)
	movups	%xmm0, 224(%rdx)
	movups	%xmm0, 224(%rsi)
	movups	%xmm0, 208(%rdx)
	movups	%xmm0, 208(%rsi)
	movups	%xmm0, 192(%rdx)
	movups	%xmm0, 192(%rsi)
	movups	%xmm0, 176(%rdx)
	movups	%xmm0, 176(%rsi)
	movups	%xmm0, 160(%rdx)
	movups	%xmm0, 160(%rsi)
	movups	%xmm0, 144(%rdx)
	movups	%xmm0, 144(%rsi)
	movups	%xmm0, 128(%rdx)
	movups	%xmm0, 128(%rsi)
	movups	%xmm0, 112(%rdx)
	movups	%xmm0, 112(%rsi)
	movups	%xmm0, 96(%rdx)
	movups	%xmm0, 96(%rsi)
	movups	%xmm0, 80(%rdx)
	movups	%xmm0, 80(%rsi)
	movups	%xmm0, 64(%rdx)
	movups	%xmm0, 64(%rsi)
	movups	%xmm0, 48(%rdx)
	movups	%xmm0, 48(%rsi)
	movups	%xmm0, 32(%rdx)
	movups	%xmm0, 32(%rsi)
	movups	%xmm0, 16(%rdx)
	movups	%xmm0, 16(%rsi)
	movups	%xmm0, (%rdx)
	movups	%xmm0, (%rsi)
LBB1_8:                                 ## %middle.block
	movq	_OBJC_IVAR_$_NSWindowEvent.keyrepeat(%rip), %rcx
	movl	$0, (%rax,%rcx)
	movq	_OBJC_IVAR_$_NSWindowEvent.keyflag(%rip), %rcx
	movl	$0, (%rax,%rcx)
	cvttsd2si	16(%r8), %ecx
	movq	_OBJC_IVAR_$_NSWindowEvent.size_x(%rip), %rdx
	movl	%ecx, (%rax,%rdx)
	cvttsd2si	24(%r8), %ecx
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rdx
	movl	%ecx, (%rax,%rdx)
LBB1_9:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent setEvent:andFunc:andParam:]
"-[NSWindowEvent setEvent:andFunc:andParam:]": ## @"\01-[NSWindowEvent setEvent:andFunc:andParam:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	addq	%rdi, %rax
	movslq	%edx, %rsi
	movq	%rcx, (%rax,%rsi,8)
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	addq	%rdi, %rax
	movq	%r8, (%rax,%rsi,8)
	cmpl	$32, %esi
	je	LBB2_3
## %bb.1:
	cmpl	$6, %edx
	jne	LBB2_2
LBB2_3:                                 ## %.sink.split
	xorl	%edx, %edx
	testq	%rcx, %rcx
	setne	%dl
	movq	_OBJC_SELECTOR_REFERENCES_.2(%rip), %rsi
	popq	%rbp
	jmpq	*_objc_msgSend@GOTPCREL(%rip) ## TAILCALL
LBB2_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent setKeyRepeat:]
"-[NSWindowEvent setKeyRepeat:]":       ## @"\01-[NSWindowEvent setKeyRepeat:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_IVAR_$_NSWindowEvent.keyrepeat(%rip), %rax
	movl	%edx, (%rdi,%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent acceptsFirstResponder]
"-[NSWindowEvent acceptsFirstResponder]": ## @"\01-[NSWindowEvent acceptsFirstResponder]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent flagsChanged:]
"-[NSWindowEvent flagsChanged:]":       ## @"\01-[NSWindowEvent flagsChanged:]"
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
	movq	%rdi, %r14
	movq	_OBJC_SELECTOR_REFERENCES_.4(%rip), %rsi
	movq	%rdx, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	%rax, %r15
	movq	_OBJC_IVAR_$_NSWindowEvent.keyflag(%rip), %r12
	movl	(%r14,%r12), %eax
	movl	%eax, %ecx
	xorl	%r15d, %ecx
	je	LBB5_10
## %bb.1:                               ## %.preheader.preheader
	movl	$255, %ebx
	.p2align	4, 0x90
LBB5_2:                                 ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	leal	1(%rbx), %edx
	movzbl	%dl, %edx
	incl	%ebx
	btl	%edx, %ecx
	jae	LBB5_2
## %bb.3:
	cmpl	%r15d, %eax
	jae	LBB5_6
## %bb.4:
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rcx
	movq	16(%r14,%rcx), %rcx
	testq	%rcx, %rcx
	je	LBB5_6
## %bb.5:
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	16(%r14,%rax), %rsi
	movl	%ebx, %edi
	xorl	%eax, %eax
	callq	*%rcx
	movl	(%r14,%r12), %eax
LBB5_6:
	cmpl	%r15d, %eax
	jbe	LBB5_9
## %bb.7:
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	24(%r14,%rax), %rcx
	testq	%rcx, %rcx
	je	LBB5_9
## %bb.8:
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	24(%r14,%rax), %rsi
	movl	%ebx, %edi
	xorl	%eax, %eax
	callq	*%rcx
LBB5_9:
	movl	%r15d, (%r14,%r12)
LBB5_10:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent keyDown:]
"-[NSWindowEvent keyDown:]":            ## @"\01-[NSWindowEvent keyDown:]"
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
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	_OBJC_IVAR_$_NSWindowEvent.keyrepeat(%rip), %rax
	cmpl	$0, (%rdi,%rax)
	jne	LBB6_2
## %bb.1:
	movq	_OBJC_SELECTOR_REFERENCES_.6(%rip), %rsi
	movq	%r14, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	testb	%al, %al
	jne	LBB6_3
LBB6_2:
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	16(%rbx,%rax), %rax
	testq	%rax, %rax
	je	LBB6_3
## %bb.4:
	movq	_OBJC_SELECTOR_REFERENCES_.8(%rip), %rsi
	movq	%r14, %rdi
	movq	%rax, %r14
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movzwl	%ax, %edi
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	16(%rbx,%rax), %rsi
	xorl	%eax, %eax
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rcx                   ## TAILCALL
LBB6_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent keyUp:]
"-[NSWindowEvent keyUp:]":              ## @"\01-[NSWindowEvent keyUp:]"
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
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	24(%rdi,%rax), %rax
	testq	%rax, %rax
	je	LBB7_1
## %bb.2:
	movq	%rdi, %rbx
	movq	_OBJC_SELECTOR_REFERENCES_.8(%rip), %rsi
	movq	%rdx, %rdi
	movq	%rax, %r14
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movzwl	%ax, %edi
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	24(%rbx,%rax), %rsi
	xorl	%eax, %eax
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rcx                   ## TAILCALL
LBB7_1:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent mouseDown:]
"-[NSWindowEvent mouseDown:]":          ## @"\01-[NSWindowEvent mouseDown:]"
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
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r15
	movq	%rdx, %rdi
	callq	*%r15
	movsd	%xmm0, -32(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -40(%rbp)        ## 8-byte Spill
	movq	_OBJC_SELECTOR_REFERENCES_.12(%rip), %rsi
	movq	%rbx, %rdi
	callq	*%r15
	cmpq	$27, %rax
	ja	LBB8_6
## %bb.1:
	movl	$70, %ecx
	btq	%rax, %rcx
	jb	LBB8_2
## %bb.3:
	movl	$152, %ecx
	btq	%rax, %rcx
	jb	LBB8_9
## %bb.4:
	movl	$234881024, %ecx        ## imm = 0xE000000
	btq	%rax, %rcx
	jae	LBB8_6
## %bb.5:
	movl	$3, %edi
	jmp	LBB8_7
LBB8_2:
	movl	$1, %edi
	jmp	LBB8_7
LBB8_9:
	movl	$2, %edi
	jmp	LBB8_7
LBB8_6:
	xorl	%edi, %edi
LBB8_7:                                 ## %get_mouse_button.exit
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	32(%r14,%rax), %r8
	testq	%r8, %r8
	je	LBB8_8
## %bb.10:
	cvttsd2si	-32(%rbp), %esi ## 8-byte Folded Reload
	cvttsd2si	-40(%rbp), %edx ## 8-byte Folded Reload
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%edx
	addl	(%r14,%rax), %edx
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	32(%r14,%rax), %rcx
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r8                    ## TAILCALL
LBB8_8:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent rightMouseDown:]
"-[NSWindowEvent rightMouseDown:]":     ## @"\01-[NSWindowEvent rightMouseDown:]"
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
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r15
	movq	%rdx, %rdi
	callq	*%r15
	movsd	%xmm0, -32(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -40(%rbp)        ## 8-byte Spill
	movq	_OBJC_SELECTOR_REFERENCES_.12(%rip), %rsi
	movq	%rbx, %rdi
	callq	*%r15
	cmpq	$27, %rax
	ja	LBB9_6
## %bb.1:
	movl	$70, %ecx
	btq	%rax, %rcx
	jb	LBB9_2
## %bb.3:
	movl	$152, %ecx
	btq	%rax, %rcx
	jb	LBB9_9
## %bb.4:
	movl	$234881024, %ecx        ## imm = 0xE000000
	btq	%rax, %rcx
	jae	LBB9_6
## %bb.5:
	movl	$3, %edi
	jmp	LBB9_7
LBB9_2:
	movl	$1, %edi
	jmp	LBB9_7
LBB9_9:
	movl	$2, %edi
	jmp	LBB9_7
LBB9_6:
	xorl	%edi, %edi
LBB9_7:                                 ## %get_mouse_button.exit
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	32(%r14,%rax), %r8
	testq	%r8, %r8
	je	LBB9_8
## %bb.10:
	cvttsd2si	-32(%rbp), %esi ## 8-byte Folded Reload
	cvttsd2si	-40(%rbp), %edx ## 8-byte Folded Reload
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%edx
	addl	(%r14,%rax), %edx
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	32(%r14,%rax), %rcx
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r8                    ## TAILCALL
LBB9_8:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent otherMouseDown:]
"-[NSWindowEvent otherMouseDown:]":     ## @"\01-[NSWindowEvent otherMouseDown:]"
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
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r15
	movq	%rdx, %rdi
	callq	*%r15
	movsd	%xmm0, -32(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -40(%rbp)        ## 8-byte Spill
	movq	_OBJC_SELECTOR_REFERENCES_.12(%rip), %rsi
	movq	%rbx, %rdi
	callq	*%r15
	cmpq	$27, %rax
	ja	LBB10_6
## %bb.1:
	movl	$70, %ecx
	btq	%rax, %rcx
	jb	LBB10_2
## %bb.3:
	movl	$152, %ecx
	btq	%rax, %rcx
	jb	LBB10_9
## %bb.4:
	movl	$234881024, %ecx        ## imm = 0xE000000
	btq	%rax, %rcx
	jae	LBB10_6
## %bb.5:
	movl	$3, %edi
	jmp	LBB10_7
LBB10_2:
	movl	$1, %edi
	jmp	LBB10_7
LBB10_9:
	movl	$2, %edi
	jmp	LBB10_7
LBB10_6:
	xorl	%edi, %edi
LBB10_7:                                ## %get_mouse_button.exit
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	32(%r14,%rax), %r8
	testq	%r8, %r8
	je	LBB10_8
## %bb.10:
	cvttsd2si	-32(%rbp), %esi ## 8-byte Folded Reload
	cvttsd2si	-40(%rbp), %edx ## 8-byte Folded Reload
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%edx
	addl	(%r14,%rax), %edx
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	32(%r14,%rax), %rcx
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r8                    ## TAILCALL
LBB10_8:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent mouseUp:]
"-[NSWindowEvent mouseUp:]":            ## @"\01-[NSWindowEvent mouseUp:]"
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
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r15
	movq	%rdx, %rdi
	callq	*%r15
	movsd	%xmm0, -32(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -40(%rbp)        ## 8-byte Spill
	movq	_OBJC_SELECTOR_REFERENCES_.12(%rip), %rsi
	movq	%rbx, %rdi
	callq	*%r15
	cmpq	$27, %rax
	ja	LBB11_6
## %bb.1:
	movl	$70, %ecx
	btq	%rax, %rcx
	jb	LBB11_2
## %bb.3:
	movl	$152, %ecx
	btq	%rax, %rcx
	jb	LBB11_9
## %bb.4:
	movl	$234881024, %ecx        ## imm = 0xE000000
	btq	%rax, %rcx
	jae	LBB11_6
## %bb.5:
	movl	$3, %edi
	jmp	LBB11_7
LBB11_2:
	movl	$1, %edi
	jmp	LBB11_7
LBB11_9:
	movl	$2, %edi
	jmp	LBB11_7
LBB11_6:
	xorl	%edi, %edi
LBB11_7:                                ## %get_mouse_button.exit
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	40(%r14,%rax), %r8
	testq	%r8, %r8
	je	LBB11_8
## %bb.10:
	cvttsd2si	-32(%rbp), %esi ## 8-byte Folded Reload
	cvttsd2si	-40(%rbp), %edx ## 8-byte Folded Reload
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%edx
	addl	(%r14,%rax), %edx
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	40(%r14,%rax), %rcx
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r8                    ## TAILCALL
LBB11_8:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent rightMouseUp:]
"-[NSWindowEvent rightMouseUp:]":       ## @"\01-[NSWindowEvent rightMouseUp:]"
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
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r15
	movq	%rdx, %rdi
	callq	*%r15
	movsd	%xmm0, -32(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -40(%rbp)        ## 8-byte Spill
	movq	_OBJC_SELECTOR_REFERENCES_.12(%rip), %rsi
	movq	%rbx, %rdi
	callq	*%r15
	cmpq	$27, %rax
	ja	LBB12_6
## %bb.1:
	movl	$70, %ecx
	btq	%rax, %rcx
	jb	LBB12_2
## %bb.3:
	movl	$152, %ecx
	btq	%rax, %rcx
	jb	LBB12_9
## %bb.4:
	movl	$234881024, %ecx        ## imm = 0xE000000
	btq	%rax, %rcx
	jae	LBB12_6
## %bb.5:
	movl	$3, %edi
	jmp	LBB12_7
LBB12_2:
	movl	$1, %edi
	jmp	LBB12_7
LBB12_9:
	movl	$2, %edi
	jmp	LBB12_7
LBB12_6:
	xorl	%edi, %edi
LBB12_7:                                ## %get_mouse_button.exit
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	40(%r14,%rax), %r8
	testq	%r8, %r8
	je	LBB12_8
## %bb.10:
	cvttsd2si	-32(%rbp), %esi ## 8-byte Folded Reload
	cvttsd2si	-40(%rbp), %edx ## 8-byte Folded Reload
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%edx
	addl	(%r14,%rax), %edx
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	40(%r14,%rax), %rcx
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r8                    ## TAILCALL
LBB12_8:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent otherMouseUp:]
"-[NSWindowEvent otherMouseUp:]":       ## @"\01-[NSWindowEvent otherMouseUp:]"
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
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r15
	movq	%rdx, %rdi
	callq	*%r15
	movsd	%xmm0, -32(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -40(%rbp)        ## 8-byte Spill
	movq	_OBJC_SELECTOR_REFERENCES_.12(%rip), %rsi
	movq	%rbx, %rdi
	callq	*%r15
	cmpq	$27, %rax
	ja	LBB13_6
## %bb.1:
	movl	$70, %ecx
	btq	%rax, %rcx
	jb	LBB13_2
## %bb.3:
	movl	$152, %ecx
	btq	%rax, %rcx
	jb	LBB13_9
## %bb.4:
	movl	$234881024, %ecx        ## imm = 0xE000000
	btq	%rax, %rcx
	jae	LBB13_6
## %bb.5:
	movl	$3, %edi
	jmp	LBB13_7
LBB13_2:
	movl	$1, %edi
	jmp	LBB13_7
LBB13_9:
	movl	$2, %edi
	jmp	LBB13_7
LBB13_6:
	xorl	%edi, %edi
LBB13_7:                                ## %get_mouse_button.exit
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	40(%r14,%rax), %r8
	testq	%r8, %r8
	je	LBB13_8
## %bb.10:
	cvttsd2si	-32(%rbp), %esi ## 8-byte Folded Reload
	cvttsd2si	-40(%rbp), %edx ## 8-byte Folded Reload
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%edx
	addl	(%r14,%rax), %edx
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	40(%r14,%rax), %rcx
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r8                    ## TAILCALL
LBB13_8:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent mouseMoved:]
"-[NSWindowEvent mouseMoved:]":         ## @"\01-[NSWindowEvent mouseMoved:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	%rdx, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	48(%rbx,%rax), %rcx
	testq	%rcx, %rcx
	je	LBB14_1
## %bb.2:
	cvttsd2si	%xmm0, %edi
	cvttsd2si	%xmm1, %esi
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%esi
	addl	(%rbx,%rax), %esi
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	48(%rbx,%rax), %rdx
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rcx                   ## TAILCALL
LBB14_1:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent mouseDragged:]
"-[NSWindowEvent mouseDragged:]":       ## @"\01-[NSWindowEvent mouseDragged:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	%rdx, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	48(%rbx,%rax), %rcx
	testq	%rcx, %rcx
	je	LBB15_1
## %bb.2:
	cvttsd2si	%xmm0, %edi
	cvttsd2si	%xmm1, %esi
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%esi
	addl	(%rbx,%rax), %esi
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	48(%rbx,%rax), %rdx
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rcx                   ## TAILCALL
LBB15_1:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent rightMouseDragged:]
"-[NSWindowEvent rightMouseDragged:]":  ## @"\01-[NSWindowEvent rightMouseDragged:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	%rdx, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	48(%rbx,%rax), %rcx
	testq	%rcx, %rcx
	je	LBB16_1
## %bb.2:
	cvttsd2si	%xmm0, %edi
	cvttsd2si	%xmm1, %esi
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%esi
	addl	(%rbx,%rax), %esi
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	48(%rbx,%rax), %rdx
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rcx                   ## TAILCALL
LBB16_1:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent otherMouseDragged:]
"-[NSWindowEvent otherMouseDragged:]":  ## @"\01-[NSWindowEvent otherMouseDragged:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	%rdx, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	48(%rbx,%rax), %rcx
	testq	%rcx, %rcx
	je	LBB17_1
## %bb.2:
	cvttsd2si	%xmm0, %edi
	cvttsd2si	%xmm1, %esi
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%esi
	addl	(%rbx,%rax), %esi
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	48(%rbx,%rax), %rdx
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rcx                   ## TAILCALL
LBB17_1:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function -[NSWindowEvent scrollWheel:]
LCPI18_0:
	.quad	4596373779694328218     ## double 0.20000000000000001
LCPI18_1:
	.quad	-4626998257160447590    ## double -0.20000000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
"-[NSWindowEvent scrollWheel:]":        ## @"\01-[NSWindowEvent scrollWheel:]"
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
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %r15
	cmpq	$0, 32(%rdi,%r15)
	je	LBB18_2
## %bb.1:
	movq	%rdx, %r13
	movq	%rdi, %r14
	movq	_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r12
	movq	%rdx, %rdi
	callq	*%r12
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -56(%rbp)        ## 8-byte Spill
	movq	_OBJC_SELECTOR_REFERENCES_.14(%rip), %rsi
	movq	%r13, %rdi
	callq	*%r12
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	xorl	%eax, %eax
	ucomisd	LCPI18_0(%rip), %xmm0
	seta	%al
	shll	$2, %eax
	movsd	LCPI18_1(%rip), %xmm1   ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$5, %ebx
	cmovbel	%eax, %ebx
	movq	_OBJC_SELECTOR_REFERENCES_.16(%rip), %rsi
	movq	%r13, %rdi
	callq	*%r12
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	ucomisd	LCPI18_0(%rip), %xmm0
	movl	$6, %eax
	cmovbel	%ebx, %eax
	movsd	LCPI18_1(%rip), %xmm1   ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$7, %edi
	cmovbel	%eax, %edi
	testl	%edi, %edi
	je	LBB18_2
## %bb.3:
	cvttsd2si	-48(%rbp), %esi ## 8-byte Folded Reload
	cvttsd2si	-56(%rbp), %edx ## 8-byte Folded Reload
	movq	_OBJC_IVAR_$_NSWindowEvent.size_y(%rip), %rax
	notl	%edx
	addl	(%r14,%rax), %edx
	movq	32(%r14,%r15), %r8
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	32(%r14,%rax), %rcx
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r8                    ## TAILCALL
LBB18_2:
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
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent exposeNotification:]
"-[NSWindowEvent exposeNotification:]": ## @"\01-[NSWindowEvent exposeNotification:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	96(%rdi,%rax), %rcx
	testq	%rcx, %rcx
	je	LBB19_1
## %bb.2:
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	96(%rdi,%rax), %rdi
	xorl	%eax, %eax
	popq	%rbp
	jmpq	*%rcx                   ## TAILCALL
LBB19_1:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent closeNotification:]
"-[NSWindowEvent closeNotification:]":  ## @"\01-[NSWindowEvent closeNotification:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_IVAR_$_NSWindowEvent.event_funct(%rip), %rax
	movq	136(%rdi,%rax), %rcx
	testq	%rcx, %rcx
	je	LBB20_1
## %bb.2:
	movq	_OBJC_IVAR_$_NSWindowEvent.event_param(%rip), %rax
	movq	136(%rdi,%rax), %rdi
	xorl	%eax, %eax
	popq	%rbp
	jmpq	*%rcx                   ## TAILCALL
LBB20_1:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[NSWindowEvent deminiaturizeNotification:]
"-[NSWindowEvent deminiaturizeNotification:]": ## @"\01-[NSWindowEvent deminiaturizeNotification:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_SELECTOR_REFERENCES_.18(%rip), %rsi
	popq	%rbp
	jmpq	*_objc_msgSend@GOTPCREL(%rip) ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin initWithRect:andTitle:pfaAttrs:]
"-[MlxWin initWithRect:andTitle:pfaAttrs:]": ## @"\01-[MlxWin initWithRect:andTitle:pfaAttrs:]"
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
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rdi, %r12
	movq	_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rdi
	callq	_objc_alloc
	movq	_OBJC_SELECTOR_REFERENCES_.52(%rip), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	%rax, %r14
	movq	%r12, -64(%rbp)
	movq	L_OBJC_CLASSLIST_SUP_REFS_$_.53(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	_OBJC_SELECTOR_REFERENCES_.55(%rip), %rsi
	movq	40(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	16(%rbp), %r8
	movq	24(%rbp), %rbx
	leaq	-64(%rbp), %rdi
	movq	%r14, %rdx
	pushq	%rax
	pushq	%rcx
	pushq	%rbx
	pushq	%r8
	callq	_objc_msgSendSuper2
	addq	$32, %rsp
	movq	%rax, %rbx
	testq	%rax, %rax
	je	LBB22_2
## %bb.1:
	leaq	16(%rbp), %r12
	movq	_OBJC_CLASSLIST_REFERENCES_$_.56(%rip), %rdi
	callq	_objc_alloc
	movq	_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	movq	24(%r12), %r9
	movq	16(%r12), %r10
	movq	(%r12), %r11
	movq	8(%r12), %r12
	movq	%r14, -48(%rbp)         ## 8-byte Spill
	movq	_objc_msgSend@GOTPCREL(%rip), %r14
	movl	$7, %edx
	movl	$2, %ecx
	movq	%rax, %rdi
	movl	$0, %r8d
	pushq	%r9
	pushq	%r10
	pushq	%r12
	pushq	%r11
	callq	*%r14
	addq	$32, %rsp
	movq	_OBJC_IVAR_$_MlxWin.win(%rip), %r13
	movq	%rax, (%rbx,%r13)
	movq	_OBJC_SELECTOR_REFERENCES_.58(%rip), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	*%r14
	movq	(%rbx,%r13), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.60(%rip), %rsi
	movq	%r15, %rdx
	callq	*%r14
	movq	(%rbx,%r13), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.61(%rip), %rsi
	movl	$1, %edx
	callq	*%r14
	movq	(%rbx,%r13), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.63(%rip), %rsi
	movq	%rbx, %rdx
	callq	*%r14
	movq	_OBJC_SELECTOR_REFERENCES_.65(%rip), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*%r14
	movq	_OBJC_SELECTOR_REFERENCES_.67(%rip), %rsi
	movq	%rax, %rdi
	callq	*%r14
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*%r14
	movq	_OBJC_SELECTOR_REFERENCES_.69(%rip), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	*%r14
	movq	_OBJC_SELECTOR_REFERENCES_.71(%rip), %rsi
	movq	%rbx, %rdi
	callq	*%r14
	movq	_OBJC_SELECTOR_REFERENCES_.73(%rip), %rsi
	movq	%rbx, %rdi
	movq	%rbx, %rdx
	callq	*%r14
	movq	_OBJC_CLASSLIST_REFERENCES_$_.74(%rip), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.76(%rip), %r15
	movq	%r15, %rsi
	callq	*%r14
	movq	(%rbx,%r13), %rdx
	movq	_OBJC_SELECTOR_REFERENCES_.18(%rip), %rcx
	movq	_OBJC_SELECTOR_REFERENCES_.78(%rip), %r12
	leaq	L__unnamed_cfstring_(%rip), %r8
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rdx, %r9
	callq	*%r14
	movq	_OBJC_CLASSLIST_REFERENCES_$_.74(%rip), %rdi
	movq	%r15, %rsi
	callq	*%r14
	movq	(%rbx,%r13), %rdx
	movq	_OBJC_SELECTOR_REFERENCES_.79(%rip), %rcx
	leaq	L__unnamed_cfstring_.81(%rip), %r8
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rdx, %r9
	callq	*%r14
	movq	_OBJC_CLASSLIST_REFERENCES_$_.74(%rip), %rdi
	movq	%r15, %rsi
	callq	*%r14
	movq	(%rbx,%r13), %rdx
	movq	_OBJC_SELECTOR_REFERENCES_.82(%rip), %rcx
	leaq	L__unnamed_cfstring_.84(%rip), %r8
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rdx, %r9
	callq	*%r14
	leaq	16(%rbp), %rdx
	cvttsd2si	16(%rdx), %eax
	movq	_OBJC_IVAR_$_MlxWin.size_x(%rip), %rcx
	movl	%eax, (%rbx,%rcx)
	cvttsd2si	24(%rdx), %eax
	movq	_OBJC_IVAR_$_MlxWin.size_y(%rip), %rcx
	movl	%eax, (%rbx,%rcx)
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	callq	_glClearColor
	movl	$16384, %edi            ## imm = 0x4000
	callq	_glClear
	callq	_glFlush
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	*_objc_release@GOTPCREL(%rip)
LBB22_2:
	movq	%rbx, %rax
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
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function -[MlxWin pixel_management]
LCPI23_0:
	.long	4278190080              ## 0xff000000
	.long	4278190080              ## 0xff000000
	.long	4278190080              ## 0xff000000
	.long	4278190080              ## 0xff000000
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
"-[MlxWin pixel_management]":           ## @"\01-[MlxWin pixel_management]"
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
	movq	%rdi, %r15
	movq	_OBJC_IVAR_$_MlxWin.glsl(%rip), %rax
	leaq	(%rdi,%rax), %r14
	movq	$0, (%rdi,%rax)
	movq	$0, 8(%rdi,%rax)
	movq	$0, 16(%rdi,%rax)
	movq	$0, 24(%rdi,%rax)
	movq	$0, 32(%rdi,%rax)
	movq	$0, 40(%rdi,%rax)
	movq	$0, 48(%rdi,%rax)
	movq	$0, 56(%rdi,%rax)
	movq	$0, 64(%rdi,%rax)
	movq	$0, 72(%rdi,%rax)
	movq	$0, 80(%rdi,%rax)
	movq	$0, 88(%rdi,%rax)
	movl	$2929, %edi             ## imm = 0xB71
	callq	_glDisable
	movq	_OBJC_IVAR_$_MlxWin.pixel_vbuffer(%rip), %rbx
	leaq	(%r15,%rbx), %rsi
	movl	$1, %edi
	callq	_glGenBuffers
	movl	(%r15,%rbx), %esi
	movl	$34962, %edi            ## imm = 0x8892
	callq	_glBindBuffer
	leaq	_pixel_vertexes(%rip), %rdx
	movl	$32, %esi
	movl	$34962, %edi            ## imm = 0x8892
	movl	$35048, %ecx            ## imm = 0x88E8
	callq	_glBufferData
	movq	_OBJC_IVAR_$_MlxWin.pixel_texture(%rip), %rbx
	leaq	(%r15,%rbx), %rsi
	movl	$1, %edi
	callq	_glGenTextures
	movl	(%r15,%rbx), %esi
	movl	$3553, %edi             ## imm = 0xDE1
	callq	_glBindTexture
	movl	$3553, %edi             ## imm = 0xDE1
	movl	$10241, %esi            ## imm = 0x2801
	movl	$9728, %edx             ## imm = 0x2600
	callq	_glTexParameteri
	movl	$3553, %edi             ## imm = 0xDE1
	movl	$10240, %esi            ## imm = 0x2800
	movl	$9728, %edx             ## imm = 0x2600
	callq	_glTexParameteri
	movl	$3553, %edi             ## imm = 0xDE1
	movl	$10242, %esi            ## imm = 0x2802
	movl	$33071, %edx            ## imm = 0x812F
	callq	_glTexParameteri
	movl	$3553, %edi             ## imm = 0xDE1
	movl	$10243, %esi            ## imm = 0x2803
	movl	$33071, %edx            ## imm = 0x812F
	callq	_glTexParameteri
	movq	_OBJC_IVAR_$_MlxWin.size_x(%rip), %rax
	movslq	(%r15,%rax), %rbx
	movq	_OBJC_IVAR_$_MlxWin.size_y(%rip), %r12
	movslq	(%r15,%r12), %r13
	movq	%rbx, %rdi
	imulq	%r13, %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	_OBJC_IVAR_$_MlxWin.pixtexbuff(%rip), %rcx
	movq	%rax, (%r15,%rcx)
	imull	%ebx, %r13d
	movq	_OBJC_IVAR_$_MlxWin.pixel_nb(%rip), %r8
	movl	%r13d, %edx
	subl	$1, %edx
	movl	%edx, (%r15,%r8)
	jb	LBB23_13
## %bb.1:                               ## %.lr.ph.preheader
	cmpl	$8, %r13d
	jb	LBB23_9
## %bb.2:                               ## %vector.ph
	movl	%r13d, %r9d
	andl	$-8, %r9d
	leal	-8(%r9), %esi
	movl	%esi, %r10d
	shrl	$3, %r10d
	incl	%r10d
	movl	%r10d, %r11d
	andl	$3, %r11d
	xorl	%ecx, %ecx
	cmpl	$24, %esi
	jb	LBB23_5
## %bb.3:                               ## %vector.ph.new
	leal	-25(%r13), %esi
	movl	%r11d, %edi
	subl	%r10d, %edi
	xorl	%ecx, %ecx
	movaps	LCPI23_0(%rip), %xmm0   ## xmm0 = [4278190080,4278190080,4278190080,4278190080]
	.p2align	4, 0x90
LBB23_4:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	leal	24(%rsi), %ebx
	movslq	%ebx, %rbx
	movups	%xmm0, -12(%rax,%rbx,4)
	movups	%xmm0, -28(%rax,%rbx,4)
	leal	16(%rsi), %ebx
	movslq	%ebx, %rbx
	movups	%xmm0, -12(%rax,%rbx,4)
	movups	%xmm0, -28(%rax,%rbx,4)
	leal	8(%rsi), %ebx
	movslq	%ebx, %rbx
	movups	%xmm0, -12(%rax,%rbx,4)
	movups	%xmm0, -28(%rax,%rbx,4)
	movslq	%esi, %rsi
	movups	%xmm0, -12(%rax,%rsi,4)
	movups	%xmm0, -28(%rax,%rsi,4)
	addl	$32, %ecx
	addl	$-32, %esi
	addl	$4, %edi
	jne	LBB23_4
LBB23_5:                                ## %middle.block.unr-lcssa
	testl	%r11d, %r11d
	je	LBB23_8
## %bb.6:                               ## %vector.body.epil.preheader
	notl	%ecx
	addl	%r13d, %ecx
	negl	%r11d
	movaps	LCPI23_0(%rip), %xmm0   ## xmm0 = [4278190080,4278190080,4278190080,4278190080]
	.p2align	4, 0x90
LBB23_7:                                ## %vector.body.epil
                                        ## =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	movups	%xmm0, -12(%rax,%rcx,4)
	movups	%xmm0, -28(%rax,%rcx,4)
	addl	$-8, %ecx
	incl	%r11d
	jne	LBB23_7
LBB23_8:                                ## %middle.block
	subl	%r9d, %edx
	cmpl	%r9d, %r13d
	je	LBB23_12
LBB23_9:                                ## %.lr.ph.preheader51
	movslq	%edx, %rcx
	negl	%edx
	leaq	(%rax,%rcx,4), %rcx
	.p2align	4, 0x90
LBB23_10:                               ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	$-16777216, (%rcx)      ## imm = 0xFF000000
	incl	%edx
	addq	$-4, %rcx
	cmpl	$1, %edx
	jne	LBB23_10
## %bb.11:                              ## %._crit_edge.loopexit.loopexit
	negl	%edx
LBB23_12:                               ## %._crit_edge.loopexit
	movl	%edx, (%r15,%r8)
LBB23_13:                               ## %._crit_edge
	movl	$0, (%r15,%r8)
	movq	_OBJC_IVAR_$_MlxWin.size_x(%rip), %rcx
	movl	(%r15,%rcx), %ecx
	movl	(%r15,%r12), %r8d
	subq	$8, %rsp
	xorl	%ebx, %ebx
	movl	$3553, %edi             ## imm = 0xDE1
	xorl	%esi, %esi
	movl	$32856, %edx            ## imm = 0x8058
	xorl	%r9d, %r9d
	pushq	%rax
	pushq	$5121                   ## imm = 0x1401
	pushq	$32993                  ## imm = 0x80E1
	callq	_glTexImage2D
	addq	$32, %rsp
	movq	%r14, %rdi
	callq	_mlx_shaders
	testl	%eax, %eax
	jne	LBB23_15
## %bb.14:
	movl	8(%r14), %edi
	callq	_glUseProgram
	movl	8(%r14), %edi
	leaq	L_.str.85(%rip), %rbx
	movq	%rbx, %rsi
	callq	_glGetUniformLocation
	movl	%eax, 16(%r14)
	movl	8(%r14), %edi
	leaq	L_.str.86(%rip), %r15
	movq	%r15, %rsi
	callq	_glGetAttribLocation
	movl	%eax, 12(%r14)
	movl	32(%r14), %edi
	callq	_glUseProgram
	movl	32(%r14), %edi
	movq	%rbx, %rsi
	callq	_glGetUniformLocation
	movl	%eax, 44(%r14)
	movl	32(%r14), %edi
	leaq	L_.str.87(%rip), %rsi
	callq	_glGetUniformLocation
	movl	%eax, 48(%r14)
	movl	32(%r14), %edi
	leaq	L_.str.88(%rip), %rsi
	callq	_glGetUniformLocation
	movl	%eax, 52(%r14)
	movl	32(%r14), %edi
	leaq	L_.str.89(%rip), %r12
	movq	%r12, %rsi
	callq	_glGetUniformLocation
	movl	%eax, 40(%r14)
	movl	32(%r14), %edi
	movq	%r15, %rsi
	callq	_glGetAttribLocation
	movl	%eax, 36(%r14)
	movl	64(%r14), %edi
	callq	_glUseProgram
	movl	64(%r14), %edi
	movq	%rbx, %rsi
	callq	_glGetUniformLocation
	movl	%eax, 76(%r14)
	movl	64(%r14), %edi
	leaq	L_.str.90(%rip), %rsi
	callq	_glGetUniformLocation
	movl	%eax, 80(%r14)
	movl	64(%r14), %edi
	leaq	L_.str.91(%rip), %rsi
	callq	_glGetUniformLocation
	movl	%eax, 84(%r14)
	movl	64(%r14), %edi
	leaq	L_.str.92(%rip), %rsi
	callq	_glGetUniformLocation
	movl	%eax, 88(%r14)
	movl	64(%r14), %edi
	leaq	L_.str.93(%rip), %rsi
	callq	_glGetUniformLocation
	movl	%eax, 92(%r14)
	movl	64(%r14), %edi
	movq	%r12, %rsi
	callq	_glGetUniformLocation
	movl	%eax, 72(%r14)
	movl	64(%r14), %edi
	movq	%r15, %rsi
	callq	_glGetAttribLocation
	movl	%eax, 68(%r14)
	callq	_glFlush
	movl	$1, %ebx
LBB23_15:
	movl	%ebx, %eax
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
	.p2align	4, 0x90         ## -- Begin function -[MlxWin ctxNeedsUpdate]
"-[MlxWin ctxNeedsUpdate]":             ## @"\01-[MlxWin ctxNeedsUpdate]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_IVAR_$_MlxWin.ctx(%rip), %rax
	movq	(%rdi,%rax), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.95(%rip), %rsi
	popq	%rbp
	jmpq	*_objc_msgSend@GOTPCREL(%rip) ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin selectGLContext]
"-[MlxWin selectGLContext]":            ## @"\01-[MlxWin selectGLContext]"
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
	movq	%rdi, %r15
	movq	_OBJC_CLASSLIST_REFERENCES_$_.96(%rip), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.98(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r13
	callq	*%r13
	movq	%rax, %rbx
	movq	_OBJC_SELECTOR_REFERENCES_.65(%rip), %r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %r12
	callq	*%r13
	cmpq	%rax, %rbx
	je	LBB25_1
## %bb.2:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*%r12
	movq	_OBJC_SELECTOR_REFERENCES_.67(%rip), %rsi
	movq	%rax, %rdi
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   ## TAILCALL
LBB25_1:
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
	.p2align	4, 0x90         ## -- Begin function -[MlxWin flushGLContext]
"-[MlxWin flushGLContext]":             ## @"\01-[MlxWin flushGLContext]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	_OBJC_SELECTOR_REFERENCES_.65(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %rbx
	callq	*%rbx
	movq	_OBJC_SELECTOR_REFERENCES_.100(%rip), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rax                   ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin ctx]
"-[MlxWin ctx]":                        ## @"\01-[MlxWin ctx]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_IVAR_$_MlxWin.ctx(%rip), %rax
	movq	(%rdi,%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin win]
"-[MlxWin win]":                        ## @"\01-[MlxWin win]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_IVAR_$_MlxWin.win(%rip), %rax
	movq	(%rdi,%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin pixelPutColor:X:Y:]
"-[MlxWin pixelPutColor:X:Y:]":         ## @"\01-[MlxWin pixelPutColor:X:Y:]"
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
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	%edx, -36(%rbp)
	movq	_OBJC_IVAR_$_MlxWin.pixel_nb(%rip), %r12
	incl	(%rdi,%r12)
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movq	_OBJC_IVAR_$_MlxWin.pixel_vbuffer(%rip), %rax
	movl	(%rdi,%rax), %esi
	movl	$3553, %edi             ## imm = 0xDE1
	callq	_glBindTexture
	subq	$8, %rsp
	leaq	-36(%rbp), %rax
	movl	$3553, %edi             ## imm = 0xDE1
	xorl	%esi, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	movl	$1, %r8d
	movl	$1, %r9d
	pushq	%rax
	pushq	$5121                   ## imm = 0x1401
	pushq	$32993                  ## imm = 0x80E1
	callq	_glTexSubImage2D
	addq	$32, %rsp
	cmpl	$200000, (%rbx,%r12)    ## imm = 0x30D40
	jl	LBB29_2
## %bb.1:
	movq	_OBJC_SELECTOR_REFERENCES_.102(%rip), %rsi
	movq	%rbx, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
LBB29_2:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin destroyPixelManagement]
"-[MlxWin destroyPixelManagement]":     ## @"\01-[MlxWin destroyPixelManagement]"
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
	movq	%rdi, %rbx
	movq	_OBJC_IVAR_$_MlxWin.pixtexbuff(%rip), %rax
	movq	(%rdi,%rax), %rdi
	callq	_free
	movq	_OBJC_SELECTOR_REFERENCES_.104(%rip), %rsi
	movq	%rbx, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	_OBJC_IVAR_$_MlxWin.pixel_vbuffer(%rip), %rsi
	addq	%rbx, %rsi
	movl	$1, %edi
	callq	_glDeleteBuffers
	movq	_OBJC_IVAR_$_MlxWin.pixel_texture(%rip), %rsi
	addq	%rbx, %rsi
	movl	$1, %edi
	callq	_glDeleteTextures
	movq	_OBJC_IVAR_$_MlxWin.glsl(%rip), %r14
	movl	8(%rbx,%r14), %edi
	callq	_glDeleteProgram
	movl	32(%rbx,%r14), %edi
	callq	_glDeleteProgram
	movl	(%rbx,%r14), %edi
	callq	_glDeleteShader
	movl	4(%rbx,%r14), %edi
	callq	_glDeleteShader
	movl	24(%rbx,%r14), %edi
	callq	_glDeleteShader
	movl	28(%rbx,%r14), %edi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_glDeleteShader         ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin destroyMe]
"-[MlxWin destroyMe]":                  ## @"\01-[MlxWin destroyMe]"
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
	movq	%rdi, %rbx
	movq	_OBJC_CLASSLIST_REFERENCES_$_.74(%rip), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.76(%rip), %r14
	movq	_objc_msgSend@GOTPCREL(%rip), %r12
	movq	%r14, %rsi
	callq	*%r12
	movq	_OBJC_IVAR_$_MlxWin.win(%rip), %r13
	movq	(%rbx,%r13), %rdx
	movq	_OBJC_SELECTOR_REFERENCES_.106(%rip), %r15
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	*%r12
	movq	_OBJC_CLASSLIST_REFERENCES_$_.74(%rip), %rdi
	movq	%r14, %rsi
	callq	*%r12
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%r12
	movq	(%rbx,%r13), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.108(%rip), %rsi
	callq	*%r12
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*_objc_release@GOTPCREL(%rip) ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin setEvent:andFunc:andParam:]
"-[MlxWin setEvent:andFunc:andParam:]": ## @"\01-[MlxWin setEvent:andFunc:andParam:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_IVAR_$_MlxWin.win(%rip), %rax
	movq	(%rdi,%rax), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.109(%rip), %rsi
	popq	%rbp
	jmpq	*_objc_msgSend@GOTPCREL(%rip) ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin setKeyRepeat:]
"-[MlxWin setKeyRepeat:]":              ## @"\01-[MlxWin setKeyRepeat:]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_OBJC_IVAR_$_MlxWin.win(%rip), %rax
	movq	(%rdi,%rax), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.61(%rip), %rsi
	popq	%rbp
	jmpq	*_objc_msgSend@GOTPCREL(%rip) ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin clearWin]
"-[MlxWin clearWin]":                   ## @"\01-[MlxWin clearWin]"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	callq	_glClearColor
	movl	$16384, %edi            ## imm = 0x4000
	popq	%rbp
	jmp	_glClear                ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin mlx_gl_draw_img:andCtx:andX:andY:]
"-[MlxWin mlx_gl_draw_img:andCtx:andX:andY:]": ## @"\01-[MlxWin mlx_gl_draw_img:andCtx:andX:andY:]"
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
	movl	%r9d, -48(%rbp)         ## 4-byte Spill
	movl	%r8d, -44(%rbp)         ## 4-byte Spill
	movq	%rcx, %r15
	movq	%rdx, -56(%rbp)         ## 8-byte Spill
	movq	%rdi, %rbx
	movq	_OBJC_IVAR_$_MlxWin.pixel_nb(%rip), %rax
	cmpl	$0, (%rdi,%rax)
	jle	LBB35_2
## %bb.1:
	movq	_OBJC_SELECTOR_REFERENCES_.102(%rip), %rsi
	movq	%rbx, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
LBB35_2:
	movq	_OBJC_IVAR_$_MlxWin.glsl(%rip), %r12
	movl	32(%rbx,%r12), %edi
	callq	_glUseProgram
	movl	$33984, %edi            ## imm = 0x84C0
	callq	_glActiveTexture
	movl	(%r15), %esi
	movl	$3553, %edi             ## imm = 0xDE1
	callq	_glBindTexture
	movl	44(%rbx,%r12), %edi
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	callq	_glUniform1i
	movl	40(%rbx,%r12), %edi
	movq	_OBJC_IVAR_$_MlxWin.size_x(%rip), %rax
	movl	(%rbx,%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	cvtsi2ss	%ecx, %xmm0
	movq	_OBJC_IVAR_$_MlxWin.size_y(%rip), %r14
	movl	(%rbx,%r14), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	cvtsi2ss	%ecx, %xmm1
	callq	_glUniform2f
	movl	48(%rbx,%r12), %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-44(%rbp), %xmm0 ## 4-byte Folded Reload
	movl	(%rbx,%r14), %eax
	subl	-48(%rbp), %eax         ## 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	callq	_glUniform2f
	movq	-56(%rbp), %rax         ## 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rax), %xmm0
	subl	4(%rax), %r13d
	movl	52(%rbx,%r12), %edi
	xorps	%xmm1, %xmm1
	cvtsi2ss	%r13d, %xmm1
	callq	_glUniform2f
	movl	4(%r15), %esi
	movl	$34962, %edi            ## imm = 0x8892
	callq	_glBindBuffer
	movl	$0, %edi
	movl	$2, %esi
	movl	$5126, %edx             ## imm = 0x1406
	xorl	%ecx, %ecx
	movl	$8, %r8d
	xorl	%r9d, %r9d
	callq	_glVertexAttribPointer
	xorl	%edi, %edi
	callq	_glEnableVertexAttribArray
	movl	$3042, %edi             ## imm = 0xBE2
	callq	_glEnable
	movl	$771, %edi              ## imm = 0x303
	movl	$770, %esi              ## imm = 0x302
	callq	_glBlendFunc
	movl	$32774, %edi            ## imm = 0x8006
	callq	_glBlendEquation
	movl	$6, %edi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	_glDrawArrays
	xorl	%edi, %edi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_glDisableVertexAttribArray ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function -[MlxWin mlx_gl_draw_font:andCtx:andX:andY:andColor:glyphX:glyphY:]
LCPI36_0:
	.long	1132396544              ## float 255
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
"-[MlxWin mlx_gl_draw_font:andCtx:andX:andY:andColor:glyphX:glyphY:]": ## @"\01-[MlxWin mlx_gl_draw_font:andCtx:andX:andY:andColor:glyphX:glyphY:]"
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r9d, %r12d
	movl	%r8d, -68(%rbp)         ## 4-byte Spill
	movq	%rcx, %r14
	movq	%rdx, -80(%rbp)         ## 8-byte Spill
	movq	%rdi, %rbx
	movl	16(%rbp), %ecx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	_OBJC_IVAR_$_MlxWin.pixel_nb(%rip), %rax
	cmpl	$0, (%rdi,%rax)
	jle	LBB36_2
## %bb.1:
	movq	_OBJC_SELECTOR_REFERENCES_.102(%rip), %rsi
	movq	%rbx, %rdi
	movl	%ecx, %r15d
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movl	%r15d, %ecx
LBB36_2:
	movl	%ecx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	LCPI36_0(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movzbl	%ch, %eax
	cvtsi2ss	%eax, %xmm2
	movss	%xmm0, -64(%rbp)
	divss	%xmm1, %xmm2
	movss	%xmm2, -60(%rbp)
	movzbl	%cl, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movl	$1065353216, -52(%rbp)  ## imm = 0x3F800000
	movq	_OBJC_IVAR_$_MlxWin.glsl(%rip), %r13
	movl	64(%rbx,%r13), %edi
	callq	_glUseProgram
	movl	$33984, %edi            ## imm = 0x84C0
	callq	_glActiveTexture
	movl	(%r14), %esi
	movl	$3553, %edi             ## imm = 0xDE1
	callq	_glBindTexture
	movl	76(%rbx,%r13), %edi
	xorl	%esi, %esi
	callq	_glUniform1i
	movl	80(%rbx,%r13), %edi
	leaq	-64(%rbp), %rdx
	movl	$1, %esi
	callq	_glUniform4fv
	movl	72(%rbx,%r13), %edi
	movq	_OBJC_IVAR_$_MlxWin.size_x(%rip), %rax
	movl	(%rbx,%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movq	%r14, %r15
	movq	_OBJC_IVAR_$_MlxWin.size_y(%rip), %r14
	movl	(%rbx,%r14), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm1
	callq	_glUniform2f
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-68(%rbp), %xmm0 ## 4-byte Folded Reload
	notl	%r12d
	addl	(%rbx,%r14), %r12d
	movl	84(%rbx,%r13), %edi
	xorps	%xmm1, %xmm1
	cvtsi2ss	%r12d, %xmm1
	callq	_glUniform2f
	xorps	%xmm0, %xmm0
	cvtsi2ssl	24(%rbp), %xmm0
	movl	88(%rbx,%r13), %edi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	32(%rbp), %xmm1
	callq	_glUniform2f
	movq	-80(%rbp), %rax         ## 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rax), %xmm0
	movl	92(%rbx,%r13), %edi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	4(%rax), %xmm1
	callq	_glUniform2f
	movl	4(%r15), %esi
	movl	$34962, %edi            ## imm = 0x8892
	callq	_glBindBuffer
	movl	$0, %edi
	movl	$2, %esi
	movl	$5126, %edx             ## imm = 0x1406
	xorl	%ecx, %ecx
	movl	$8, %r8d
	xorl	%r9d, %r9d
	callq	_glVertexAttribPointer
	xorl	%edi, %edi
	callq	_glEnableVertexAttribArray
	movl	$3042, %edi             ## imm = 0xBE2
	callq	_glEnable
	movl	$771, %edi              ## imm = 0x303
	movl	$770, %esi              ## imm = 0x302
	callq	_glBlendFunc
	movl	$32774, %edi            ## imm = 0x8006
	callq	_glBlendEquation
	movl	$6, %edi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	_glDrawArrays
	xorl	%edi, %edi
	callq	_glDisableVertexAttribArray
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB36_4
## %bb.3:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB36_4:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[MlxWin mlx_gl_draw]
"-[MlxWin mlx_gl_draw]":                ## @"\01-[MlxWin mlx_gl_draw]"
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
	movq	_OBJC_IVAR_$_MlxWin.pixel_nb(%rip), %r14
	cmpl	$0, (%rdi,%r14)
	jle	LBB37_5
## %bb.1:
	movq	%rdi, %rbx
	movq	_OBJC_IVAR_$_MlxWin.glsl(%rip), %r15
	movl	8(%rdi,%r15), %edi
	callq	_glUseProgram
	movl	$33984, %edi            ## imm = 0x84C0
	callq	_glActiveTexture
	movq	_OBJC_IVAR_$_MlxWin.pixel_vbuffer(%rip), %r12
	movl	(%rbx,%r12), %esi
	movl	$3553, %edi             ## imm = 0xDE1
	callq	_glBindTexture
	movl	16(%rbx,%r15), %edi
	xorl	%esi, %esi
	callq	_glUniform1i
	movl	(%rbx,%r12), %esi
	movl	$34962, %edi            ## imm = 0x8892
	callq	_glBindBuffer
	movl	$0, %edi
	movl	$2, %esi
	movl	$5126, %edx             ## imm = 0x1406
	xorl	%ecx, %ecx
	movl	$8, %r8d
	xorl	%r9d, %r9d
	callq	_glVertexAttribPointer
	xorl	%edi, %edi
	callq	_glEnableVertexAttribArray
	movl	$3042, %edi             ## imm = 0xBE2
	callq	_glEnable
	movl	$771, %edi              ## imm = 0x303
	movl	$770, %esi              ## imm = 0x302
	callq	_glBlendFunc
	movl	$32774, %edi            ## imm = 0x8006
	callq	_glBlendEquation
	movl	$6, %edi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	_glDrawArrays
	xorl	%edi, %edi
	callq	_glDisableVertexAttribArray
	movq	_OBJC_IVAR_$_MlxWin.size_x(%rip), %rcx
	movq	_OBJC_IVAR_$_MlxWin.size_y(%rip), %rdx
	movl	(%rbx,%rdx), %esi
	imull	(%rbx,%rcx), %esi
	movq	_OBJC_IVAR_$_MlxWin.pixtexbuff(%rip), %rax
	subl	$1, %esi
	movl	%esi, (%rbx,%r14)
	jb	LBB37_4
## %bb.2:                               ## %.lr.ph
	movq	(%rbx,%rax), %rdi
	.p2align	4, 0x90
LBB37_3:                                ## =>This Inner Loop Header: Depth=1
	movslq	%esi, %rsi
	movl	$-16777216, (%rdi,%rsi,4) ## imm = 0xFF000000
	movl	(%rbx,%r14), %esi
	subl	$1, %esi
	movl	%esi, (%rbx,%r14)
	jae	LBB37_3
LBB37_4:                                ## %._crit_edge
	movl	(%rbx,%rcx), %ecx
	movl	(%rbx,%rdx), %r8d
	subq	$8, %rsp
	movl	$3553, %edi             ## imm = 0xDE1
	xorl	%esi, %esi
	movl	$32856, %edx            ## imm = 0x8058
	xorl	%r9d, %r9d
	pushq	(%rbx,%rax)
	pushq	$5121                   ## imm = 0x1401
	pushq	$32993                  ## imm = 0x80E1
	callq	_glTexImage2D
	addq	$32, %rsp
	movl	$0, (%rbx,%r14)
LBB37_5:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function mlx_new_window
LCPI38_0:
	.quad	4636737291354636288     ## double 100
	.quad	4636737291354636288     ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mlx_new_window
	.p2align	4, 0x90
_mlx_new_window:                        ## @mlx_new_window
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r14
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %r13
	movl	$32, %edi
	callq	_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	LBB38_4
## %bb.1:
	movq	$0, 8(%rbx)
	movq	8(%r13), %rax
	movq	%rax, 24(%rbx)
	movabsq	$4294967296, %rax       ## imm = 0x100000000
	movq	%rax, 16(%rbx)
	movq	%rbx, 8(%r13)
	cvtsi2sd	%r12d, %xmm0
	cvtsi2sd	%r15d, %xmm1
	movaps	LCPI38_0(%rip), %xmm2   ## xmm2 = [1.0E+2,1.0E+2]
	movaps	%xmm2, -80(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -56(%rbp)
	movq	_OBJC_CLASSLIST_REFERENCES_$_.141(%rip), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.143(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r15
	movl	$1, %ecx
	movq	%r14, %rdx
	callq	*%r15
	movq	%rax, %r14
	movq	_OBJC_CLASSLIST_REFERENCES_$_.144(%rip), %rdi
	callq	_objc_alloc
	movq	_OBJC_SELECTOR_REFERENCES_.145(%rip), %rsi
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	-80(%rbp), %r10
	movq	-72(%rbp), %r11
	leaq	_pfa_attrs(%rip), %rcx
	movq	%rax, %rdi
	movq	%r14, %rdx
	pushq	%r8
	pushq	%r9
	pushq	%r11
	pushq	%r10
	callq	*%r15
	addq	$32, %rsp
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	LBB38_4
## %bb.2:
	movq	_OBJC_SELECTOR_REFERENCES_.146(%rip), %rsi
	movq	%rax, %rdi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	LBB38_4
## %bb.3:
	movq	(%rbx), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.147(%rip), %rsi
	callq	*%r15
	movq	(%rbx), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.148(%rip), %rsi
	callq	*%r15
LBB38_4:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_clear_window       ## -- Begin function mlx_clear_window
	.p2align	4, 0x90
_mlx_clear_window:                      ## @mlx_clear_window
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
	movq	%rsi, %rbx
	movq	(%rsi), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.104(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %r14
	callq	*%r14
	movq	(%rbx), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.149(%rip), %rsi
	callq	*%r14
	incl	16(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_expose_hook        ## -- Begin function mlx_expose_hook
	.p2align	4, 0x90
_mlx_expose_hook:                       ## @mlx_expose_hook
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdx, %r8
	movq	%rsi, %rcx
	movq	(%rdi), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.109(%rip), %rsi
	movl	$12, %edx
	popq	%rbp
	jmpq	*_objc_msgSend@GOTPCREL(%rip) ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_key_hook           ## -- Begin function mlx_key_hook
	.p2align	4, 0x90
_mlx_key_hook:                          ## @mlx_key_hook
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdx, %r8
	movq	%rsi, %rcx
	movq	(%rdi), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.109(%rip), %rsi
	movl	$3, %edx
	popq	%rbp
	jmpq	*_objc_msgSend@GOTPCREL(%rip) ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_mouse_hook         ## -- Begin function mlx_mouse_hook
	.p2align	4, 0x90
_mlx_mouse_hook:                        ## @mlx_mouse_hook
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdx, %r8
	movq	%rsi, %rcx
	movq	(%rdi), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.109(%rip), %rsi
	movl	$4, %edx
	popq	%rbp
	jmpq	*_objc_msgSend@GOTPCREL(%rip) ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_hook               ## -- Begin function mlx_hook
	.p2align	4, 0x90
_mlx_hook:                              ## @mlx_hook
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %edx
	movq	(%rdi), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.109(%rip), %rsi
	popq	%rbp
	jmpq	*_objc_msgSend@GOTPCREL(%rip) ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_do_key_autorepeatoff ## -- Begin function mlx_do_key_autorepeatoff
	.p2align	4, 0x90
_mlx_do_key_autorepeatoff:              ## @mlx_do_key_autorepeatoff
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
	movq	8(%rdi), %rbx
	testq	%rbx, %rbx
	je	LBB44_3
## %bb.1:                               ## %.lr.ph
	movq	_OBJC_SELECTOR_REFERENCES_.61(%rip), %r14
	movq	_objc_msgSend@GOTPCREL(%rip), %r15
	.p2align	4, 0x90
LBB44_2:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	*%r15
	movq	24(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB44_2
LBB44_3:                                ## %._crit_edge
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_do_key_autorepeaton ## -- Begin function mlx_do_key_autorepeaton
	.p2align	4, 0x90
_mlx_do_key_autorepeaton:               ## @mlx_do_key_autorepeaton
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
	movq	8(%rdi), %rbx
	testq	%rbx, %rbx
	je	LBB45_3
## %bb.1:                               ## %.lr.ph
	movq	_OBJC_SELECTOR_REFERENCES_.61(%rip), %r14
	movq	_objc_msgSend@GOTPCREL(%rip), %r15
	.p2align	4, 0x90
LBB45_2:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	callq	*%r15
	movq	24(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB45_2
LBB45_3:                                ## %._crit_edge
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_destroy_window     ## -- Begin function mlx_destroy_window
	.p2align	4, 0x90
_mlx_destroy_window:                    ## @mlx_destroy_window
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
	subq	$32, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%rdi), %rax
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	je	LBB46_6
## %bb.1:                               ## %.lr.ph33
	leaq	-64(%rbp), %rcx
	.p2align	4, 0x90
LBB46_2:                                ## =>This Inner Loop Header: Depth=1
	cmpq	%r15, %rax
	jne	LBB46_4
## %bb.3:                               ##   in Loop: Header=BB46_2 Depth=1
	movq	24(%r15), %rax
	movq	%rax, 24(%rcx)
LBB46_4:                                ##   in Loop: Header=BB46_2 Depth=1
	testq	%rax, %rax
	je	LBB46_6
## %bb.5:                               ## %._crit_edge31
                                        ##   in Loop: Header=BB46_2 Depth=1
	movq	%rax, %rcx
	movq	24(%rax), %rdx
	movq	%rdx, %rax
	testq	%rdx, %rdx
	jne	LBB46_2
LBB46_6:                                ## %.critedge
	movq	-40(%rbp), %rax
	movq	%rax, 8(%r14)
	cmpl	$0, 20(%r15)
	je	LBB46_10
## %bb.7:
	movq	(%r15), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.104(%rip), %rsi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	8(%r15), %rbx
	testq	%rbx, %rbx
	je	LBB46_9
	.p2align	4, 0x90
LBB46_8:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	leaq	4(%rbx), %rsi
	movl	$1, %edi
	callq	_glDeleteBuffers
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	_glDeleteTextures
	movq	16(%rbx), %r12
	movq	%rbx, %rdi
	callq	_free
	movq	%r12, %rbx
	testq	%r12, %r12
	jne	LBB46_8
LBB46_9:                                ## %._crit_edge
	movq	(%r15), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.147(%rip), %rsi
	callq	*_objc_msgSend@GOTPCREL(%rip)
LBB46_10:
	movq	(%r15), %rdi
	movq	_OBJC_SELECTOR_REFERENCES_.148(%rip), %rsi
	callq	*_objc_msgSend@GOTPCREL(%rip)
	movq	%r15, %rdi
	callq	_free
	movq	%r14, %rdi
	callq	_mlx_do_sync
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_pfa_attrs              ## @pfa_attrs
	.p2align	4
_pfa_attrs:
	.long	12                      ## 0xc
	.long	32                      ## 0x20
	.long	99                      ## 0x63
	.long	4096                    ## 0x1000
	.long	0                       ## 0x0

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_NSWindowEvent ## @"OBJC_CLASS_$_NSWindowEvent"
	.p2align	3
_OBJC_CLASS_$_NSWindowEvent:
	.quad	_OBJC_METACLASS_$_NSWindowEvent
	.quad	_OBJC_CLASS_$_NSWindow
	.quad	__objc_empty_cache
	.quad	0
	.quad	__OBJC_CLASS_RO_$_NSWindowEvent

	.section	__DATA,__objc_superrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_SUP_REFS_$_"
L_OBJC_CLASSLIST_SUP_REFS_$_:
	.quad	_OBJC_CLASS_$_NSWindowEvent

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_:                  ## @OBJC_METH_VAR_NAME_
	.asciz	"initWithContentRect:styleMask:backing:defer:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_
_OBJC_SELECTOR_REFERENCES_:
	.quad	L_OBJC_METH_VAR_NAME_

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_NSWindowEvent.event_funct ## @"OBJC_IVAR_$_NSWindowEvent.event_funct"
	.p2align	3
_OBJC_IVAR_$_NSWindowEvent.event_funct:
	.quad	8                       ## 0x8

	.globl	_OBJC_IVAR_$_NSWindowEvent.event_param ## @"OBJC_IVAR_$_NSWindowEvent.event_param"
	.p2align	3
_OBJC_IVAR_$_NSWindowEvent.event_param:
	.quad	264                     ## 0x108

	.globl	_OBJC_IVAR_$_NSWindowEvent.keyrepeat ## @"OBJC_IVAR_$_NSWindowEvent.keyrepeat"
	.p2align	3
_OBJC_IVAR_$_NSWindowEvent.keyrepeat:
	.quad	520                     ## 0x208

	.globl	_OBJC_IVAR_$_NSWindowEvent.keyflag ## @"OBJC_IVAR_$_NSWindowEvent.keyflag"
	.p2align	3
_OBJC_IVAR_$_NSWindowEvent.keyflag:
	.quad	524                     ## 0x20c

	.globl	_OBJC_IVAR_$_NSWindowEvent.size_x ## @"OBJC_IVAR_$_NSWindowEvent.size_x"
	.p2align	3
_OBJC_IVAR_$_NSWindowEvent.size_x:
	.quad	528                     ## 0x210

	.globl	_OBJC_IVAR_$_NSWindowEvent.size_y ## @"OBJC_IVAR_$_NSWindowEvent.size_y"
	.p2align	3
_OBJC_IVAR_$_NSWindowEvent.size_y:
	.quad	532                     ## 0x214

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.1:                ## @OBJC_METH_VAR_NAME_.1
	.asciz	"setAcceptsMouseMovedEvents:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.2
_OBJC_SELECTOR_REFERENCES_.2:
	.quad	L_OBJC_METH_VAR_NAME_.1

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.3:                ## @OBJC_METH_VAR_NAME_.3
	.asciz	"modifierFlags"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.4
_OBJC_SELECTOR_REFERENCES_.4:
	.quad	L_OBJC_METH_VAR_NAME_.3

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.5:                ## @OBJC_METH_VAR_NAME_.5
	.asciz	"isARepeat"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.6
_OBJC_SELECTOR_REFERENCES_.6:
	.quad	L_OBJC_METH_VAR_NAME_.5

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.7:                ## @OBJC_METH_VAR_NAME_.7
	.asciz	"keyCode"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.8
_OBJC_SELECTOR_REFERENCES_.8:
	.quad	L_OBJC_METH_VAR_NAME_.7

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.9:                ## @OBJC_METH_VAR_NAME_.9
	.asciz	"locationInWindow"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.10
_OBJC_SELECTOR_REFERENCES_.10:
	.quad	L_OBJC_METH_VAR_NAME_.9

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.11:               ## @OBJC_METH_VAR_NAME_.11
	.asciz	"type"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.12
_OBJC_SELECTOR_REFERENCES_.12:
	.quad	L_OBJC_METH_VAR_NAME_.11

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.13:               ## @OBJC_METH_VAR_NAME_.13
	.asciz	"deltaY"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.14
_OBJC_SELECTOR_REFERENCES_.14:
	.quad	L_OBJC_METH_VAR_NAME_.13

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.15:               ## @OBJC_METH_VAR_NAME_.15
	.asciz	"deltaX"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.16
_OBJC_SELECTOR_REFERENCES_.16:
	.quad	L_OBJC_METH_VAR_NAME_.15

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.17:               ## @OBJC_METH_VAR_NAME_.17
	.asciz	"exposeNotification:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.18
_OBJC_SELECTOR_REFERENCES_.18:
	.quad	L_OBJC_METH_VAR_NAME_.17

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_:                     ## @OBJC_CLASS_NAME_
	.asciz	"NSWindowEvent"

	.section	__DATA,__objc_const
	.p2align	3               ## @"_OBJC_METACLASS_RO_$_NSWindowEvent"
__OBJC_METACLASS_RO_$_NSWindowEvent:
	.long	1                       ## 0x1
	.long	40                      ## 0x28
	.long	40                      ## 0x28
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_NSWindowEvent ## @"OBJC_METACLASS_$_NSWindowEvent"
	.p2align	3
_OBJC_METACLASS_$_NSWindowEvent:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSWindow
	.quad	__objc_empty_cache
	.quad	0
	.quad	__OBJC_METACLASS_RO_$_NSWindowEvent

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_:                  ## @OBJC_METH_VAR_TYPE_
	.asciz	"@68@0:8{CGRect={CGPoint=dd}{CGSize=dd}}16Q48Q56c64"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.19:               ## @OBJC_METH_VAR_NAME_.19
	.asciz	"setEvent:andFunc:andParam:"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.20:               ## @OBJC_METH_VAR_TYPE_.20
	.asciz	"v36@0:8i16^?20^v28"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.21:               ## @OBJC_METH_VAR_NAME_.21
	.asciz	"setKeyRepeat:"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.22:               ## @OBJC_METH_VAR_TYPE_.22
	.asciz	"v20@0:8i16"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.23:               ## @OBJC_METH_VAR_NAME_.23
	.asciz	"acceptsFirstResponder"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.24:               ## @OBJC_METH_VAR_TYPE_.24
	.asciz	"c16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.25:               ## @OBJC_METH_VAR_NAME_.25
	.asciz	"flagsChanged:"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.26:               ## @OBJC_METH_VAR_TYPE_.26
	.asciz	"v24@0:8@16"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.27:               ## @OBJC_METH_VAR_NAME_.27
	.asciz	"keyDown:"

L_OBJC_METH_VAR_NAME_.28:               ## @OBJC_METH_VAR_NAME_.28
	.asciz	"keyUp:"

L_OBJC_METH_VAR_NAME_.29:               ## @OBJC_METH_VAR_NAME_.29
	.asciz	"mouseDown:"

L_OBJC_METH_VAR_NAME_.30:               ## @OBJC_METH_VAR_NAME_.30
	.asciz	"rightMouseDown:"

L_OBJC_METH_VAR_NAME_.31:               ## @OBJC_METH_VAR_NAME_.31
	.asciz	"otherMouseDown:"

L_OBJC_METH_VAR_NAME_.32:               ## @OBJC_METH_VAR_NAME_.32
	.asciz	"mouseUp:"

L_OBJC_METH_VAR_NAME_.33:               ## @OBJC_METH_VAR_NAME_.33
	.asciz	"rightMouseUp:"

L_OBJC_METH_VAR_NAME_.34:               ## @OBJC_METH_VAR_NAME_.34
	.asciz	"otherMouseUp:"

L_OBJC_METH_VAR_NAME_.35:               ## @OBJC_METH_VAR_NAME_.35
	.asciz	"mouseMoved:"

L_OBJC_METH_VAR_NAME_.36:               ## @OBJC_METH_VAR_NAME_.36
	.asciz	"mouseDragged:"

L_OBJC_METH_VAR_NAME_.37:               ## @OBJC_METH_VAR_NAME_.37
	.asciz	"rightMouseDragged:"

L_OBJC_METH_VAR_NAME_.38:               ## @OBJC_METH_VAR_NAME_.38
	.asciz	"otherMouseDragged:"

L_OBJC_METH_VAR_NAME_.39:               ## @OBJC_METH_VAR_NAME_.39
	.asciz	"scrollWheel:"

L_OBJC_METH_VAR_NAME_.40:               ## @OBJC_METH_VAR_NAME_.40
	.asciz	"closeNotification:"

L_OBJC_METH_VAR_NAME_.41:               ## @OBJC_METH_VAR_NAME_.41
	.asciz	"deminiaturizeNotification:"

	.section	__DATA,__objc_const
	.p2align	3               ## @"_OBJC_$_INSTANCE_METHODS_NSWindowEvent"
__OBJC_$_INSTANCE_METHODS_NSWindowEvent:
	.long	24                      ## 0x18
	.long	21                      ## 0x15
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[NSWindowEvent initWithContentRect:styleMask:backing:defer:]"
	.quad	L_OBJC_METH_VAR_NAME_.19
	.quad	L_OBJC_METH_VAR_TYPE_.20
	.quad	"-[NSWindowEvent setEvent:andFunc:andParam:]"
	.quad	L_OBJC_METH_VAR_NAME_.21
	.quad	L_OBJC_METH_VAR_TYPE_.22
	.quad	"-[NSWindowEvent setKeyRepeat:]"
	.quad	L_OBJC_METH_VAR_NAME_.23
	.quad	L_OBJC_METH_VAR_TYPE_.24
	.quad	"-[NSWindowEvent acceptsFirstResponder]"
	.quad	L_OBJC_METH_VAR_NAME_.25
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent flagsChanged:]"
	.quad	L_OBJC_METH_VAR_NAME_.27
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent keyDown:]"
	.quad	L_OBJC_METH_VAR_NAME_.28
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent keyUp:]"
	.quad	L_OBJC_METH_VAR_NAME_.29
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent mouseDown:]"
	.quad	L_OBJC_METH_VAR_NAME_.30
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent rightMouseDown:]"
	.quad	L_OBJC_METH_VAR_NAME_.31
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent otherMouseDown:]"
	.quad	L_OBJC_METH_VAR_NAME_.32
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent mouseUp:]"
	.quad	L_OBJC_METH_VAR_NAME_.33
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent rightMouseUp:]"
	.quad	L_OBJC_METH_VAR_NAME_.34
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent otherMouseUp:]"
	.quad	L_OBJC_METH_VAR_NAME_.35
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent mouseMoved:]"
	.quad	L_OBJC_METH_VAR_NAME_.36
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent mouseDragged:]"
	.quad	L_OBJC_METH_VAR_NAME_.37
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent rightMouseDragged:]"
	.quad	L_OBJC_METH_VAR_NAME_.38
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent otherMouseDragged:]"
	.quad	L_OBJC_METH_VAR_NAME_.39
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent scrollWheel:]"
	.quad	L_OBJC_METH_VAR_NAME_.17
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent exposeNotification:]"
	.quad	L_OBJC_METH_VAR_NAME_.40
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent closeNotification:]"
	.quad	L_OBJC_METH_VAR_NAME_.41
	.quad	L_OBJC_METH_VAR_TYPE_.26
	.quad	"-[NSWindowEvent deminiaturizeNotification:]"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.42:               ## @OBJC_METH_VAR_NAME_.42
	.asciz	"event_funct"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.43:               ## @OBJC_METH_VAR_TYPE_.43
	.asciz	"[32^?]"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.44:               ## @OBJC_METH_VAR_NAME_.44
	.asciz	"event_param"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.45:               ## @OBJC_METH_VAR_TYPE_.45
	.asciz	"[32^v]"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.46:               ## @OBJC_METH_VAR_NAME_.46
	.asciz	"keyrepeat"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.47:               ## @OBJC_METH_VAR_TYPE_.47
	.asciz	"i"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.48:               ## @OBJC_METH_VAR_NAME_.48
	.asciz	"keyflag"

L_OBJC_METH_VAR_NAME_.49:               ## @OBJC_METH_VAR_NAME_.49
	.asciz	"size_x"

L_OBJC_METH_VAR_NAME_.50:               ## @OBJC_METH_VAR_NAME_.50
	.asciz	"size_y"

	.section	__DATA,__objc_const
	.p2align	3               ## @"_OBJC_$_INSTANCE_VARIABLES_NSWindowEvent"
__OBJC_$_INSTANCE_VARIABLES_NSWindowEvent:
	.long	32                      ## 0x20
	.long	6                       ## 0x6
	.quad	_OBJC_IVAR_$_NSWindowEvent.event_funct
	.quad	L_OBJC_METH_VAR_NAME_.42
	.quad	L_OBJC_METH_VAR_TYPE_.43
	.long	3                       ## 0x3
	.long	256                     ## 0x100
	.quad	_OBJC_IVAR_$_NSWindowEvent.event_param
	.quad	L_OBJC_METH_VAR_NAME_.44
	.quad	L_OBJC_METH_VAR_TYPE_.45
	.long	3                       ## 0x3
	.long	256                     ## 0x100
	.quad	_OBJC_IVAR_$_NSWindowEvent.keyrepeat
	.quad	L_OBJC_METH_VAR_NAME_.46
	.quad	L_OBJC_METH_VAR_TYPE_.47
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.quad	_OBJC_IVAR_$_NSWindowEvent.keyflag
	.quad	L_OBJC_METH_VAR_NAME_.48
	.quad	L_OBJC_METH_VAR_TYPE_.47
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.quad	_OBJC_IVAR_$_NSWindowEvent.size_x
	.quad	L_OBJC_METH_VAR_NAME_.49
	.quad	L_OBJC_METH_VAR_TYPE_.47
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.quad	_OBJC_IVAR_$_NSWindowEvent.size_y
	.quad	L_OBJC_METH_VAR_NAME_.50
	.quad	L_OBJC_METH_VAR_TYPE_.47
	.long	2                       ## 0x2
	.long	4                       ## 0x4

	.p2align	3               ## @"_OBJC_CLASS_RO_$_NSWindowEvent"
__OBJC_CLASS_RO_$_NSWindowEvent:
	.long	0                       ## 0x0
	.long	8                       ## 0x8
	.long	536                     ## 0x218
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	__OBJC_$_INSTANCE_METHODS_NSWindowEvent
	.quad	0
	.quad	__OBJC_$_INSTANCE_VARIABLES_NSWindowEvent
	.quad	0
	.quad	0

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_"
_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_NSOpenGLPixelFormat

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.51:               ## @OBJC_METH_VAR_NAME_.51
	.asciz	"initWithAttributes:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.52
_OBJC_SELECTOR_REFERENCES_.52:
	.quad	L_OBJC_METH_VAR_NAME_.51

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_MlxWin    ## @"OBJC_CLASS_$_MlxWin"
	.p2align	3
_OBJC_CLASS_$_MlxWin:
	.quad	_OBJC_METACLASS_$_MlxWin
	.quad	_OBJC_CLASS_$_NSOpenGLView
	.quad	__objc_empty_cache
	.quad	0
	.quad	__OBJC_CLASS_RO_$_MlxWin

	.section	__DATA,__objc_superrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_SUP_REFS_$_.53"
L_OBJC_CLASSLIST_SUP_REFS_$_.53:
	.quad	_OBJC_CLASS_$_MlxWin

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.54:               ## @OBJC_METH_VAR_NAME_.54
	.asciz	"initWithFrame:pixelFormat:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.55
_OBJC_SELECTOR_REFERENCES_.55:
	.quad	L_OBJC_METH_VAR_NAME_.54

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_.56"
_OBJC_CLASSLIST_REFERENCES_$_.56:
	.quad	_OBJC_CLASS_$_NSWindowEvent

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_MlxWin.win ## @"OBJC_IVAR_$_MlxWin.win"
	.p2align	3
_OBJC_IVAR_$_MlxWin.win:
	.quad	8                       ## 0x8

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.57:               ## @OBJC_METH_VAR_NAME_.57
	.asciz	"setContentView:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.58
_OBJC_SELECTOR_REFERENCES_.58:
	.quad	L_OBJC_METH_VAR_NAME_.57

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.59:               ## @OBJC_METH_VAR_NAME_.59
	.asciz	"setTitle:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.60
_OBJC_SELECTOR_REFERENCES_.60:
	.quad	L_OBJC_METH_VAR_NAME_.59

	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.61
_OBJC_SELECTOR_REFERENCES_.61:
	.quad	L_OBJC_METH_VAR_NAME_.21

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.62:               ## @OBJC_METH_VAR_NAME_.62
	.asciz	"makeKeyAndOrderFront:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.63
_OBJC_SELECTOR_REFERENCES_.63:
	.quad	L_OBJC_METH_VAR_NAME_.62

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.64:               ## @OBJC_METH_VAR_NAME_.64
	.asciz	"openGLContext"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.65
_OBJC_SELECTOR_REFERENCES_.65:
	.quad	L_OBJC_METH_VAR_NAME_.64

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.66:               ## @OBJC_METH_VAR_NAME_.66
	.asciz	"makeCurrentContext"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.67
_OBJC_SELECTOR_REFERENCES_.67:
	.quad	L_OBJC_METH_VAR_NAME_.66

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.68:               ## @OBJC_METH_VAR_NAME_.68
	.asciz	"setView:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.69
_OBJC_SELECTOR_REFERENCES_.69:
	.quad	L_OBJC_METH_VAR_NAME_.68

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.70:               ## @OBJC_METH_VAR_NAME_.70
	.asciz	"prepareOpenGL"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.71
_OBJC_SELECTOR_REFERENCES_.71:
	.quad	L_OBJC_METH_VAR_NAME_.70

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.72:               ## @OBJC_METH_VAR_NAME_.72
	.asciz	"setNextKeyView:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.73
_OBJC_SELECTOR_REFERENCES_.73:
	.quad	L_OBJC_METH_VAR_NAME_.72

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_.74"
_OBJC_CLASSLIST_REFERENCES_$_.74:
	.quad	_OBJC_CLASS_$_NSNotificationCenter

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.75:               ## @OBJC_METH_VAR_NAME_.75
	.asciz	"defaultCenter"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.76
_OBJC_SELECTOR_REFERENCES_.76:
	.quad	L_OBJC_METH_VAR_NAME_.75

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"NSWindowDidBecomeKeyNotification"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_
L__unnamed_cfstring_:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str
	.quad	32                      ## 0x20

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.77:               ## @OBJC_METH_VAR_NAME_.77
	.asciz	"addObserver:selector:name:object:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.78
_OBJC_SELECTOR_REFERENCES_.78:
	.quad	L_OBJC_METH_VAR_NAME_.77

	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.79
_OBJC_SELECTOR_REFERENCES_.79:
	.quad	L_OBJC_METH_VAR_NAME_.41

	.section	__TEXT,__cstring,cstring_literals
L_.str.80:                              ## @.str.80
	.asciz	"NSWindowDidDeminiaturizeNotification"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.81
L__unnamed_cfstring_.81:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.80
	.quad	36                      ## 0x24

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.82
_OBJC_SELECTOR_REFERENCES_.82:
	.quad	L_OBJC_METH_VAR_NAME_.40

	.section	__TEXT,__cstring,cstring_literals
L_.str.83:                              ## @.str.83
	.asciz	"NSWindowWillCloseNotification"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.84
L__unnamed_cfstring_.84:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.83
	.quad	29                      ## 0x1d

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_MlxWin.size_x ## @"OBJC_IVAR_$_MlxWin.size_x"
	.p2align	3
_OBJC_IVAR_$_MlxWin.size_x:
	.quad	124                     ## 0x7c

	.globl	_OBJC_IVAR_$_MlxWin.size_y ## @"OBJC_IVAR_$_MlxWin.size_y"
	.p2align	3
_OBJC_IVAR_$_MlxWin.size_y:
	.quad	128                     ## 0x80

	.globl	_OBJC_IVAR_$_MlxWin.glsl ## @"OBJC_IVAR_$_MlxWin.glsl"
	.p2align	3
_OBJC_IVAR_$_MlxWin.glsl:
	.quad	24                      ## 0x18

	.globl	_OBJC_IVAR_$_MlxWin.pixel_vbuffer ## @"OBJC_IVAR_$_MlxWin.pixel_vbuffer"
	.p2align	3
_OBJC_IVAR_$_MlxWin.pixel_vbuffer:
	.quad	136                     ## 0x88

	.section	__TEXT,__const
	.p2align	4               ## @pixel_vertexes
_pixel_vertexes:
	.long	3212836864              ## float -1
	.long	3212836864              ## float -1
	.long	1065353216              ## float 1
	.long	3212836864              ## float -1
	.long	1065353216              ## float 1
	.long	1065353216              ## float 1
	.long	3212836864              ## float -1
	.long	1065353216              ## float 1

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_MlxWin.pixel_texture ## @"OBJC_IVAR_$_MlxWin.pixel_texture"
	.p2align	3
_OBJC_IVAR_$_MlxWin.pixel_texture:
	.quad	140                     ## 0x8c

	.globl	_OBJC_IVAR_$_MlxWin.pixtexbuff ## @"OBJC_IVAR_$_MlxWin.pixtexbuff"
	.p2align	3
_OBJC_IVAR_$_MlxWin.pixtexbuff:
	.quad	144                     ## 0x90

	.globl	_OBJC_IVAR_$_MlxWin.pixel_nb ## @"OBJC_IVAR_$_MlxWin.pixel_nb"
	.p2align	3
_OBJC_IVAR_$_MlxWin.pixel_nb:
	.quad	132                     ## 0x84

	.section	__TEXT,__cstring,cstring_literals
L_.str.85:                              ## @.str.85
	.asciz	"texture"

L_.str.86:                              ## @.str.86
	.asciz	"position"

L_.str.87:                              ## @.str.87
	.asciz	"imagepos"

L_.str.88:                              ## @.str.88
	.asciz	"imagesize"

L_.str.89:                              ## @.str.89
	.asciz	"winhalfsize"

L_.str.90:                              ## @.str.90
	.asciz	"color"

L_.str.91:                              ## @.str.91
	.asciz	"fontposinwin"

L_.str.92:                              ## @.str.92
	.asciz	"fontposinatlas"

L_.str.93:                              ## @.str.93
	.asciz	"fontatlassize"

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_MlxWin.ctx ## @"OBJC_IVAR_$_MlxWin.ctx"
	.p2align	3
_OBJC_IVAR_$_MlxWin.ctx:
	.quad	16                      ## 0x10

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.94:               ## @OBJC_METH_VAR_NAME_.94
	.asciz	"update"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.95
_OBJC_SELECTOR_REFERENCES_.95:
	.quad	L_OBJC_METH_VAR_NAME_.94

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_.96"
_OBJC_CLASSLIST_REFERENCES_$_.96:
	.quad	_OBJC_CLASS_$_NSOpenGLContext

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.97:               ## @OBJC_METH_VAR_NAME_.97
	.asciz	"currentContext"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.98
_OBJC_SELECTOR_REFERENCES_.98:
	.quad	L_OBJC_METH_VAR_NAME_.97

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.99:               ## @OBJC_METH_VAR_NAME_.99
	.asciz	"flushBuffer"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.100
_OBJC_SELECTOR_REFERENCES_.100:
	.quad	L_OBJC_METH_VAR_NAME_.99

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.101:              ## @OBJC_METH_VAR_NAME_.101
	.asciz	"mlx_gl_draw"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.102
_OBJC_SELECTOR_REFERENCES_.102:
	.quad	L_OBJC_METH_VAR_NAME_.101

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.103:              ## @OBJC_METH_VAR_NAME_.103
	.asciz	"selectGLContext"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.104
_OBJC_SELECTOR_REFERENCES_.104:
	.quad	L_OBJC_METH_VAR_NAME_.103

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.105:              ## @OBJC_METH_VAR_NAME_.105
	.asciz	"removeObserver:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.106
_OBJC_SELECTOR_REFERENCES_.106:
	.quad	L_OBJC_METH_VAR_NAME_.105

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.107:              ## @OBJC_METH_VAR_NAME_.107
	.asciz	"close"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.108
_OBJC_SELECTOR_REFERENCES_.108:
	.quad	L_OBJC_METH_VAR_NAME_.107

	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.109
_OBJC_SELECTOR_REFERENCES_.109:
	.quad	L_OBJC_METH_VAR_NAME_.19

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_.110:                 ## @OBJC_CLASS_NAME_.110
	.asciz	"MlxWin"

	.section	__DATA,__objc_const
	.p2align	3               ## @"_OBJC_METACLASS_RO_$_MlxWin"
__OBJC_METACLASS_RO_$_MlxWin:
	.long	1                       ## 0x1
	.long	40                      ## 0x28
	.long	40                      ## 0x28
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_.110
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_MlxWin ## @"OBJC_METACLASS_$_MlxWin"
	.p2align	3
_OBJC_METACLASS_$_MlxWin:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSOpenGLView
	.quad	__objc_empty_cache
	.quad	0
	.quad	__OBJC_METACLASS_RO_$_MlxWin

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.111:              ## @OBJC_METH_VAR_NAME_.111
	.asciz	"initWithRect:andTitle:pfaAttrs:"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.112:              ## @OBJC_METH_VAR_TYPE_.112
	.asciz	"@64@0:8{CGRect={CGPoint=dd}{CGSize=dd}}16@48^I56"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.113:              ## @OBJC_METH_VAR_NAME_.113
	.asciz	"pixel_management"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.114:              ## @OBJC_METH_VAR_TYPE_.114
	.asciz	"i16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.115:              ## @OBJC_METH_VAR_NAME_.115
	.asciz	"ctxNeedsUpdate"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.116:              ## @OBJC_METH_VAR_TYPE_.116
	.asciz	"v16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.117:              ## @OBJC_METH_VAR_NAME_.117
	.asciz	"flushGLContext"

L_OBJC_METH_VAR_NAME_.118:              ## @OBJC_METH_VAR_NAME_.118
	.asciz	"ctx"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.119:              ## @OBJC_METH_VAR_TYPE_.119
	.asciz	"@16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.120:              ## @OBJC_METH_VAR_NAME_.120
	.asciz	"win"

L_OBJC_METH_VAR_NAME_.121:              ## @OBJC_METH_VAR_NAME_.121
	.asciz	"pixelPutColor:X:Y:"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.122:              ## @OBJC_METH_VAR_TYPE_.122
	.asciz	"v28@0:8i16i20i24"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.123:              ## @OBJC_METH_VAR_NAME_.123
	.asciz	"destroyPixelManagement"

L_OBJC_METH_VAR_NAME_.124:              ## @OBJC_METH_VAR_NAME_.124
	.asciz	"destroyMe"

L_OBJC_METH_VAR_NAME_.125:              ## @OBJC_METH_VAR_NAME_.125
	.asciz	"clearWin"

L_OBJC_METH_VAR_NAME_.126:              ## @OBJC_METH_VAR_NAME_.126
	.asciz	"mlx_gl_draw_img:andCtx:andX:andY:"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.127:              ## @OBJC_METH_VAR_TYPE_.127
	.asciz	"v40@0:8^{mlx_img_list_s=ii*[8f]^{mlx_img_list_s}}16^{mlx_img_ctx_s=II^{mlx_img_list_s}^{mlx_img_ctx_s}}24i32i36"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.128:              ## @OBJC_METH_VAR_NAME_.128
	.asciz	"mlx_gl_draw_font:andCtx:andX:andY:andColor:glyphX:glyphY:"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.129:              ## @OBJC_METH_VAR_TYPE_.129
	.asciz	"v52@0:8^{mlx_img_list_s=ii*[8f]^{mlx_img_list_s}}16^{mlx_img_ctx_s=II^{mlx_img_list_s}^{mlx_img_ctx_s}}24i32i36i40i44i48"

	.section	__DATA,__objc_const
	.p2align	3               ## @"_OBJC_$_INSTANCE_METHODS_MlxWin"
__OBJC_$_INSTANCE_METHODS_MlxWin:
	.long	24                      ## 0x18
	.long	16                      ## 0x10
	.quad	L_OBJC_METH_VAR_NAME_.111
	.quad	L_OBJC_METH_VAR_TYPE_.112
	.quad	"-[MlxWin initWithRect:andTitle:pfaAttrs:]"
	.quad	L_OBJC_METH_VAR_NAME_.113
	.quad	L_OBJC_METH_VAR_TYPE_.114
	.quad	"-[MlxWin pixel_management]"
	.quad	L_OBJC_METH_VAR_NAME_.115
	.quad	L_OBJC_METH_VAR_TYPE_.116
	.quad	"-[MlxWin ctxNeedsUpdate]"
	.quad	L_OBJC_METH_VAR_NAME_.103
	.quad	L_OBJC_METH_VAR_TYPE_.116
	.quad	"-[MlxWin selectGLContext]"
	.quad	L_OBJC_METH_VAR_NAME_.117
	.quad	L_OBJC_METH_VAR_TYPE_.116
	.quad	"-[MlxWin flushGLContext]"
	.quad	L_OBJC_METH_VAR_NAME_.118
	.quad	L_OBJC_METH_VAR_TYPE_.119
	.quad	"-[MlxWin ctx]"
	.quad	L_OBJC_METH_VAR_NAME_.120
	.quad	L_OBJC_METH_VAR_TYPE_.119
	.quad	"-[MlxWin win]"
	.quad	L_OBJC_METH_VAR_NAME_.121
	.quad	L_OBJC_METH_VAR_TYPE_.122
	.quad	"-[MlxWin pixelPutColor:X:Y:]"
	.quad	L_OBJC_METH_VAR_NAME_.123
	.quad	L_OBJC_METH_VAR_TYPE_.116
	.quad	"-[MlxWin destroyPixelManagement]"
	.quad	L_OBJC_METH_VAR_NAME_.124
	.quad	L_OBJC_METH_VAR_TYPE_.116
	.quad	"-[MlxWin destroyMe]"
	.quad	L_OBJC_METH_VAR_NAME_.19
	.quad	L_OBJC_METH_VAR_TYPE_.20
	.quad	"-[MlxWin setEvent:andFunc:andParam:]"
	.quad	L_OBJC_METH_VAR_NAME_.21
	.quad	L_OBJC_METH_VAR_TYPE_.22
	.quad	"-[MlxWin setKeyRepeat:]"
	.quad	L_OBJC_METH_VAR_NAME_.125
	.quad	L_OBJC_METH_VAR_TYPE_.116
	.quad	"-[MlxWin clearWin]"
	.quad	L_OBJC_METH_VAR_NAME_.126
	.quad	L_OBJC_METH_VAR_TYPE_.127
	.quad	"-[MlxWin mlx_gl_draw_img:andCtx:andX:andY:]"
	.quad	L_OBJC_METH_VAR_NAME_.128
	.quad	L_OBJC_METH_VAR_TYPE_.129
	.quad	"-[MlxWin mlx_gl_draw_font:andCtx:andX:andY:andColor:glyphX:glyphY:]"
	.quad	L_OBJC_METH_VAR_NAME_.101
	.quad	L_OBJC_METH_VAR_TYPE_.116
	.quad	"-[MlxWin mlx_gl_draw]"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.130:              ## @OBJC_METH_VAR_TYPE_.130
	.asciz	"@\"NSWindowEvent\""

L_OBJC_METH_VAR_TYPE_.131:              ## @OBJC_METH_VAR_TYPE_.131
	.asciz	"@\"NSOpenGLContext\""

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.132:              ## @OBJC_METH_VAR_NAME_.132
	.asciz	"glsl"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.133:              ## @OBJC_METH_VAR_TYPE_.133
	.asciz	"{glsl_info_s=\"pixel_vshader\"I\"pixel_fshader\"I\"pixel_program\"I\"loc_pixel_position\"i\"loc_pixel_texture\"i\"loc_pixel_winhalfsize\"i\"image_vshader\"I\"image_fshader\"I\"image_program\"I\"loc_image_position\"i\"loc_image_winhalfsize\"i\"loc_image_texture\"i\"loc_image_pos\"i\"loc_image_size\"i\"font_vshader\"I\"font_fshader\"I\"font_program\"I\"loc_font_position\"i\"loc_font_winhalfsize\"i\"loc_font_texture\"i\"loc_font_color\"i\"loc_font_posinwin\"i\"loc_font_posinatlas\"i\"loc_font_atlassize\"i}"

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_MlxWin.openglwin ## @"OBJC_IVAR_$_MlxWin.openglwin"
	.p2align	3
_OBJC_IVAR_$_MlxWin.openglwin:
	.quad	120                     ## 0x78

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.134:              ## @OBJC_METH_VAR_NAME_.134
	.asciz	"openglwin"

L_OBJC_METH_VAR_NAME_.135:              ## @OBJC_METH_VAR_NAME_.135
	.asciz	"pixel_nb"

L_OBJC_METH_VAR_NAME_.136:              ## @OBJC_METH_VAR_NAME_.136
	.asciz	"pixel_vbuffer"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.137:              ## @OBJC_METH_VAR_TYPE_.137
	.asciz	"I"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.138:              ## @OBJC_METH_VAR_NAME_.138
	.asciz	"pixel_texture"

L_OBJC_METH_VAR_NAME_.139:              ## @OBJC_METH_VAR_NAME_.139
	.asciz	"pixtexbuff"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.140:              ## @OBJC_METH_VAR_TYPE_.140
	.asciz	"^I"

	.section	__DATA,__objc_const
	.p2align	3               ## @"_OBJC_$_INSTANCE_VARIABLES_MlxWin"
__OBJC_$_INSTANCE_VARIABLES_MlxWin:
	.long	32                      ## 0x20
	.long	10                      ## 0xa
	.quad	_OBJC_IVAR_$_MlxWin.win
	.quad	L_OBJC_METH_VAR_NAME_.120
	.quad	L_OBJC_METH_VAR_TYPE_.130
	.long	3                       ## 0x3
	.long	8                       ## 0x8
	.quad	_OBJC_IVAR_$_MlxWin.ctx
	.quad	L_OBJC_METH_VAR_NAME_.118
	.quad	L_OBJC_METH_VAR_TYPE_.131
	.long	3                       ## 0x3
	.long	8                       ## 0x8
	.quad	_OBJC_IVAR_$_MlxWin.glsl
	.quad	L_OBJC_METH_VAR_NAME_.132
	.quad	L_OBJC_METH_VAR_TYPE_.133
	.long	2                       ## 0x2
	.long	96                      ## 0x60
	.quad	_OBJC_IVAR_$_MlxWin.openglwin
	.quad	L_OBJC_METH_VAR_NAME_.134
	.quad	L_OBJC_METH_VAR_TYPE_.47
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.quad	_OBJC_IVAR_$_MlxWin.size_x
	.quad	L_OBJC_METH_VAR_NAME_.49
	.quad	L_OBJC_METH_VAR_TYPE_.47
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.quad	_OBJC_IVAR_$_MlxWin.size_y
	.quad	L_OBJC_METH_VAR_NAME_.50
	.quad	L_OBJC_METH_VAR_TYPE_.47
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.quad	_OBJC_IVAR_$_MlxWin.pixel_nb
	.quad	L_OBJC_METH_VAR_NAME_.135
	.quad	L_OBJC_METH_VAR_TYPE_.47
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.quad	_OBJC_IVAR_$_MlxWin.pixel_vbuffer
	.quad	L_OBJC_METH_VAR_NAME_.136
	.quad	L_OBJC_METH_VAR_TYPE_.137
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.quad	_OBJC_IVAR_$_MlxWin.pixel_texture
	.quad	L_OBJC_METH_VAR_NAME_.138
	.quad	L_OBJC_METH_VAR_TYPE_.137
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.quad	_OBJC_IVAR_$_MlxWin.pixtexbuff
	.quad	L_OBJC_METH_VAR_NAME_.139
	.quad	L_OBJC_METH_VAR_TYPE_.140
	.long	3                       ## 0x3
	.long	8                       ## 0x8

	.p2align	3               ## @"_OBJC_CLASS_RO_$_MlxWin"
__OBJC_CLASS_RO_$_MlxWin:
	.long	0                       ## 0x0
	.long	8                       ## 0x8
	.long	152                     ## 0x98
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_.110
	.quad	__OBJC_$_INSTANCE_METHODS_MlxWin
	.quad	0
	.quad	__OBJC_$_INSTANCE_VARIABLES_MlxWin
	.quad	0
	.quad	0

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_.141"
_OBJC_CLASSLIST_REFERENCES_$_.141:
	.quad	_OBJC_CLASS_$_NSString

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.142:              ## @OBJC_METH_VAR_NAME_.142
	.asciz	"stringWithCString:encoding:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.143
_OBJC_SELECTOR_REFERENCES_.143:
	.quad	L_OBJC_METH_VAR_NAME_.142

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_.144"
_OBJC_CLASSLIST_REFERENCES_$_.144:
	.quad	_OBJC_CLASS_$_MlxWin

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.145
_OBJC_SELECTOR_REFERENCES_.145:
	.quad	L_OBJC_METH_VAR_NAME_.111

	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.146
_OBJC_SELECTOR_REFERENCES_.146:
	.quad	L_OBJC_METH_VAR_NAME_.113

	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.147
_OBJC_SELECTOR_REFERENCES_.147:
	.quad	L_OBJC_METH_VAR_NAME_.123

	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.148
_OBJC_SELECTOR_REFERENCES_.148:
	.quad	L_OBJC_METH_VAR_NAME_.124

	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.149
_OBJC_SELECTOR_REFERENCES_.149:
	.quad	L_OBJC_METH_VAR_NAME_.125

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.p2align	3               ## @"OBJC_LABEL_CLASS_$"
L_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_NSWindowEvent
	.quad	_OBJC_CLASS_$_MlxWin

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64

.subsections_via_symbols
