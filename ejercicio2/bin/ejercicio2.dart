import "dart:io";
import "package:ejercicio2/funciones.dart";

void main(){
  print("CONVERTIDOR DE NÚMEROS ENTEROS A BINARIO");
  stdout.write("Ingrese un número entero positivo: ");
  int numero = int.parse(stdin.readLineSync()!);

  int original = numero;
  String binario = convertirBinario(numero);

  print("El número $original en binario es: $binario");
}