import 'package:age_calculator/age_calculator.dart';

class Usuario {
  // No nulables
  int numero;
  String username;
  String password;
  String email;

  // Nulables
  String? nombre;
  String? apellidos;
  String? nacionalidad;
  // Ejercicio 4
  DateTime? nacimiento;

  Usuario({required this.numero, required this.username, required this.password, required this.email}, // Hacerlos opcionales con nombre
      {[String? nom, String? ape, String? nac, String? nacim]}) {
    nombre = nom;
    apellidos = ape;
    nacionalidad = nac;
    // Ejercicio 4
    if (nacim != null) {
      nacimiento = DateTime.tryParse(nacim);
    }
  }

  String get nombreCompleto {
    return "$nombre$apellidos";
  }

  int? get edad {
    DateDuration duration;
    if (nacimiento != null) {
      duration = AgeCalculator.age(nacimiento!);
      print(duration);
    }
    return null;
  }

  @override
  String toString() {
    return '''Usuario(
      Id: $numero
      Username: $username
      Password: $password
      Email: $email
      Nombre: $nombre
      Apellidos: $apellidos
      Nacionalidad: $nacionalidad
      Nacimiento: $nacimiento
      Edad: $edad
    )''';
  }

  // Ejercicio 3

  Usuario copyWith(
      {int? numero,
      String? username,
      String? password,
      String? email,
      String? nombre,
      String? apellidos,
      String? nacionalidad}) {
    return Usuario(
        numero!, username!, password!, email!, nombre, apellidos, nacionalidad);
  }
}
