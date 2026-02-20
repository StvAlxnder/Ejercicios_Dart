import "dart:io";

List<List<int>> ingresarMatriz() {
  stdout.write("Ingrese tamaño de la matriz NxN: ");
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = [];

  for (int i = 0; i < n; i++){
    List<int> fila = [];
    for (int j = 0; j < n; j++){
      stdout.write("Elemento [$i][$j]: ");
      fila.add(int.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }
  return matriz;
}

int sumarDiagonalPrincipal(List<List<int>> matriz) {
  int suma = 0;
  for (int i = 0; i < matriz.length; i++){
    suma += matriz[i][i];
  }
  return suma;
}

int sumarDiagonalSecundaria(List<List<int>> matriz) {
  int suma = 0;
  int n = matriz.length;
  for (int i = 0; i < n; i++){
    suma += matriz[i][n - 1 - i];
  }
  return suma;
}

void imprimirResultados(List<List<int>> matriz, int sumaPrincipal, int sumaSecundaria) {
  print("\nMatriz ingresada:");
  for (var fila in matriz){
    print(fila);
  }  

  print("Suma de la diagonal principal: $sumaPrincipal");
  print("Suma de la diagonal secundaria: $sumaSecundaria");
}