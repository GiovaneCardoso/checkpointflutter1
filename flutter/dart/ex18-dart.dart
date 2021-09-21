void main() {
  var array = [1, 2, 5, 3, 4, 9, 11, 15, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30];
  int multiplicador = 2;
  for(var i = 0; i < array.length; i++) {
    array[i] = array[i] * multiplicador;
  }
  print(array);
  
}

