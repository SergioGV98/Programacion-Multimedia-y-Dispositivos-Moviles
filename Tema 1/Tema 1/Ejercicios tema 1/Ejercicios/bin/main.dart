import 'package:ejercicio1/ecuaciones.dart' as ecuaciones;
import 'dart:io';

void main(List<String> arguments) {
  //funciones.adivinaElNumero(max: 1000);
  //stdout.write(ecuaciones.numSolucionesEcGrado2(1, 0, 0));

  // Ejercicio 3
  stdout.writeln(ecuaciones.coeficiente(1)); // "1"
  stdout.writeln(ecuaciones.coeficiente(-1)); // "-1"
  stdout.writeln(ecuaciones.coeficiente(3, 1)); // "3x"
  stdout.writeln(ecuaciones.coeficiente(-1, 1)); // "–x"
  stdout.writeln(ecuaciones.coeficiente(-3, 2)); // "–3x2"
  stdout.writeln(ecuaciones.coeficiente(-3, 3)); // null

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
}
