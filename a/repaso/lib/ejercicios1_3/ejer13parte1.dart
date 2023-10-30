import 'dart:math';

void parte1ejercicio1() {
  print("\nPARTE 1. EJERCICIO 1\n");
  //A
  List<String> frutas = <String>["Manzana", "Fresa", "Naranja"];
  print(frutas);
  List<String> verduras = <String>["Lechuga", "Colifor", "Albahaca"];
  print(verduras);

  List<String> huerto = <String>[...frutas, ...verduras];
  print(huerto);
  /*
  huerto.add("Olivo");
  huerto.add("Naranjo");
  huerto.add("Algarrobo");*/
  //B
  huerto.addAll(["Olivo", "Naranjo", "Algarrobo"]);
  print(huerto);

  //C
  List<String> huertosPlurales = huerto.map((e) => "${e}s").toList();
  print(huertosPlurales);

  //D
  List<String> huertoVocales = huertosPlurales
      .where((e) =>
          e[0].toLowerCase() == 'a' ||
          e[0].toLowerCase() == 'e' ||
          e[0].toLowerCase() == 'i' ||
          e[0].toLowerCase() == 'o' ||
          e[0].toLowerCase() == 'u')
      .toList();
  //List<String> huertoVocales = huertosPlurales.where((element) => ["a", "e", "i", "o", "u"].any((vocal) => element[0].toLowerCase() == vocal)).toList();
  print(huertoVocales);

  //E
  List<String> huertoMasDe5 =
      huertoVocales.where((element) => element.length > 6).toList();
  print(huertoMasDe5);

  //F
  List<String> huertoMasDe6Alt = huerto
      .map((e) => "${e}s")
      .where((e) =>
          e[0].toLowerCase() == 'a' ||
          e[0].toLowerCase() == 'e' ||
          e[0].toLowerCase() == 'i' ||
          e[0].toLowerCase() == 'o' ||
          e[0].toLowerCase() == 'u')
      .where((element) => element.length > 6)
      .toList();
  print(huertoMasDe6Alt);

  //G
  String huertoMasDe6Str = huertosPlurales.map((e) => '"$e"').join('-');
  print(huertoMasDe6Str);
}

void parte1ejercicio2() {
  print("\nPARTE 1. EJERCICIO 2\n");
  Random random = Random();
  List<int> numeros = List<int>.generate(10, (index) => random.nextInt(100));
  //List<int> numeros = List<int>.generate(10, (index) => random.nextInt(51) + 50); del 50 al 100
  print(numeros);

  //A
  List<int> numerosSum5 = numeros.map((e) => e + 5).toList();
  print(numerosSum5);

  //B
  List<int> numerosPares = numerosSum5.where((element) => element%2 == 0).toList();
  print(numerosPares);

  //C
  List<int> numerosOrdenados = List.from(numeros)..sort();
  List<int> numerosOrdenadosDesc = List.from(numeros)..sort((a, b) => b.compareTo(a));
  print(numerosOrdenados);
  print(numerosOrdenadosDesc);

  //D
  int suma = numeros.fold<int>(0, (total, val) => total + val);
  //int suma = numeros.reduce((ac, val) => ac + val);
  print(suma);

  //E
  int sumaImpares = numeros.where((element) => element % 2 != 0).fold(0, (previousValue, element) => previousValue + element);
  print(sumaImpares);
}
