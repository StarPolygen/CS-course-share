.macro print_string (%str)
	.data
	myLabel: .asciiz %str
	.text
	li $v0, 4
	la $a0, myLabel
	syscall
	.end_macro
.macro end
	li $v0 10
	syscall
	.end_macro