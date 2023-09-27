import 'dart:math';
import 'dart:io';

int numSolucionesEcGrado2(
    {required double a, required double b, required double c}) {
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

String? coeficiente(double c, [double n = 0]) {
  if (n >= 0 && n <= 2) {
    if (n == 0) {
      return c.toStringAsFixed(0);
    } else if (n == 1) {
      return '${c.toStringAsFixed(0)}x';
    } else if (n == 2) {
      return '${c.toStringAsFixed(0)}x2';
    } else {
      return null;
    }
  }
  return null;
}

String polinomioGrado2Str([double a = 2, double b = 3, double c = 4]) {
  numSolucionesEcGrado2(a: a, b: b, c: c);
  return 'ho';
}
