import 'dart:math';
import 'dart:io';

// Ejercicio 2
int numSolucionesEcGrado2(double a, double b, double c) {
  // Parametros posicionales obligatorios
  if ((pow(b, 2) - 4 * a * c) < 0) {
    // No tiene solucion 0
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

return '${a != null ? (coeficiente(a, 2) == '1x²' ? 'x²' : coeficiente(a, 2) == '-1x²' ? '-x²' : '${a.toStringAsFixed(0)}x²') : ''}${b != null ? coeficiente(b, 1) : ''}${c != null ? coeficiente(c) : ''}';
}

// Ejercicio 5

void solucionadorEcuacionesGrado2() {
  stdout.writeln("Solucionador de ecuaciones de segundo grado");
  stdout
      .write("Introduce los coeficientes de la ecuacion separados por comas: ");
  String? texto = stdin.readLineSync();
  double a = 0.0, b = 0.0, c = 0.0;
  if (texto != null) {
    RegExp regex = RegExp(r'^[a-zA-Z]+$');
    if (regex.hasMatch(texto)) {
      stdout.writeln(
          "El texto contiene caracteres no válidos. Inténtalo de nuevo.");
      return;
    }

    List<String> coeficientes = texto.split(',');

    if (coeficientes.length >= 1 && coeficientes[0].isNotEmpty) {
      a = double.tryParse(coeficientes[0].trim()) ?? 1.0;
    }
    if (coeficientes.length >= 2 && coeficientes[1].isNotEmpty) {
      b = double.tryParse(coeficientes[1].trim()) ?? 0.0;
    }
    if (coeficientes.length >= 3 && coeficientes[2].isNotEmpty) {
      c = double.tryParse(coeficientes[2].trim()) ?? 0.0;
    }

    double x1 = (-b + sqrt(pow(b, 2) - 4 * a * c)) / (2 * a);
    double x2 = (-b - sqrt(pow(b, 2) - 4 * a * c)) / (2 * a);
    if (x1.isNaN) {
      stdout.writeln("Esto no es una ecuacion de segundo grado (a es 0)");
    } else {
      stdout.writeln("x1 = $x1, x2 = $x2");
    }
  } else {
    return;
  }
}
