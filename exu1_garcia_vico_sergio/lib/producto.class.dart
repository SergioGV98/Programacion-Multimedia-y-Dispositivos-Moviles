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

  factory Producto.fromJson(Map<String, dynamic> data) {
    return Producto(
        id: data["id"],
        nombre: data["nombre"],
        precio: data["precio"],
        colores: data["colores"],
        tallas: data["tallas"],
        categoria: data["categoria"]);
  }

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
