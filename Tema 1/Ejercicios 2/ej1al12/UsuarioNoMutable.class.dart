class UsuarioNoMutable {
  final int numero;
  final String username;
  final String password;
  final String email;
  final String? nombre;
  final String? apellidos;
  final String? nacionalidad;
  
 final DateTime? nacimiento;

  const UsuarioNoMutable._private({required this.numero, required this.username, required this.password, required this.email, this.nombre, this.apellidos, this.nacionalidad, this.nacimiento});

  factory UsuarioNoMutable({required int numero, required String username, required String password, required String email, String? nombre, String? apellidos, String? nacionalidad, String? nacimiento}) 
  {
  DateTime? nacimientoDateTime;
  if (nacimiento != null) {
    nacimientoDateTime = DateTime.tryParse(nacimiento);
  }

  return UsuarioNoMutable._private(
    numero: numero,
    username: username,
    password: password,
    email: email,
    nombre: nombre,
    apellidos: apellidos,
    nacionalidad: nacionalidad,
    nacimiento: nacimientoDateTime,
  );
  }

  String get nombreCompleto {
    return "$nombre $apellidos";
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
    )''';
  }

  UsuarioNoMutable copyWith({int? numero, String? username, String? password, String? email, String? nombre, String? apellidos, String? nacionalidad, String? nacimiento}) 
  {
    return UsuarioNoMutable(
      numero: numero ?? this.numero,
      username: username ?? this.username,
      password: password ?? this.password,
      email: email ?? this.email,
      nombre: nombre ?? this.nombre,
      apellidos: apellidos ?? this.apellidos,
      nacionalidad: nacionalidad ?? this.nacionalidad,
      nacimiento: nacimiento
    );
  }
}
