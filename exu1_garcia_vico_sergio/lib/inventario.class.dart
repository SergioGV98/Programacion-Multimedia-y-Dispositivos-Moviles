import 'package:examen/producto.class.dart';

class Inventario {
  List<Producto> inventario;

  Inventario({List<Producto>? inventario}) : inventario = inventario ?? [];

  @override
  String toString() {
    List<String> out = [...inventario.map((e) => "\t${e.toString()}")];
    return out.join("\n");
  }
}
