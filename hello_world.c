/*
 DESCRIPTION: PROGRAMA EN C CON METODO PARA IMPRIMIR
 MENSAJE Y VER SU EQUIVALENCIA EN ENSAMBLADOR

 AUTHOR: JEFFERSON MEJIA
 DATE: 31/01/2024
 ASIGNATURA: COMPUTACION DIGITAL - NRC: 16131
 PEERIODO: 202351

 */

#include <stdio.h>
#include <stdlib.h>

//DECLARACI�N: DATOS, VECTORES
char autor[] = "Jefferson Paul Mejia Chavez\n";
char mensaje[]= "Estoy realizando la practica del laboratorio#2\n";

//FUNCION PRINCIPAL, EJECUCI�N DEL CODIGO
int main(){
  system("color 3f");
  printf(autor);
  printf(mensaje);
  return 0;
}
