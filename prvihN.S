.section .data
.section .text
.globl main
main:
	movl $10, %eax
	movl $0, %ebx
	addl %eax, %ebx
uporedi:
	cmpl $1, %eax
	je kraj
	cmpl $1, %eax
	ja smanji
smanji:
	subl $1, %eax
	addl %eax, %ebx
	jmp uporedi
	
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
