
import 'package:age_calculator/age_calculator.dart';

void parte2ejercicio1() {
  print("\nPARTE 2. EJERCICIO 1\n");

   List<Map<String, dynamic>> articulos = <Map<String, dynamic>>[
    <String, dynamic>{"name": "Laptop", "price": 800},
    <String, dynamic>{"name": "Smartphone", "price": 400},
    <String, dynamic>{"name": "Tablet", "price": 150},
    <String, dynamic>{"name": "Monitor", "price": 300}
  ];
  print(articulos);

  //A
  List<String> nombres = articulos.map((e) => e["name"] as String).toList();
  //List<String> nombres = articulos.map((e) => e["name"]).cast<String>().toList();
  print(nombres);

  //B
  List<Map<String, dynamic>> articulosPrecioMayor = articulos.where((element) => element["price"] > 300).toList();
  print(articulosPrecioMayor);

  //C
  List<String> nombresArticulosMenor = articulos.where((element) => element["price"] < 200).map((e) => e["name"] as String).toList();
  print(nombresArticulosMenor);

  //D
  int sumaArticulos = articulos.where((element) => element["price"] > 200).map((e) => e["price"] as int).fold<int>(0, (previousValue, element) => previousValue + element);
  print(sumaArticulos);

  //E
  String cadena = articulos.map((e) => "${e["name"]} (${e["price"]})").join(" - ");
  print(cadena);
}

void parte2ejercicio2() {
  print("\nPARTE 2. EJERCICIO 2\n");
   List<Map<String, dynamic>> personas = <Map<String, dynamic>>[
    <String, dynamic>{
      "name": "John",
      "birth": "2010-11-05",
      "favFruits": ["banana"]
    },
    <String, dynamic>{
      "name": "Mary",
      "birth": "2015-01-19",
      "favFruits": ["banana", "mango"]
    },
    <String, dynamic>{
      "name": "Bob",
      "birth": "1999-08-23",
      "favFruits": ["kiwi", "apple"]
    },
    <String, dynamic>{
      "name": "Sara",
      "birth": "1976-04-12",
      "favFruits": ["pear", "grapes"]
    }
  ];

  //A
   List<Map<String, dynamic>> personasMas30 = personas
      .where(
          (p) => AgeCalculator.age(DateTime.tryParse(p["birth"])!).years > 20)
      .toList();
  print("$personasMas30");

  //B
    List<Map<String, dynamic>> fruitColors = [
    {"name": "banana", "color": "yellow"},
    {"name": "apple", "color": "green"},
    {"name": "grapes", "color": "purple"},
    {"name": "pear", "color": "green"}
  ];

  
  List<String> nombresPersonasFrutasAmarillas = personas
      .where((p) => (p["favFruits"] as List<String>).any((fruitName) =>
          fruitColors
              .where((fruit) =>
                  fruit["name"] == fruitName && fruit["color"] == "yellow")
              .isNotEmpty))
      .map((e) => e["name"] as String)
      .toList();

      print(nombresPersonasFrutasAmarillas);

List<Map<String, dynamic>> personasFrutasAmarillasEdad = personas
      .where((p) => (p["favFruits"] as List<String>).any((fruitName) =>
          fruitColors
              .where((fruit) =>
                  fruit["name"] == fruitName && fruit["color"] == "yellow")
              .isNotEmpty))
      .map((p) => {
            ...p,
            "edad": AgeCalculator.age(DateTime.tryParse(p["birth"])!).years
          })
      .toList();

  print("$personasFrutasAmarillasEdad");
}