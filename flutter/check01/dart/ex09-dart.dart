void main() {
  double altura = 1.65;
  double massa = 65;
  String sexo = "Feminino";
  double imc = (massa/(altura * altura));
  print(imc);
  if(sexo == "Masculino") {
      if(imc > 20 && imc < 25) {
      print("Peso normal");
    } else {
      print("Peso não ideal");
    }
  } else {
      if(imc > 19 && imc < 24) {
      print("Peso normal");
  } else {
      print("Peso não ideal");
    }
  }
}

