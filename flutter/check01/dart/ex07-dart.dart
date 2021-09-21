void main() {
  double altura = 1.65;
  double massa = 65;
  double imc = (massa/(altura * altura));
  if(imc > 18.5 && imc < 24.9) {
    print("Peso normal");
  } else {
    print("Peso não ideal");
  }
}

