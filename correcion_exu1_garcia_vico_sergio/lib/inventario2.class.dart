import 'dart:convert';
import 'dart:io';

import 'package:examen/producto2.class.dart';

class Inventario2 {
  List<Producto2>? productos;

  Inventario2([this.productos = const []]);

  List<String> get colores => (productos ?? [])
      .fold<List<String>>(
        [],
        (ac, p) => [...ac, ...(p.colores ?? [])],
      )
      .toSet()
      .toList();

  List<Producto2> productosEnCategoria(List<String> categorias) =>
      (productos ?? []).where((p) => categorias.contains(p.categoria)).toList()
        ..sort(
          (a, b) => (a.nombre ?? '').compareTo(b.nombre ?? ''),
        );

  double? precioMedio(List<String> categorias) {
    List<Producto2> prods = productosEnCategoria(categorias)
        .where((element) => element.precio != null)
        .toList();

    if (prods.isEmpty) return null;

    return prods.fold<double>(0, (ac, producto) => ac + producto.precio!) /
        prods.length;
  }

  Map<String, dynamic> toJson() {
    return {
      if (productos != null && productos!.isNotEmpty)
        "productos": productos!.map((e) => e.toJson()).toList()
    };
  }

  factory Inventario2.fromJson(Map<String, dynamic> datos) {
    return Inventario2(((datos["productos"] as List?) ?? [])
        .map((e) => Producto2.fromJson(e))
        .toList());
  }

  static Future<Inventario2> load({required String path}) async {
    String inventarioDataStr = await File(path).readAsString();
    Map<String, dynamic> inventarioData = jsonDecode(inventarioDataStr);
    return Inventario2.fromJson(inventarioData);
  }

  @override
  String toString() {
    return [
      "Inventario",
      //if (productos != null) productos!.map((e) => e.toString()).join("")
      ...(productos ?? []).map((e) => e.toString())
    ].join("\n");
  }
}
