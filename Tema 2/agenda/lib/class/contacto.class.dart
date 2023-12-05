class Contacto {
  int? id;
  String name;
  String surname;
  String email;
  String? phone;
  String? birthdate;
  DateTime? creation;
  List<String>? labels;
  bool? isFavorite;

  Contacto(
      {this.id,
      required this.name,
      required this.surname,
      required this.email,
      this.phone,
      this.birthdate,
      this.creation,
      this.labels,
      this.isFavorite});

  @override
  String toString() {
    return [
      'CONTACTO (',
      if (id != null) '\tId: $id',
      '\tNombre: $name',
      '\tApellidos: $surname',
      '\tEmail: $email',
      if (phone != null) '\tTelefono: $phone',
      if (birthdate != null) '\tCumpleaños: $birthdate',
      if (creation != null) '\tCreacion: $creation',
      if (labels != null) '\tEtiquetas: $labels',
      if (isFavorite != null) '\tFavorito: $isFavorite',
      ')\n'
    ].join('\n');
  }

  Contacto copyWith({
    int? id,
    String? name,
    String? surname,
    String? email,
    String? phone,
    String? birthdate,
    DateTime? creation,
    List<String>? labels,
    bool? isFavorite,
  }) {
    return Contacto(
      id: id ?? this.id,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      birthdate: birthdate ?? this.birthdate,
      creation: creation ?? this.creation,
      labels: labels ?? (this.labels != null ? List.from(this.labels!) : null),
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) "id": id,
      "nombre": name,
      "apellido": surname,
      "email": email,
      if (phone != null) "telefono": phone,
      if (birthdate != null) "cumpleaños": birthdate,
      if (labels != null) "etiquetas": List.from(labels!),
      if (isFavorite != null) "favorito": isFavorite
    };
  }

  factory Contacto.fromJson(Map<String, dynamic> datos) {
    return Contacto(
      id: datos["id"],
      name: datos["nombre"],
      surname: datos["apellido"],
      email: datos["email"],
      phone: datos["telefono"],
      birthdate: datos["cumpleaños"],
      labels: datos["etiquetas"] != null ? List.from(datos["etiquetas"]) : null,
      isFavorite: datos["favorito"],
    );
  }

  //Implementar equals, para ver si ahi algun contacto igual a otro (Comparar nombres, apellidos y email)
  //Getter isBlank
}
