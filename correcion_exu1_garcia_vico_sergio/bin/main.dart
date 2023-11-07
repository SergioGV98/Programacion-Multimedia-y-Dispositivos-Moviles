import 'dart:convert';

import 'package:examen/inventario.class.dart';
import 'package:examen/inventario2.class.dart';
import 'package:examen/producto.class.dart';
import 'package:examen/producto2.class.dart';

void main(List<String> arguments) async {
  Producto2 p1 = Producto2(
      id: 4,
      nombre: "Maleta de cuero",
      precio: 100,
      colores: ["Rojo", "Negro"],
      tallas: ["10L", "20L", "30L"],
      categoria: "Accesorios");
  print(p1);

  print(jsonEncode(p1.toJson()));
  Producto2 p2 = p1.copyWith(nombre: "Maleta", precio: 50, tallas: ["10L"]);
  print(p2);

  Producto2 p3 = Producto2.fromJson({
    "id": 1,
    "nombre": "Camiseta",
    "precio": 20.99,
    "colores": ["Rojo", "Azul", "Negro"],
    "tallas": ["S", "M", "L", "XL"],
    "categoria": "Ropa"
  });
  print(p3);

  Inventario2 inventario = Inventario2([p1, p2, p3]);
  print(inventario);

  print(jsonEncode(inventario.toJson()));

  Inventario2 i2 = Inventario2.fromJson({
    "productos": [
      {
        "id": 1,
        "nombre": "Camiseta",
        "precio": 20.99,
        "colores": ["Rojo", "Azul", "Negro"],
        "tallas": ["S", "M", "L", "XL"],
        "categoria": "Ropa"
      },
      {
        "id": 2,
        "nombre": "Zapatos deportivos",
        "precio": 49.99,
        "colores": ["Blanco", "Negro", "Gris"],
        "tallas": ["36", "37", "38", "39", "40", "41", "42"],
        "categoria": "Calzado"
      },
      {
        "id": 3,
        "nombre": "Mochila",
        "precio": 29.99,
        "colores": ["Azul", "Verde", "Negro"],
        "tallas": ["10L", "20L", "30L"],
        "categoria": "Accesorios"
      },
      {
        "id": 4,
        "nombre": "Cámara digital",
        "precio": 299.99,
        "colores": ["Negro"],
        "almacenamiento": ["64GB", "128GB", "256GB"],
        "categoria": "Electrónica"
      },
      {
        "id": 5,
        "nombre": "Teléfono inteligente",
        "precio": 399.99,
        "colores": ["Plata", "Negro", "Oro"],
        "almacenamiento": ["64GB", "128GB", "256GB"],
        "categoria": "Electrónica"
      },
      {
        "id": 6,
        "nombre": "Portátil",
        "precio": 699.99,
        "colores": ["Gris", "Plata"],
        "tallas": ["13 pulgadas", "15 pulgadas", "17 pulgadas"],
        "categoria": "Electrónica"
      },
      {
        "id": 7,
        "nombre": "Mouse inalámbrico",
        "precio": 19.99,
        "colores": ["Negro", "Blanco", "Rojo"],
        "categoria": "Accesorios"
      },
      {
        "id": 8,
        "nombre": "Teclado mecánico",
        "precio": 59.99,
        "colores": ["Negro", "Blanco", "RGB"],
        "categoria": "Accesorios"
      },
      {
        "id": 9,
        "nombre": "Auriculares Bluetooth",
        "precio": 39.99,
        "colores": ["Negro", "Blanco", "Azul"],
        "categoria": "Electrónica"
      },
      {
        "id": 10,
        "nombre": "Tableta",
        "precio": 179.99,
        "colores": ["Negro", "Plata"],
        "almacenamiento": ["32GB", "64GB", "128GB"],
        "categoria": "Electrónica"
      },
      {
        "id": 11,
        "nombre": "Impresora láser",
        "precio": 129.99,
        "colores": ["Blanco", "Negro"],
        "categoria": "Electrónica"
      },
      {
        "id": 12,
        "nombre": "Reloj inteligente",
        "precio": 69.99,
        "colores": ["Negro", "Plata", "Oro"],
        "categoria": "Electrónica"
      },
      {
        "id": 13,
        "nombre": "Bicicleta de montaña",
        "precio": 299.99,
        "colores": ["Rojo", "Verde", "Negro"],
        "tallas": ["S", "M", "L", "XL"],
        "categoria": "Deportes"
      },
      {
        "id": 14,
        "nombre": "Cafetera",
        "precio": 49.99,
        "colores": ["Negro", "Plata", "Rojo"],
        "categoria": "Cocina"
      },
      {
        "id": 15,
        "nombre": "Silla de oficina",
        "precio": 89.99,
        "colores": ["Negro", "Gris", "Azul"],
        "categoria": "Muebles"
      },
      {
        "id": 16,
        "nombre": "Licuadora",
        "precio": 39.99,
        "colores": ["Blanco", "Negro", "Rojo"],
        "categoria": "Cocina"
      },
      {
        "id": 17,
        "nombre": "Ventilador de torre",
        "precio": 29.99,
        "colores": ["Blanco", "Negro"],
        "categoria": "Electrodomésticos"
      },
      {
        "id": 18,
        "nombre": "Lámpara de escritorio",
        "precio": 19.99,
        "colores": ["Negro", "Blanco", "Plata"],
        "categoria": "Iluminación"
      },
      {
        "id": 19,
        "nombre": "Caja de herramientas",
        "precio": 79.99,
        "colores": ["Rojo", "Negro"],
        "categoria": "Herramientas"
      },
      {
        "id": 20,
        "nombre": "Botines de fútbol",
        "precio": 59.99,
        "colores": ["Rojo", "Azul", "Negro"],
        "tallas": ["38", "39", "40", "41", "42"],
        "categoria": "Deportes"
      }
    ]
  });

  //print(i2.toJson());

  Inventario2 i3 = await Inventario2.load(path: "recursos/productos.json");
  print(i3);

  print(i3.colores);

  print(i3.productosEnCategoria(["Electrónica", "Accesorios"]));

  print(i3.precioMedio(["Ropa", "Calzado"]));

  /*
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
  print(inventario);*/
}
