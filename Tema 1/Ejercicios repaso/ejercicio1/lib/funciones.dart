import 'dart:math';
import 'dart:io';

//TODO Hacer el jugar de nuevo

void adivinaElNumero({required final int max}) {
  Random r = Random();
  int intento = 1;
  int numero = r.nextInt(max);
  int? numIntroducido;

  do {
    stdout.write("Intento $intento: ");
    String? linea = stdin.readLineSync();
    if (linea != null) {
      int? numIntroducido = int.tryParse(linea);
      if (numIntroducido != null) {
        if (numIntroducido > numero) {
          stdout.write("Te has pasado.");
        } else if (numIntroducido < numero) {
          stdout.write("No llegas.");
        } else {
          stdout.write("¡Acertaste el numero era $numero!");
          stdout.write("Descubrirlo te ha llevado $intento intentos.");
          return;
        }
      } else {
        stdout.write("El numero introducido no es valido.");
      }
    } else {
      stdout.write("No puedes introducir una cadena vacia o nula.");
    }
    intento += 1;
  } while (numIntroducido != numero);
}
