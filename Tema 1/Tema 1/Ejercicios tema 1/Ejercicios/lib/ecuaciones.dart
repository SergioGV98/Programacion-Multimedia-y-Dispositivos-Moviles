import 'dart:math';
import 'dart:io';

// Ejercicio 2
int numSolucionesEcGrado2(double a, double b, double c) {
  // Parametros posicionales obligatorios
  if ((pow(b, 2) - 4 * a * c) < 0) {
    // No tiene solucion 0
    stdout.write("La ecuación no tiene solucion es menor que cero.\n");
    return 0;
  } else if ((pow(b, 2) - 4 * a * c) == 0) {
    // Tiene una sola solucion 1
    return 1;
  } else {
    // Tiene dos soluciones 2
    return 2;
  }
}

// Ejercicio 3
String? coeficiente(double c, [double n = 0]) {
  // Parametro c obligatorio () y parametro n es opcional [] y valor por defecto 0
  if (n >= 0 && n <= 2) {
    return ((c == -1 || c == 1) && n == 1) ? (c == -1 ? "-x" : "x") : '${c == 1 ? c.toStringAsFixed(0) : c.toStringAsFixed(0)}${n == 0 ? '' : 'x${n == 1 ? '' : '²'}'}';
  }
  return null;
}

// Ejercicio 4
String polinomioGrado2Str({double? a, double? b, double? c}) {
  if (a == null && b == null && c == null) {
    return '0';
  }

  return '${a != null ? coeficiente(a, 2) : ''}${b != null ? coeficiente(b, 1) : ''}${c != null ? coeficiente(c) : ''}';
}

// Ejercicio 5