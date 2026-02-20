import "dart:io";
import "package:ejercicio3/funciones.dart";

void main(){
  List<List<int>> matriz = ingresarMatriz();

  int sumaPrincipal = sumarDiagonalPrincipal(matriz);
  int sumaSecundaria = sumarDiagonalSecundaria(matriz);

  imprimirResultados(matriz, sumaPrincipal, sumaSecundaria);
}