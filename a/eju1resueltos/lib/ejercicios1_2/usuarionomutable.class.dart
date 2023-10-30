import 'package:age_calculator/age_calculator.dart';

class UsuarioNoMutable {
  final int id;
  final String username, password, email;
  final String? nombre, apellidos, nacionalidad;
  final DateTime? nacimiento;

  const UsuarioNoMutable._(this.id, this.username, this.password, this.email,
      {this.nombre, this.apellidos, this.nacionalidad, this.nacimiento});

  factory UsuarioNoMutable(
      int id, String username, String password, String email,
      {String? nombre,
      String? apellidos,
      String? nacionalidad,
      String? nacimiento}) {
    return UsuarioNoMutable._(id, username, password, email,
        nombre: nombre,
        apellidos: apellidos,
        nacionalidad: nacionalidad,
        nacimiento: DateTime.tryParse(nacimiento ?? ''));
  }

  String get nombreCompleto => "$nombre $apellidos";

  int? get edad =>
      nacimiento != null ? AgeCalculator.age(nacimiento!).years : null;

  @override
  String toString() {
    return """
Usuario(
  Id: $id
  Username: $username
  Password: $password
  Email: $email
  Nombre: $nombre
  Apellidos: $apellidos
  Nacionalidad: $nacionalidad
  Nacimiento: $nacimiento
  Edad: $edad
)""";
  }

  UsuarioNoMutable copyWith(
      {int? id,
      String? username,
      String? password,
      String? email,
      String? nombre,
      String? apellidos,
      String? nacionalidad,
      String? nacimiento}) {
    return UsuarioNoMutable(id ?? this.id, username ?? this.username,
        password ?? this.password, email ?? this.email,
        nombre: nombre ?? this.nombre,
        apellidos: apellidos ?? this.apellidos,
        nacionalidad: nacionalidad ?? this.nacionalidad,
        nacimiento: nacimiento ?? this.nacimiento.toString());
  }
}
