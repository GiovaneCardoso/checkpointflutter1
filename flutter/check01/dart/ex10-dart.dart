void main() {
  double aceleracao = 3;
  double v0 = 55;
  double tempo = 25;
  double velocidadeFinal = (v0 + (aceleracao * tempo));
  print(velocidadeFinal);
  if(velocidadeFinal <= 40) {
    print("veiculo muito lento");
  } else {
    if(velocidadeFinal <= 60) {
      print("Velocidade permitida");
    } else {
      if(velocidadeFinal <= 80) {
        print("velocidade de cruzeiro");
      } else {
        if(velocidadeFinal <= 120){
          print("veiculo rapido");
        } else {
          if(velocidadeFinal > 120) {
            print("veiculo muito rapido");
          }
        }
      }
    }
  }
}

