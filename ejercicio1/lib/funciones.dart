import "dart:io";

double calcularPromedio(List<double> notas) {
  return notas.reduce((a, b) => a + b) / notas.length;
}

double calcularMax(List<double> notas) {
  return notas.reduce((a, b) => a > b ? a : b);
}

double calcularMin(List<double> notas) {
  return notas.reduce((a, b) => a < b ? a : b);
}

bool estaAprobado(double promedio) {
  return promedio >= 11;
}

int ingresarCantidadNotas(){
  while(true){
    stdout.write("¿Cuántas notas deseas ingresar? ");
    int cantidad = int.parse(stdin.readLineSync()!);

    if(cantidad > 0){
      return cantidad;
    } else {
      print("Cantidad inválida. Intente nuevamente.");
    }
  }
}

List<double> ingresarNotas(int cantidad){
  List<double> notas = [];
  for (int i = 0; i < cantidad; i++) {    
    while(true){
      stdout.write("Ingrese la nota ${i + 1} (0-20):");
      double nota = double.parse(stdin.readLineSync()!);

      if(nota >= 0 && nota <= 20){
        notas.add(nota);
        break;
      } else {
        print("Nota inválida. Intente nuevamente.");
      }
    }
  }
  return notas;
}