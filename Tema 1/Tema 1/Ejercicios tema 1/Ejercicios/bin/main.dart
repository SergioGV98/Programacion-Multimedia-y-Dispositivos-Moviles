import 'package:ejercicio1/ecuaciones.dart' as ecuaciones;
import 'dart:io';

void main(List<String> arguments) {
  // Ejercicio 2
  /*
  stdout.writeln(ecuaciones.numSolucionesEcGrado2(1, 1, -2)); // 2
  stdout.writeln(ecuaciones.numSolucionesEcGrado2(1, 0, 0)); // 1
  stdout.writeln(ecuaciones.numSolucionesEcGrado2(2, 3, 4)); // 0
  */
  
  // Ejercicio 3
  /*
  stdout.writeln(ecuaciones.coeficiente(1)); // "1"
  stdout.writeln(ecuaciones.coeficiente(-1)); // "-1"
  stdout.writeln(ecuaciones.coeficiente(3, 1)); // "3x"
  stdout.writeln(ecuaciones.coeficiente(-1, 1)); // "–x"
  stdout.writeln(ecuaciones.coeficiente(-3, 2)); // "–3x2"
  stdout.writeln(ecuaciones.coeficiente(-3, 3)); // null
  */

  // Ejercicio 4
  /*
  stdout.writeln(ecuaciones.polinomioGrado2Str(a: 1, b: -5, c: -2)); // "x2 -5x –2"
  stdout.writeln(ecuaciones.polinomioGrado2Str(a: -2, c: -2)); // "–2x2 –2"
  stdout.writeln(ecuaciones.polinomioGrado2Str(a: -2, b: 3)); // "–2x2 +3x"
  stdout.writeln(ecuaciones.polinomioGrado2Str(b: 1, c: -2)); // "x –2"
  stdout.writeln(ecuaciones.polinomioGrado2Str(c: -2)); // "–2"
  stdout.writeln(ecuaciones.polinomioGrado2Str(b: 8)); // "8x"
  stdout.writeln(ecuaciones.polinomioGrado2Str(c: 5)); // "5"
  stdout.writeln(ecuaciones.polinomioGrado2Str()); // "0"
  */

  // Ejercicio 5
  
  String jugar;
  do {
    ecuaciones.solucionadorEcuacionesGrado2();
    stdout.writeln("¿Deseas resolver otra ecuación? (s/n)");
    jugar = stdin.readLineSync()?.toUpperCase() ?? 'N';
  } while (jugar == 'S'); 
}
