.data 
factorial: .asciiz "Ingrese el numero:"
space: .asciiz "\n"        

.text
.globl main
main:

li  $v0, 4
la  $a0, factorial
syscall

li  $v0, 5
syscall

move        $t0, $v0

li  $v0, 4
la $a0, space
syscall 

beq         $t0, 1, exit  
beq         $t0, 0, exit

addi $t1, $t0, -1

jal    loop 

li $v0, 10
syscall

loop:
beq $t1, $zero, exit
mul $t0, $t0, $t1
addi $t1, $t1, -1
j    loop

exit:
li   $v0, 1
move $a0, $t0
syscall

jr   $ra

salir:
li   $v0, 1
move $a0, $t0
syscall

li $v0, 10
syscall
