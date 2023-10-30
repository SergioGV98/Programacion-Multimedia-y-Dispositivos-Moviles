import 'package:age_calculator/age_calculator.dart';
import 'package:repaso/ejercicios1_2/base.class.dart';

class Usuario extends Base{
  int id;
  String username, password, email;
  String? nombre, apellidos, nacionalidad;
  DateTime? nacimiento;
  final DateTime creacion = DateTime.now();

  Usuario(this.id, this.username, this.password, this.email,
      {this.nombre,
      this.apellidos,
      this.nacionalidad,
      String? nacimiento,
      Base? context})
      : nacimiento = DateTime.tryParse(nacimiento ?? ''), super(context); //ID, Username, Password, Email parametros con nombres obligatorios los demas opcionales con nombre

 Usuario.anonimo()
      : id = 0,
        username = '',
        password = '',
        email = '';

  factory Usuario.fromString(String datosUsuario) {
    List<String> componentes = datosUsuario.split(',');
    int id = componentes.isNotEmpty ? (int.tryParse(componentes[0]) ?? 0) : 0;
    String username = componentes.length > 1 ? componentes[1].trim() : '';
    String password = componentes.length > 2 ? componentes[2].trim() : '';
    String email = componentes.length > 3 ? componentes[3].trim() : '';
    String? nombre = componentes.length > 4 ? componentes[4].trim() : null;
    String? apellidos = componentes.length > 5 ? componentes[5].trim() : null;
    String? nacionalidad =
        componentes.length > 6 ? componentes[6].trim() : null;
    String? nacimiento = componentes.length > 7 ? componentes[7].trim() : null;

    return Usuario(id, username, password, email,
        nombre: nombre,
        apellidos: apellidos,
        nacionalidad: nacionalidad,
        nacimiento: nacimiento);
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
)
""";
  }

   Usuario copyWith(
      {int? id,
      String? username,
      String? password,
      String? email,
      String? nombre,
      String? apellidos,
      String? nacionalidad,
      String? nacimiento}) {
    return Usuario(id ?? this.id, username ?? this.username,
        password ?? this.password, email ?? this.email,
        nombre: nombre ?? this.nombre,
        apellidos: apellidos ?? this.apellidos,
        nacionalidad: nacionalidad ?? this.nacionalidad,
        nacimiento: nacimiento ?? this.nacimiento.toString());
  }
}
