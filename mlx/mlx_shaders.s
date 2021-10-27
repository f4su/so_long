	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_display_log            ## -- Begin function display_log
	.p2align	4, 0x90
_display_log:                           ## @display_log
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
	movq	%rdx, %r14
	movq	%rsi, %rcx
	movl	%edi, %r15d
	leaq	-36(%rbp), %rdx
	movl	$35716, %esi            ## imm = 0x8B84
	xorl	%eax, %eax
	callq	*%rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %r12
	movq	%r12, %rdi
	callq	_malloc
	movq	%rax, %rbx
	movl	%r15d, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	*%r14
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	_fputs
	movq	%rbx, %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mlx_shaders_pixel      ## -- Begin function mlx_shaders_pixel
	.p2align	4, 0x90
_mlx_shaders_pixel:                     ## @mlx_shaders_pixel
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
	movq	%rdi, %rbx
	movl	$35633, %edi            ## imm = 0x8B31
	callq	_glCreateShader
	movl	%eax, (%rbx)
	leaq	L_.str.1(%rip), %rdi
	callq	_strdup
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	callq	_strlen
	movl	%eax, -52(%rbp)
	movl	(%rbx), %edi
	movl	$1, %r14d
	leaq	-64(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movl	$1, %esi
	callq	_glShaderSource
	movl	(%rbx), %edi
	callq	_glCompileShader
	movq	-64(%rbp), %rdi
	callq	_free
	movl	(%rbx), %edi
	leaq	-44(%rbp), %rdx
	movl	$35713, %esi            ## imm = 0x8B81
	callq	_glGetShaderiv
	cmpl	$0, -44(%rbp)
	je	LBB1_1
## %bb.3:
	movl	$35632, %edi            ## imm = 0x8B30
	callq	_glCreateShader
	movl	%eax, 4(%rbx)
	leaq	L_.str.3(%rip), %rdi
	callq	_strdup
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	callq	_strlen
	movl	%eax, -52(%rbp)
	movl	4(%rbx), %edi
	movl	$1, %r14d
	leaq	-64(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movl	$1, %esi
	callq	_glShaderSource
	movl	4(%rbx), %edi
	callq	_glCompileShader
	movq	-64(%rbp), %rdi
	callq	_free
	movl	4(%rbx), %edi
	leaq	-44(%rbp), %rdx
	movl	$35713, %esi            ## imm = 0x8B81
	callq	_glGetShaderiv
	cmpl	$0, -44(%rbp)
	je	LBB1_4
## %bb.5:
	callq	_glCreateProgram
	movl	%eax, 8(%rbx)
	movl	(%rbx), %esi
	movl	%eax, %edi
	callq	_glAttachShader
	movl	4(%rbx), %esi
	movl	8(%rbx), %edi
	callq	_glAttachShader
	movl	8(%rbx), %edi
	callq	_glLinkProgram
	movl	8(%rbx), %edi
	leaq	-44(%rbp), %rdx
	movl	$35714, %esi            ## imm = 0x8B82
	callq	_glGetProgramiv
	cmpl	$0, -44(%rbp)
	je	LBB1_6
## %bb.7:
	callq	_glFlush
	xorl	%r14d, %r14d
	jmp	LBB1_8
LBB1_1:
	movq	___stderrp@GOTPCREL(%rip), %r13
	movq	(%r13), %rcx
	leaq	L_.str.2(%rip), %rdi
	movl	$34, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	(%rbx), %r15d
	jmp	LBB1_2
LBB1_4:
	movq	___stderrp@GOTPCREL(%rip), %r13
	movq	(%r13), %rcx
	leaq	L_.str.4(%rip), %rdi
	movl	$34, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	4(%rbx), %r15d
LBB1_2:
	leaq	-48(%rbp), %rdx
	movl	%r15d, %edi
	movl	$35716, %esi            ## imm = 0x8B84
	xorl	%eax, %eax
	callq	_glGetShaderiv
	movl	-48(%rbp), %eax
	movslq	%eax, %r12
	movq	%r12, %rdi
	callq	_malloc
	movq	%rax, %rbx
	movl	%r15d, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	_glGetShaderInfoLog
	movq	(%r13), %rsi
	movq	%rbx, %rdi
	callq	_fputs
	movq	%rbx, %rdi
	callq	_free
	jmp	LBB1_8
LBB1_6:
	movq	___stderrp@GOTPCREL(%rip), %r12
	movq	(%r12), %rcx
	leaq	L_.str.5(%rip), %rdi
	movl	$37, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	8(%rbx), %r14d
	leaq	-48(%rbp), %rdx
	movl	%r14d, %edi
	movl	$35716, %esi            ## imm = 0x8B84
	xorl	%eax, %eax
	callq	_glGetProgramiv
	movl	-48(%rbp), %eax
	movslq	%eax, %r15
	movq	%r15, %rdi
	callq	_malloc
	movq	%rax, %rbx
	movl	%r14d, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	_glGetProgramInfoLog
	movq	(%r12), %rsi
	movq	%rbx, %rdi
	callq	_fputs
	movq	%rbx, %rdi
	callq	_free
	movl	$1, %r14d
LBB1_8:
	movl	%r14d, %eax
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
	.globl	_mlx_shaders_image      ## -- Begin function mlx_shaders_image
	.p2align	4, 0x90
_mlx_shaders_image:                     ## @mlx_shaders_image
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
	movq	%rdi, %rbx
	movl	$35633, %edi            ## imm = 0x8B31
	callq	_glCreateShader
	movl	%eax, 24(%rbx)
	leaq	L_.str.6(%rip), %rdi
	callq	_strdup
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	callq	_strlen
	movl	%eax, -52(%rbp)
	movl	24(%rbx), %edi
	movl	$1, %r14d
	leaq	-64(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movl	$1, %esi
	callq	_glShaderSource
	movl	24(%rbx), %edi
	callq	_glCompileShader
	movq	-64(%rbp), %rdi
	callq	_free
	movl	24(%rbx), %edi
	leaq	-44(%rbp), %rdx
	movl	$35713, %esi            ## imm = 0x8B81
	callq	_glGetShaderiv
	cmpl	$0, -44(%rbp)
	je	LBB2_1
## %bb.3:
	movl	$35632, %edi            ## imm = 0x8B30
	callq	_glCreateShader
	movl	%eax, 28(%rbx)
	leaq	L_.str.3(%rip), %rdi
	callq	_strdup
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	callq	_strlen
	movl	%eax, -52(%rbp)
	movl	28(%rbx), %edi
	movl	$1, %r14d
	leaq	-64(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movl	$1, %esi
	callq	_glShaderSource
	movl	28(%rbx), %edi
	callq	_glCompileShader
	movq	-64(%rbp), %rdi
	callq	_free
	movl	28(%rbx), %edi
	leaq	-44(%rbp), %rdx
	movl	$35713, %esi            ## imm = 0x8B81
	callq	_glGetShaderiv
	cmpl	$0, -44(%rbp)
	je	LBB2_4
## %bb.5:
	callq	_glCreateProgram
	movl	%eax, 32(%rbx)
	movl	24(%rbx), %esi
	movl	%eax, %edi
	callq	_glAttachShader
	movl	28(%rbx), %esi
	movl	32(%rbx), %edi
	callq	_glAttachShader
	movl	32(%rbx), %edi
	callq	_glLinkProgram
	movl	32(%rbx), %edi
	leaq	-44(%rbp), %rdx
	movl	$35714, %esi            ## imm = 0x8B82
	callq	_glGetProgramiv
	cmpl	$0, -44(%rbp)
	je	LBB2_6
## %bb.7:
	callq	_glFlush
	xorl	%r14d, %r14d
	jmp	LBB2_8
LBB2_1:
	movq	___stderrp@GOTPCREL(%rip), %r13
	movq	(%r13), %rcx
	leaq	L_.str.7(%rip), %rdi
	movl	$34, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	24(%rbx), %r15d
	jmp	LBB2_2
LBB2_4:
	movq	___stderrp@GOTPCREL(%rip), %r13
	movq	(%r13), %rcx
	leaq	L_.str.8(%rip), %rdi
	movl	$34, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	28(%rbx), %r15d
LBB2_2:
	leaq	-48(%rbp), %rdx
	movl	%r15d, %edi
	movl	$35716, %esi            ## imm = 0x8B84
	xorl	%eax, %eax
	callq	_glGetShaderiv
	movl	-48(%rbp), %eax
	movslq	%eax, %r12
	movq	%r12, %rdi
	callq	_malloc
	movq	%rax, %rbx
	movl	%r15d, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	_glGetShaderInfoLog
	movq	(%r13), %rsi
	movq	%rbx, %rdi
	callq	_fputs
	movq	%rbx, %rdi
	callq	_free
	jmp	LBB2_8
LBB2_6:
	movq	___stderrp@GOTPCREL(%rip), %r12
	movq	(%r12), %rcx
	leaq	L_.str.9(%rip), %rdi
	movl	$37, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	32(%rbx), %r14d
	leaq	-48(%rbp), %rdx
	movl	%r14d, %edi
	movl	$35716, %esi            ## imm = 0x8B84
	xorl	%eax, %eax
	callq	_glGetProgramiv
	movl	-48(%rbp), %eax
	movslq	%eax, %r15
	movq	%r15, %rdi
	callq	_malloc
	movq	%rax, %rbx
	movl	%r14d, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	_glGetProgramInfoLog
	movq	(%r12), %rsi
	movq	%rbx, %rdi
	callq	_fputs
	movq	%rbx, %rdi
	callq	_free
	movl	$1, %r14d
LBB2_8:
	movl	%r14d, %eax
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
	.globl	_mlx_shaders_font       ## -- Begin function mlx_shaders_font
	.p2align	4, 0x90
_mlx_shaders_font:                      ## @mlx_shaders_font
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
	movq	%rdi, %rbx
	movl	$35633, %edi            ## imm = 0x8B31
	callq	_glCreateShader
	movl	%eax, 56(%rbx)
	leaq	L_.str.10(%rip), %rdi
	callq	_strdup
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	callq	_strlen
	movl	%eax, -52(%rbp)
	movl	56(%rbx), %edi
	movl	$1, %r14d
	leaq	-64(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movl	$1, %esi
	callq	_glShaderSource
	movl	56(%rbx), %edi
	callq	_glCompileShader
	movq	-64(%rbp), %rdi
	callq	_free
	movl	56(%rbx), %edi
	leaq	-44(%rbp), %rdx
	movl	$35713, %esi            ## imm = 0x8B81
	callq	_glGetShaderiv
	cmpl	$0, -44(%rbp)
	je	LBB3_1
## %bb.3:
	movl	$35632, %edi            ## imm = 0x8B30
	callq	_glCreateShader
	movl	%eax, 60(%rbx)
	leaq	L_.str.12(%rip), %rdi
	callq	_strdup
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	callq	_strlen
	movl	%eax, -52(%rbp)
	movl	60(%rbx), %edi
	movl	$1, %r14d
	leaq	-64(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movl	$1, %esi
	callq	_glShaderSource
	movl	60(%rbx), %edi
	callq	_glCompileShader
	movq	-64(%rbp), %rdi
	callq	_free
	movl	60(%rbx), %edi
	leaq	-44(%rbp), %rdx
	movl	$35713, %esi            ## imm = 0x8B81
	callq	_glGetShaderiv
	cmpl	$0, -44(%rbp)
	je	LBB3_4
## %bb.5:
	callq	_glCreateProgram
	movl	%eax, 64(%rbx)
	movl	56(%rbx), %esi
	movl	%eax, %edi
	callq	_glAttachShader
	movl	60(%rbx), %esi
	movl	64(%rbx), %edi
	callq	_glAttachShader
	movl	64(%rbx), %edi
	callq	_glLinkProgram
	movl	64(%rbx), %edi
	leaq	-44(%rbp), %rdx
	movl	$35714, %esi            ## imm = 0x8B82
	callq	_glGetProgramiv
	cmpl	$0, -44(%rbp)
	je	LBB3_6
## %bb.7:
	callq	_glFlush
	xorl	%r14d, %r14d
	jmp	LBB3_8
LBB3_1:
	movq	___stderrp@GOTPCREL(%rip), %r13
	movq	(%r13), %rcx
	leaq	L_.str.11(%rip), %rdi
	movl	$33, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	56(%rbx), %r15d
	jmp	LBB3_2
LBB3_4:
	movq	___stderrp@GOTPCREL(%rip), %r13
	movq	(%r13), %rcx
	leaq	L_.str.13(%rip), %rdi
	movl	$33, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	60(%rbx), %r15d
LBB3_2:
	leaq	-48(%rbp), %rdx
	movl	%r15d, %edi
	movl	$35716, %esi            ## imm = 0x8B84
	xorl	%eax, %eax
	callq	_glGetShaderiv
	movl	-48(%rbp), %eax
	movslq	%eax, %r12
	movq	%r12, %rdi
	callq	_malloc
	movq	%rax, %rbx
	movl	%r15d, %edi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	_glGetShaderInfoLog
	movq	(%r13), %rsi
	movq	%rbx, %rdi
	callq	_fputs
	movq	%rbx, %rdi
	callq	_free
	jmp	LBB3_8
LBB3_6:
	movq	___stderrp@GOTPCREL(%rip), %r12
	movq	(%r12), %rcx
	leaq	L_.str.14(%rip), %rdi
	movl	$36, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	64(%rbx), %r14d
	leaq	-48(%rbp), %rdx
	movl	%r14d, %edi
	movl	$35716, %esi            ## imm = 0x8B84
	xorl	%eax, %eax
	callq	_glGetProgramiv
	movl	-48(%rbp), %eax
	movslq	%eax, %r15
	movq	%r15, %rdi
	callq	_malloc
	movq	%rax, %rbx
	movl	%r14d, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	_glGetProgramInfoLog
	movq	(%r12), %rsi
	movq	%rbx, %rdi
	callq	_fputs
	movq	%rbx, %rdi
	callq	_free
	movl	$1, %r14d
LBB3_8:
	movl	%r14d, %eax
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
	.globl	_mlx_shaders            ## -- Begin function mlx_shaders
	.p2align	4, 0x90
_mlx_shaders:                           ## @mlx_shaders
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
	movq	%rdi, %r15
	callq	_mlx_shaders_pixel
	movl	%eax, %r14d
	movq	%r15, %rdi
	callq	_mlx_shaders_image
	movl	%eax, %ebx
	addl	%r14d, %ebx
	movq	%r15, %rdi
	callq	_mlx_shaders_font
	addl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"#version 110 \nattribute vec2 position;varying vec2 texcoord;void main(){ gl_Position = vec4( position, 0.0, 1.0); texcoord = vec2(position[0]+1.0, 1.0 - position[1]) / 2.0;}"

L_.str.2:                               ## @.str.2
	.asciz	"Failed to compile pixel vshader :\n"

L_.str.3:                               ## @.str.3
	.asciz	"#version 110 \nuniform sampler2D texture;varying vec2 texcoord;void main(){ gl_FragColor = texture2D(texture, texcoord);}"

L_.str.4:                               ## @.str.4
	.asciz	"Failed to compile pixel fshader :\n"

L_.str.5:                               ## @.str.5
	.asciz	"Failed to link pixel shader program:\n"

L_.str.6:                               ## @.str.6
	.asciz	"#version 110 \nattribute vec2 position;uniform vec2 winhalfsize;uniform vec2 imagepos;uniform vec2 imagesize;varying vec2 texcoord;void main(){ texcoord = position / imagesize; vec2 pos = position - winhalfsize + imagepos; pos = pos / winhalfsize; gl_Position = vec4( pos, 0.0, 1.0);}"

L_.str.7:                               ## @.str.7
	.asciz	"Failed to compile image vshader :\n"

L_.str.8:                               ## @.str.8
	.asciz	"Failed to compile image fshader :\n"

L_.str.9:                               ## @.str.9
	.asciz	"Failed to link image shader program:\n"

L_.str.10:                              ## @.str.10
	.asciz	"#version 110 \nattribute vec2 position;uniform vec2 winhalfsize;uniform vec2 fontposinwin;uniform vec2 fontposinatlas;uniform vec2 fontatlassize;varying vec2 texcoord;void main(){ texcoord = (position * vec2(1.4, -1.4) + fontposinatlas ) / fontatlassize; vec2 pos = position - winhalfsize + fontposinwin; pos = pos / winhalfsize; gl_Position = vec4( pos, 0.0, 1.0);}"

L_.str.11:                              ## @.str.11
	.asciz	"Failed to compile font vshader :\n"

L_.str.12:                              ## @.str.12
	.asciz	"#version 110 \nuniform sampler2D texture;uniform vec4 color;varying vec2 texcoord;void main(){ gl_FragColor = color * texture2D(texture, texcoord);}"

L_.str.13:                              ## @.str.13
	.asciz	"Failed to compile font fshader :\n"

L_.str.14:                              ## @.str.14
	.asciz	"Failed to link font shader program:\n"

.subsections_via_symbols
