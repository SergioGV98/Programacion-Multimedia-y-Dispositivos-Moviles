import 'dart:math';

void parte1ejercicio1() {
  // A
  List<String> frutas = ['manzana', 'fresa', 'naranja'];
  List<String> verduras = ['lechuga', 'coliflor', 'albahaca'];

  List<String> huerto = [...frutas, ...verduras];

  // B
  huerto.addAll(['olivo', 'naranjo', 'algarrobo']);

  // C
  List<String> huertoPlurales = huerto.map((element) => '${element}s').toList();

  // D
  List<String> huertoVocales = huertoPlurales
      .where((element) => 'aeiouAEIOU'.contains(element[0]))
      .toList();

  // E
  List<String> huertoMasDe5 =
      huertoVocales.where((element) => element.length > 6).toList();

  // F
  huerto = huerto
      .map((element) => '${element}s')
      .where((element) => element.length > 6)
      .toList();

  // G
  String huertoCadena = huerto.map((element) => '"$element"').join(' - ');

  // Imprimir las listas resultantes
  print('Lista huerto: $huerto');
  print('Lista huertoPlurales: $huertoPlurales');
  print('Lista huertoVocales: $huertoVocales');
  print('Lista huertoMasDe5: $huertoMasDe5');
  print('Lista huerto: $huerto');
  print('Huerto Cadena: $huertoCadena');
}

void parte1ejercicio2() {
  final random = Random();
  List<int> numerosAleatorios =
      List.generate(10, (index) => random.nextInt(101));
  print('Lista de números aleatorios: $numerosAleatorios');

  // A
  List<int> numerosSumados =
      numerosAleatorios.map((numero) => numero + 5).toList();
  print('a. Lista resultante de sumar 5 a cada número: $numerosSumados');

  // B
  List<int> numerosPares =
      numerosSumados.where((numero) => numero % 2 == 0).toList();
  print('b. Lista de números pares: $numerosPares');

  // C
  List<int> numerosOrdenados = [...numerosSumados]..sort();
  print(
      'c. Lista ordenada alfabéticamente de modo ascendente: $numerosOrdenados');

  // D
  int sumaTotal = numerosSumados.reduce((valor, elemento) => valor + elemento);
  print('d. Suma de todos los números: $sumaTotal');

  // E
  int sumaImpares = numerosSumados
      .where((numero) => numero % 2 != 0)
      .reduce((valor, elemento) => valor + elemento);
  print('e. Suma de los números impares: $sumaImpares');
}
