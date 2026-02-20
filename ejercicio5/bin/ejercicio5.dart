import "dart:io";
import "package:ejercicio5/funciones.dart";

void main() {
  stdout.write("Ingrese una frase: ");
  String frase = stdin.readLineSync()!.toLowerCase();
  Map<String, int> frecuencia = calcularFrecuencia(frase);  
  imprimirFrecuencia(frecuencia);
}