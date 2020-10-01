.data
factorial: .asczii "Ingre el numero"
espacio: .asczii "\n"

.text
.globl main
main:

li $v0, 4
la $a0, factorial
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 4
la $a0, espacio
syscall

beq  $t0, 1, salir
beq  $t0, 0, salir

addi $t1, $t0, -2









jr $ra

salir:
li          $v0, 1            
move        $a0, $t0          
syscall
li		      $v0, 10		      
syscall
