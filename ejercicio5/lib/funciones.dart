void imprimirFrecuencia(Map<String, int> frec) {
  print("\Frecuencia de palabras:");
  frec.forEach((palabra, conteo) {
    print("$palabra: $conteo");
  });
}

Map<String, int> calcularFrecuencia(String frase) {
  List<String> palabras = frase.split(" ");
  Map<String, int> frecuencia = {};

  for (String palabra in palabras) {
    frecuencia[palabra] = (frecuencia[palabra] ?? 0) + 1;
  }
  return frecuencia;
}