class UsuarioNoMutable {
  final int id;
  final String username, password, email;
  final String? nombre, apellidos, nacionalidad;
   final DateTime? nacimiento;

  const UsuarioNoMutable(this.id, this.username, this.password, this.email,
      {this.nombre,
      this.apellidos,
      this.nacionalidad,
      this.nacimiento}); //ID, Username, Password, Email parametros con nombres obligatorios los demas opcionales con nombre

  String get nombreCompleto => "$nombre $apellidos";

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
)
""";
  }

  UsuarioNoMutable copyWith(
      {int? numero,
      String? username,
      password,
      email,
      nombre,
      apellidos,
      nacionalidad,
      nacimiento}) {
    return UsuarioNoMutable(id ?? this.id, username ?? this.username,
        password ?? this.password, email ?? this.email,
        nombre: nombre ?? this.nombre,
        apellidos: apellidos ?? this.apellidos,
        nacionalidad: nacionalidad ?? this.nacionalidad,
        nacimiento: nacimiento ?? this.nacimiento.toString());
  }
}
