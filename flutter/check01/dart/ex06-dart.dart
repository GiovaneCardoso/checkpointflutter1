void main() {
  double base = 24;
  double altura = 44;
  double area = base * altura / 2;
  print(isBigger(area));
}
  String isBigger(area) => area > 100 ? "Terreno grande" : "Terreno pequeno";

