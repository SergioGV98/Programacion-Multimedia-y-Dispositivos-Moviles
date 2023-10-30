//  1. Construye una lista `frutas` con tres nombres de frutas (manzana, fresa y
//     naranja) mediante un literal de lista, y otra lista `verduras` con cuatro
//     nombres de verduras (lechuga, coliflor y albahaca), también mediante un
//     literal de lista. A continuación, realiza las siguientes acciones:
import 'dart:math';

void parte1ejercicio1() {
  print("\nPARTE 1. EJERCICIO 1\n");

  List<String> frutas = <String>["Manzana", "Fresa", "Naranja"];
  List<String> verduras = <String>["Lechuga", "Coliflor", "Albahaca"];
  print(frutas);
  print(verduras);

  // a. Construye una lista `huerto` donde figuren todos los elementos de las dos
  //    listas anteriores. Usa un literal de lista en combinación con el
  //    operador de propagación (…).
  List<String> huerto = <String>[...frutas, ...verduras];
  print("a) $huerto");

  // b. Añade, a la lista anterior, dos nombres de árboles (olivo y naranjo).
  // huerto.add('Olivo');
  // huerto.add('Naranjo');
  // huerto.add('Algarrobo');
  huerto.addAll(['Olivo', 'Naranjo', 'Algarrobo']);
  print("b) $huerto");

  // c. Obtén una lista `huertoPlurales` donde aparezcan todos los nombres de
  //    huerto en plural.
  List<String> huertoPlurales = huerto.map((e) => "${e}s").toList();
  print("c) $huertoPlurales");

  // d. Obtén una lista `huertoVocales` donde solo aparezcan los nombres que
  //    comienzan por una vocal.
  /*List<String> huertoVocales = huerto
      .where((e) =>
          e[0].toLowerCase() == 'a' ||
          e[0].toLowerCase() == 'e' ||
          e[0].toLowerCase() == 'i' ||
          e[0].toLowerCase() == 'o' ||
          e[0].toLowerCase() == 'u')
      .toList();*/

  List<String> huertoVocales = huertoPlurales
      .where((e) =>
          ['a', 'e', 'i', 'o', 'u'].any((vocal) => e[0].toLowerCase() == vocal))
      .toList();

  print("d) $huertoVocales");

  // e. Obtén una lista `huertoMasDe5`, donde solo aparezcan los nombres con
  //    más de 6 caracteres.

  List<String> huertoMasDe6 = huertoVocales.where((e) => e.length > 6).toList();

  print("e) $huertoMasDe6");

  // f. Deriva el resultado del apartado d a partir de la lista del apartado b,
  //    encadenando todas las operaciones necesarias en una única línea.
  List<String> huertoMasDe6Alt = huerto
      .map((e) => "${e}s")
      .where((e) =>
          ['a', 'e', 'i', 'o', 'u'].any((vocal) => e[0].toLowerCase() == vocal))
      .where((e) => e.length > 6)
      .toList();

  print("f) $huertoMasDe6Alt");

  // g. Obtén una cadena donde aparezcan todos los nombres de `huertoPlurales`
  //    separados por guiones, y entre comillas dobles.
  String huertoMasDe6Str = huertoMasDe6Alt
      .map(
        (e) => '"$e"',
      )
      .join('-');

  print("g) $huertoMasDe6Str");
}

// 2. Utiliza el constructor List.generate() para crear una lista de 10 números
// aleatorios entre 0 y 100, y muéstrala por la consola. A continuación,
// realiza las siguientes acciones sobre ella:
void parte1ejercicio2() {
  print("\nPARTE 1. EJERCICIO 2\n");

  Random random = Random();

  // a. Obtén la lista resultante de sumar 5 a cada uno de los números de la lista.
  List<int> numeros = List<int>.generate(10, (index) => random.nextInt(100));
  print("a) $numeros");

  // b. Obtén, a partir de ella, otra lista donde solo figuren los números pares.
  List<int> pares = numeros.where((element) => element % 2 == 0).toList();
  print("b) $pares");

  // c. Obtén una lista donde los números aparezcan ordenados alfabéticamente de modo ascendente.
  List<int> ordenados = List.from(numeros)..sort();
  print("c) $ordenados");

  // d. Obtén la suma de todos sus números.
  int suma = numeros.fold<int>(0, (ac, val) => ac + val);
  print("d) $suma");

  // e. Obtén la suma solo de los números impares.
  int sumaImpares = numeros
      .where((element) => element % 2 == 1)
      .fold<int>(0, (ac, val) => ac + val);
  print("e) $sumaImpares");
}
