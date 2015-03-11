#!/bin/bash
echo -n "Introducza el primer numero: "
read num1
echo -n "Introduzca el segundo numero: "
read num2
let suma=num1+num2
let resta=num1-num2
let multiplicacion=num1*num2
let division=num1/num2
let modulo=num1%num2
echo "Suma: $suma"
echo "Resta: $resta"
echo "Division: $division"
echo "Multiplicacion: $(($num1*$num2))"
