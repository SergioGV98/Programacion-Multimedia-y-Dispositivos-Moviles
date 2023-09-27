import 'dart:math';
import 'dart:io';

void adivinaElNumero({required final int max}) {
  Random r = Random();
  String jugar = 'S';

  while (jugar == 'S') {
    int intento = 1;
    int numero = r.nextInt(max);
    int? numIntroducido;

    stdout.writeln("Adivina el número entre 0 y $max: ");

    do {
      stdout.write("Intento $intento: ");
      String? linea = stdin.readLineSync();

      if (linea != null) {
        numIntroducido = int.tryParse(linea);

        if (numIntroducido != null) {
          if (numIntroducido > numero) {
            stdout.write("Te has pasado. Intenta de nuevo.\n");
          } else if (numIntroducido < numero) {
            stdout.write("No llegas. Intenta de nuevo.\n");
          } else {
            stdout.write("¡Acertaste el número! Era el $numero.\n");
            stdout.write("Descubrirlo te ha llevado $intento intentos.\n");
          }
        } else {
          stdout
              .write("El número introducido no es válido. Intenta de nuevo.\n");
        }
      } else {
        stdout.write(
            "No puedes introducir una cadena vacía o nula. Intenta de nuevo.\n");
      }

      intento += 1;
    } while (numIntroducido != numero);

    stdout.write("¿Quieres jugar de nuevo? (S/N): ");
    jugar = stdin.readLineSync()?.toUpperCase() ?? 'N';
  }
}
