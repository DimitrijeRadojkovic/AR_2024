.section .data
.section .text
.globl main
main:
	movl $6, %eax #cinilac 1
	movl $4, %ebx #cinilac 2
	movl $0, %ecx #proizvod
uporedi:
	cmpl $0, %ebx
	je kraj
	cmpl $0, %ebx
	ja uradi
uradi:
	addl %eax, %ecx
	subl $1, %ebx
	jmp uporedi
	
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
