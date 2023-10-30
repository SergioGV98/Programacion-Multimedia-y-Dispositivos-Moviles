import 'dart:io';
import 'dart:math';

//Unidad 1. Apartado 2
int numSolucionesEcGrado2(double a, double b, double c) {
  // Posicionales obligatorios
  double r = pow(b, 2) - 4 * a * c;

  if (r > 0) return 2;
  if (r == 0) return 1;

  return 0;
}

//Unidad 1. Apartado 3
String? coeficiente(double c, [double n = 0]) {
  // Posicional C y opcional N
  if (n < 0 || n > 2) return null;

  // En caso de que c sea negativo, introducimos un signo menos delante con un espacio en blanco
  String strC;

  strC = (c.truncate() == c) ? "${c.toInt()}" : "$c";

  // Generamos el coeficiente del polinomio
  String letra = '';
  if (n == 2) letra = 'x²';
  if (n == 1) letra = 'x';

  String salida = '';
  if (n == 0) {
    salida = strC;
  } else {
    if (c == 1) {
      salida = letra;
    } else if (c == -1) {
      salida = "-$letra";
    } else {
      salida = "$strC$letra";
    }
  }

  return salida;
}

String polinomioGrado2Str({double a = 0, double b = 0, double c = 0}) {
  //Parametros opcionales con nombre
  if(a == 0 && b == 0 && c == 0) return '0';

  String salidaA = a != 0 ? coeficiente(a, 2)! : '';
  String salidaB = b != 0 ? coeficiente(b, 1)! : '';
  String salidaC = c != 0 ? coeficiente(c)! : '';

   if (b > 0 && salidaA.isNotEmpty) salidaB = "+$salidaB";
  if (c > 0 && (salidaB.isNotEmpty || salidaA.isNotEmpty)) salidaC = "+$salidaC";


  return "$salidaA$salidaB$salidaC";
}

void solucionadorEcuacionesGrado2() { // Unidad 1 Apartado 5 solucionadorEcucacionesGrado2
  double? a, b, c;
  String? lecturaCoeficientes, continuar;
  bool bErrorEnCoeficiente = false;
  double r, x1, x2;

  stdout.writeln("Solucionador de ecuaciones de segundo grado.");

  do {
    stdout.write(
        "Introduce los coeficientes de la ecuación separados por comas: ");

    lecturaCoeficientes = stdin.readLineSync();
    if (lecturaCoeficientes == null) {
      stdout.write("No se han podido leer los coeficientes.");
    } else {
      List<String> coefs = lecturaCoeficientes.split(',');
      if (coefs.isNotEmpty && coefs.length <= 3) {
        a = double.tryParse(coefs[0]);
        bErrorEnCoeficiente = a == null;
        a = a ?? 0;

        if (coefs.length >= 2) {
          b = double.tryParse(coefs[1]);
          bErrorEnCoeficiente = bErrorEnCoeficiente || b == null;
        }

        b = b ?? 0;

        if (coefs.length >= 3) {
          c = double.tryParse(coefs[2]);
          bErrorEnCoeficiente = bErrorEnCoeficiente || c == null;
        }

        c = c ?? 0;

        if (bErrorEnCoeficiente) {
          stdout.writeln(
              "Hay un error en alguno de los coeficientes que has indicado.");
        } else if (a == 0) {
          stdout.writeln("Esto no es una ecuación de segundo grado (a es 0).");
        } else {
          stdout.writeln(
              "Se va a tratar de resolver la siguiente ecuación: ${polinomioGrado2Str(a: a, b: b, c: c)} = 0");
          switch (numSolucionesEcGrado2(a, b, c)) {
            case 2:
              r = sqrt(pow(b, 2) - 4 * a * c);
              x1 = (-b + r) / (2 * a);
              x2 = (-b - r) / (2 * a);
              stdout.writeln("Tiene dos soluciones: x1 = $x1, x2 = $x2");

            case 1:
              x1 = -b / (2 * a);
              stdout.writeln("Tiene una solución: x = $x1");

            case 0:
              stdout.writeln("No tiene solución.");
          }
        }
      } else {
        stdout.writeln("Ey! Debes especificar entre uno y tres coeficientes.");
      }

      stdout.write("¿Deseas resolver otra ecuación? (s/n) ");
      continuar = stdin.readLineSync();
    }
  } while (continuar != null && continuar.toUpperCase() == "S");
  stdout.writeln("Hasta luego!");
}
