import 'dart:convert';

import 'package:examen/inventario.class.dart';
import 'package:examen/producto.class.dart';

void main(List<String> arguments) {
  //A
  List<String> colores = <String>["Rojo", "Negro"];
  List<String> tallas = <String>["10L", "20L", "30L"];

  Producto producto = Producto(
      id: 4,
      nombre: "Maleta de cuero",
      precio: 100.0,
      colores: colores,
      categoria: "Accesorios");
  print("------------EJERCICIO 1------------");
  print("------------APARTADO A------------");
  print(producto);

  //B
  print("------------APARTADO B------------");
  tallas.add("XXL");
  Producto copia =
      producto.copyWith(nombre: "Maleta", precio: 80, tallas: tallas);
  print(copia);

  //C
  print("------------APARTADO C------------");
  print(jsonEncode(copia.toJson()));

  //D
  print("------------APARTADO D------------");
  List<String> tallasRopa = <String>["S", "M", "L", "XL"];
  List<String> coloresRopa = <String>["Rojo", "Azul", "Negro"];
  Map<String, dynamic> articulos = {
    "id": 1,
    "nombre": "camiseta",
    "precio": 20.99,
    "colores": coloresRopa,
    "tallas": tallasRopa,
    "categoria": "Ropa"
  };

  Producto camiseta = Producto.fromJson(articulos);
  print(camiseta);

  print("------------EJERCICIO 2------------");
  print("------------APARTADO A------------");
  List<Producto> productList = <Producto>[
    Producto(
        nombre: "Camiseta",
        precio: 15,
        colores: <String>["Rojo", "Verde"],
        tallas: <String>["36", "37", "38"],
        categoria: "Ropa"),
    Producto(
        nombre: "Pantalón",
        precio: 15,
        colores: <String>["Rojo", "Verde"],
        categoria: "Ropa"),
    Producto(
        nombre: "Bañador",
        precio: 10.35,
        colores: <String>["Marron"],
        categoria: "Ropa")
  ];

  Inventario inventario = Inventario(inventario: productList);
  print(inventario);
}
