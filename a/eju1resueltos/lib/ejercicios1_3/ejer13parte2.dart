//------------------------------------------------------------------------------------
// Parte 2. Ejercicio 1
import 'package:age_calculator/age_calculator.dart';

void parte2ejercicio1() {
  print("\nPARTE 2. EJERCICIO 1\n");

  // Construye la siguiente estructura de datos y obtén los datos que se piden:
  List<Map<String, dynamic>> articulos = <Map<String, dynamic>>[
    <String, dynamic>{"name": "Laptop", "price": 800},
    <String, dynamic>{"name": "Smartphone", "price": 400},
    <String, dynamic>{"name": "Tablet", "price": 150},
    <String, dynamic>{"name": "Monitor", "price": 300}
  ];

  // a. Lista con los nombres de los artículos.
  List<String> nombres = articulos.map((e) => e["name"] as String).toList();
  // List<String> nombres = articulos.map((e) => e["name"]).cast<String>().toList();

  print("a) $nombres");

  // b. Lista de artículos con un precio mayor que 300.
  List<Map<String, dynamic>> artPrecioMayor300 =
      articulos.where((a) => a["price"] > 300).toList();

  print("b) $artPrecioMayor300");

  // c. Lista con los nombres de los artículos cuyo precio no llega a 200.
  List<String> nombresProdMenos200 = articulos
      .where((a) => a["price"] < 200)
      .map((a) => a["name"] as String)
      .toList();

  print("c) $nombresProdMenos200");

  // d. Suma de los precios de los artículos que cuestan más de 200 dólares.

  int sumaPrecioProdMas200 = articulos
      .where((a) => a["price"] > 200)
      .map((a) => a["price"] as int)
      .fold<int>(0, (ac, v) => ac + v);

  print("d) $sumaPrecioProdMas200");

  // e. Cadena donde aparezcan todos los productos separados por guiones, con
  // su precio entre paréntesis.
  String productosPreciosStr =
      articulos.map((e) => "${e["name"]} (${e["price"]})").join(' - ');

  print("e) $productosPreciosStr");
}

//------------------------------------------------------------------------------------
// Parte 2. Ejercicio 2
void parte2ejercicio2() {
  print("\nPARTE 2. EJERCICIO 2\n");

  // Construye la siguiente estructura de datos y realiza las acciones que se piden:
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

  // a. Lista de nombres de personas con más de 30 años.
  List<Map<String, dynamic>> personasMas30 = personas
      .where(
          (p) => AgeCalculator.age(DateTime.tryParse(p["birth"])!).years > 20)
      .toList();
  print("a) $personasMas30");

  // b. Construye la siguiente estructura y haz uso de ella para obtener un
  // listado de nombres de personas a las que le gusta una fruta de color amarillo (yellow).
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

  print("b) $nombresPersonasFrutasAmarillas");

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

  print("b) $personasFrutasAmarillasEdad");
}
