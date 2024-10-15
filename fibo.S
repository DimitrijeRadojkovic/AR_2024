.section .data
.section .text
.globl main
main:
	movl $7, %eax #koji fibov broj po redu trazimo
	movl $1, %ebx 
	movl $1, %ecx
	subl $2, %eax
uporedi:
	cmpl $0, %eax
	je kraj
	cmpl $0, %eax
	ja uradi
uradi:
	movl %ebx, %edx
	addl %ecx, %ebx
	movl %edx, %ecx
	subl $1, %eax
	jmp uporedi
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
