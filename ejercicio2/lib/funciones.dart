import "dart:io";

String convertirBinario(int numero) {
    String binario = "";
    while (numero > 0){
    binario = (numero % 2).toString() + binario;
    numero ~/= 2;
    }
    return binario;    
}