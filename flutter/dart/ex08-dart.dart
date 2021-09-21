void main() {
  double lado1 = 8;
  double lado2 = 8;
  double lado3 = 9;
  
  if(lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1) {
    if(lado1 == lado2 && lado1 == lado3) {
      print("Equilatero");
    } else {
      if(lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
        print("Isoceles");
      } else {
        print("Escaleno");
      }
    }
  } else {
    print("nao existe");
  }
}

