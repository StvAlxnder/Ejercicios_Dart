import "dart:io";
import "package:ejercicio1/funciones.dart";

void main() {
  int cantNotas = ingresarCantidadNotas();

  List<double> notas = [];

  notas = ingresarNotas(cantNotas);

  double promedio = calcularPromedio(notas);
  double maxNota = calcularMax(notas);
  double minNota = calcularMin(notas);

  print("\nPromedio: ${promedio}");
  print("Nota más alta: ${maxNota}");
  print("Nota más baja: ${minNota}");
  print( promedio >= 11 ? "Aprobado" : "Reprobado");
}