import 'dart:math';
import 'dart:io';

//----------------------------------------------------------------------------------------------
// EJERCICIO 1. Función mediaNumeros
//----------------------------------------------------------------------------------------------
void mediaNumeros() {
  String? lectura;
  double? valor;
  double acumulador;
  int cantidadNumeros;
  String? continuar;

  stdout.writeln("Calculadora de medias");
  do {
    acumulador = 0;
    cantidadNumeros = 0;
    do {
      stdout.write("Introduce un número o fin para terminar: ");
      lectura = stdin.readLineSync();
      if (lectura != "fin") {
        if (lectura == null) {
          stdout.write("Hey! No has introducido nada. ");
        } else {
          valor = double.tryParse(lectura);
          if (valor == null) {
            stdout.write("Hey! Eso no es un número. ");
          } else {
            acumulador += valor;
            cantidadNumeros++;
          }
        }
      }
    } while (lectura != "fin");

    if (cantidadNumeros > 0) {
      double media = acumulador / cantidadNumeros;
      stdout.writeln("La media de los números introducidos es $media");
    } else {
      stdout.writeln(
          "No se ha calculado ninguna media ya que no has introducido ningún número.");
    }

    if (cantidadNumeros > 0) {
      stdout.write("¿Deseas calcular otra media? (s/n) ");
      continuar = stdin.readLineSync();
    }
  } while (continuar != null && continuar.toUpperCase() == "S");
}

//----------------------------------------------------------------------------------------------
// EJERCICIO 2. Función adivinaElNumero
//----------------------------------------------------------------------------------------------
void adivinaElNumero({required final int max}) {
  Random generador = Random();

  int numero;
  int? prueba;
  int numIntentos;
  String? continuar;

  stdout.writeln("Te doy la bienvenida a ADIVINA EL NÚMERO");

  stdout.writeln(
      "Estoy pensando un número entre 0 y $max, trata de adivinar cual es.");
  do {
    numero = generador.nextInt(max);
    numIntentos = 1;
    do {
      stdout.write("Intento $numIntentos: ");
      prueba = int.tryParse(stdin.readLineSync() ?? '');
      if (prueba != null) {
        if (prueba > numero) {
          stdout.write("Te has pasado. ");
        } else if (prueba < numero) {
          stdout.write("No llegas. ");
        } else {
          stdout.writeln("SI!! ESE ES EL NÚMERO.");
          stdout.writeln(
              "Descrubrirlo te ha llevado $numIntentos intento${numIntentos != 1 ? "s" : ""}.");
        }
      } else {
        stdout.writeln("Hey! Eso no es un número!");
        stdout.writeln("Que sepas que te lo contabilizo como un intento.");
      }
      numIntentos++;
    } while (prueba != numero);

    stdout.write("¿Quieres jugar de nuevo? (s/n) ");
    continuar = stdin.readLineSync();
  } while (continuar != null && continuar.toUpperCase() == "S");
}

//----------------------------------------------------------------------------------------------
// EJERCICIO 3. Función numSolucionesEcGrado2
//----------------------------------------------------------------------------------------------
int numSolucionesEcGrado2(double a, double b, double c) {
  double r = pow(b, 2) - 4 * a * c;

  if (r > 0) return 2;
  if (r == 0) return 1;

  return 0;
}

//----------------------------------------------------------------------------------------------
// EJERCICIO 4. Función coeficiente
//----------------------------------------------------------------------------------------------
String? coeficiente(double c, [int n = 0]) {
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

//----------------------------------------------------------------------------------------------
// EJERCICIO 5. Función polinomioGrado2Str
//----------------------------------------------------------------------------------------------
String polinomioGrado2Str({double a = 0, double b = 0, double c = 0}) {
  String strA = a != 0 ? coeficiente(a, 2)! : '';
  String strB = b != 0 ? coeficiente(b, 1)! : '';
  String strC = c != 0 ? coeficiente(c)! : '';

  if (b > 0 && strA.isNotEmpty) strB = "+$strB";
  if (c > 0 && (strB.isNotEmpty || strA.isNotEmpty)) strC = "+$strC";

  String espacio1 = '';
  String espacio2 = '';
  if (strA.isNotEmpty && (strB.isNotEmpty || strC.isNotEmpty)) espacio1 = ' ';
  if (strB.isNotEmpty && strC.isNotEmpty) espacio2 = ' ';
  if (strA.isEmpty && strB.isEmpty && strC.isEmpty) strC = '0';

  return "$strA$espacio1$strB$espacio2$strC";
}

//----------------------------------------------------------------------------------------------
// EJERCICIO 5. Procedimiento solucionadorEcuacionesGrado2
//----------------------------------------------------------------------------------------------
void solucionadorEcuacionesGrado2() {
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
