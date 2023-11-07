class Producto2 {
  int? id;
  String? nombre;
  double? precio;
  List<String>? colores, tallas, resoluciones, almacenamiento, capacidades;
  String? categoria;

  Producto2(
      {this.id,
      this.nombre,
      this.precio,
      this.colores,
      this.tallas,
      this.resoluciones,
      this.almacenamiento,
      this.capacidades,
      this.categoria});

  Producto2 copyWith({
    int? id,
    String? nombre,
    double? precio,
    List<String>? colores,
    List<String>? tallas,
    List<String>? resoluciones,
    List<String>? almacenamiento,
    List<String>? capacidades,
    String? categoria,
  }) {
    return Producto2(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        precio: precio ?? this.precio,
        colores:
            colores ?? (this.colores != null ? List.from(this.colores!) : null),
        tallas:
            tallas ?? (this.tallas != null ? List.from(this.tallas!) : null),
        resoluciones: resoluciones ??
            (this.resoluciones != null ? List.from(this.resoluciones!) : null),
        almacenamiento: almacenamiento ??
            (this.almacenamiento != null
                ? List.from(this.almacenamiento!)
                : null),
        capacidades: capacidades ??
            (this.capacidades != null ? List.from(this.capacidades!) : null),
        categoria: categoria ?? this.categoria);
  }

  factory Producto2.fromJson(Map<String, dynamic> datos) {
    return Producto2(
      id: datos["id"],
      nombre: datos["nombre"],
      precio: datos["precio"],
      colores: datos["colores"] != null ? List.from(datos["colores"]) : null,
      tallas: datos["tallas"] != null ? List.from(datos["tallas"]) : null,
      resoluciones: datos["resolucionesDisponibles"] != null
          ? List.from(datos["resolucionesDisponibles"])
          : null,
      almacenamiento: datos["almacenamiento"] != null
          ? List.from(datos["almacenamiento"])
          : null,
      capacidades: datos["capacidadesDisponibles"] != null
          ? List.from(datos["capacidadesDisponibles"])
          : null,
      categoria: datos["categoria"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) "id": id,
      if (nombre != null) "nombre": nombre,
      if (precio != null) "categoprecioria": precio,
      if (colores != null) "colores": List.from(colores!),
      if (tallas != null) "tallas": List.from(tallas!),
      if (resoluciones != null)
        "resolucionesDisponibles": List.from(resoluciones!),
      if (almacenamiento != null) "almacenamiento": List.from(almacenamiento!),
      if (capacidades != null)
        "capacidadesDisponibles": List.from(capacidades!),
      if (categoria != null) "categoria": categoria
    };
  }

  @override
  String toString() {
    return [
      'PRODUCTO (',
      if (id != null) '\tId: $id',
      if (nombre != null) '\tNombre: $nombre',
      if (precio != null) '\tPrecio: $precio',
      if (colores != null) '\tColores: $colores',
      if (tallas != null) '\tTallas: $tallas',
      if (resoluciones != null) '\tResoluciones: $resoluciones',
      if (almacenamiento != null) '\tAlmacenamiento: $almacenamiento',
      if (capacidades != null) '\tCapacidades: $capacidades',
      if (categoria != null) '\tCategoria: $categoria',
      ')\n'
    ].join('\n');
  }
}
