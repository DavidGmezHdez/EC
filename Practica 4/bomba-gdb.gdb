# Practica 4, Ejercicio 1: evitar las comprobaciones
# David Gómez Hernández
# Ahorrarse teclear estas instrucciones cada vez
# que se empieza a depurar el programa bomba

#contraseña original string= abracadabra
#pin original=7777
#coordenadas originales= 1 1,2 2,3 3
#contraseña modificada string=*vacio*
#pin modificado=123
#contraseñas modificadas= no conseguido

# Debido al nombre de fichero "bomba-gdb.gdb"
# se carga automaticamente al ejecutar "gdb bomba"

layout asm
layout regs
br *0x4007cc
br *0x4007ee
br *0x400847
br *0x40086b
br *0x4008c6
run < <(echo -e hola\\n123\\n)
set $eax=0
cont
set $eax=0
cont
set $eax=123
cont
set $eax=0
cont
# A partir de aqui el programa se queda parado en el breakpoint *0x4008c6 que es el primer if.
# El programa utiliza cmpl para comparar el lo que hay el registro $rsp+0x8 con 1.
# No he conseguido sacar la solución para saltarse ese operador logico y por ende desactivar la bomba.