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

  Usuario(this.numero, this.username, this.password, this.email,
      [String? nom, String? ape, String? nac]) {
    nombre = nom;
    apellidos = ape;
    nacionalidad = nac;
  }

  String get nombreCompleto {
    return "$nombre$apellidos";
  }
}
