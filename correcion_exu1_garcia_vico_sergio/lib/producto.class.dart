class Producto {
  int? id;
  String? nombre;
  double? precio;
  List<String>? colores;
  List<String>? tallas;
  String? categoria;

  Producto(
      {this.id,
      this.nombre,
      this.precio,
      this.colores,
      this.tallas,
      this.categoria});

  /* Profesor: No haces una copia de las listas */
  factory Producto.fromJson(Map<String, dynamic> data) {
    return Producto(
        id: data["id"],
        nombre: data["nombre"],
        precio: data["precio"],
        colores: data["colores"],
        tallas: data["tallas"],
        categoria: data["categoria"]);
  }

  /* Profesor: No haces una copia de las listas */
  Producto copyWith(
      {int? id,
      String? nombre,
      double? precio,
      List<String>? colores,
      List<String>? tallas,
      String? categoria}) {
    return Producto(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        precio: precio ?? this.precio,
        colores: colores ?? this.colores,
        tallas: tallas ?? this.tallas,
        categoria: categoria ?? this.categoria);
  }

  /* Profesor: Este método no está bien implementado, ya `id` y `precio` deben ser numéricos, y `colores` y `tallas` deben ser listas */
  Map<String, dynamic> toJson() {
    return {
      "id": "$id",
      "nombre": "$nombre",
      "precio": "$precio",
      "colores": "$colores",
      "tallas": "$tallas",
      "categoria": "$categoria"
    };
  }

  /* Profesor: Cuando un campo no tiene valor, no debe mostrarse en toString() */
  @override
  String toString() {
    return """
Producto(
    ID: $id
    Nombre: $nombre
    Precio: $precio
    Colores: $colores
    Tallas: $tallas
    Categoria: $categoria
    )""";
  }
}
