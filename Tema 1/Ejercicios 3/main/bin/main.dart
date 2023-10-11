import 'package:main/ejer13parte1.dart';

void main(List<String> arguments) {
  List<String> frutas = ["manzana", "fresa", "naranja"];
  List<String> verduras = ["lechuga", "coliflor", "albahaca"];

  //A)
  List<dynamic> huerto = [frutas, verduras];

  //B)
  huerto.addAll(["olivo", "naranjo", "algarrobo"]);

  //C)
  List<dynamic> huertoPlurales = huerto.map((a) => "${a}s").toList();
  print(huertoPlurales);
}
