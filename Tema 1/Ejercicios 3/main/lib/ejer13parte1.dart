void parte1ejercicio1() {
  List<String> frutas = ["manzana", "fresa", "naranja"];
  List<String> verduras = ["lechuga", "coliflor", "albahaca"];

  //A)
  List<dynamic> huerto = [frutas, verduras];

  //B)
  huerto.addAll(["olivo", "naranjo", "algarrobo"]);
  print(huerto.toString());

  //C)
  List<List> huertoPlurales = [huerto];
  for (int i = 0; i < huertoPlurales.length; i++) {
    huertoPlurales += huerto[i] + "s";
  }
}
