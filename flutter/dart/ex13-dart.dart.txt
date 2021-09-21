void main() {
  int valorInicial = 1;
  int valorAlternativo = 0;
  var oldValue;
  for(var i = 0; i <= 30; i++) {
    print("$i ªvez -> $valorAlternativo");
    oldValue = valorInicial;
    valorInicial = valorInicial + valorAlternativo;
    valorAlternativo = oldValue;
  }
}

