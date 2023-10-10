import 'package:age_calculator/age_calculator.dart';
import 'Base.class.dart';

class Usuario extends Base {
  // No nulables
  int numero;
  String username;
  String password;
  String email;

  // Nulables
  String? nombre;
  String? apellidos;
  String? nacionalidad;
  DateTime? nacimiento;
  final DateTime creacion;

  Usuario(
      {required this.numero,
      required this.username,
      required this.password,
      required this.email,
      this.nombre,
      this.apellidos,
      this.nacionalidad,
      String? nacim,
      Base? context})
      : creacion = DateTime.now(),
        super(context: context) {
    if (nacim != null) {
      nacimiento = DateTime.tryParse(nacim);
    }
  }

  Usuario.anonimo()
      : numero = 0,
        username = '',
        password = '',
        email = '',
        nombre = null,
        apellidos = null,
        nacionalidad = null,
        nacimiento = null,
        creacion = DateTime.now();

  factory Usuario.fromCSV(String csvData) {
    final List<String> userData = csvData.split(',');

    if (userData.length != 7) {
      throw ArgumentError(
          'La cadena debe contener 7 elementos separados por comas.');
    }

    return Usuario(
      numero: int.parse(userData[0]),
      username: userData[1],
      password: userData[2],
      email: userData[3],
      nombre: userData[4].isEmpty ? null : userData[4],
      apellidos: userData[5].isEmpty ? null : userData[5],
      nacionalidad: userData[6].isEmpty ? null : userData[6],
    );
  }

  String get nombreCompleto {
    return "$nombre $apellidos";
  }

  int? get edad {
    DateDuration? duration;
    if (nacimiento != null) {
      duration = AgeCalculator.age(nacimiento!);
      return duration.years;
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
      Creacion: $creacion
    )''';
  }

  Usuario copyWith(
      {int? numero,
      String? username,
      String? password,
      String? email,
      String? nombre,
      String? apellidos,
      String? nacionalidad,
      DateTime? nacimiento}) {
    return Usuario(
        numero: numero ?? this.numero,
        username: username ?? this.username,
        password: password ?? this.password,
        email: email ?? this.email,
        nombre: nombre ?? this.nombre,
        apellidos: apellidos ?? this.apellidos,
        nacionalidad: nacionalidad ?? this.nacionalidad,
        nacim: nacimiento?.toIso8601String());
  }
}
