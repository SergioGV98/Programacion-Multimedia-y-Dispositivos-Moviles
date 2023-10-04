class UsuarioNoMutable {
  final int numero;
  final String username;
  final String password;
  final String email;
  final String? nombre;
  final String? apellidos;
  final String? nacionalidad;

  const UsuarioNoMutable(this.numero, this.username, this.password, this.email,
      [String? nom, String? ape, String? nac])
      : nombre = nom,
        apellidos = ape,
        nacionalidad = nac;

  String get nombreCompleto {
    return "$nombre$apellidos";
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
    )''';
  }

  // Ejercicio 3
  UsuarioNoMutable copyWith(
      {int? numero,
      String? username,
      String? password,
      String? email,
      String? nombre,
      String? apellidos,
      String? nacionalidad}) {
    return UsuarioNoMutable(
        numero!, username!, password!, email!, nombre, apellidos, nacionalidad);
  }
}
