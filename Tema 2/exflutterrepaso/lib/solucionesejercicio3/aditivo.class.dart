import 'dart:convert';
import 'dart:io';

import 'aditivos.json.dart';
//======================================================================
enum Peligrosidad {
  saludable,
  inofensivo,
  precaucion,
  peligroso;

  static Peligrosidad? tryParse(String str) {
    switch (str.toLowerCase()) {
      case 'saludable':
        return Peligrosidad.saludable;
      case 'inofensivo':
        return Peligrosidad.inofensivo;
      case 'precaucion':
        return Peligrosidad.precaucion;
      case 'peligroso':
        return Peligrosidad.peligroso;
      default:
        return null;
    }
  }

  @override
  String toString() {
    switch (this) {
      case Peligrosidad.inofensivo:
        return "Inofensivo";
      case Peligrosidad.saludable:
        return "Saludable";
      case Peligrosidad.precaucion:
        return "Precaucion";
      case Peligrosidad.peligroso:
        return "Peligroso";
    }
  }
}

//======================================================================
class Aditivo {
  final String codigo;
  final String nombre;
  final Peligrosidad peligrosidad;
  final String comentario;

  const Aditivo(
      {required this.codigo,
      required this.nombre,
      required this.peligrosidad,
      required this.comentario});

  factory Aditivo.fromJson(Map<String, dynamic> data) {
    String nombreCompleto = data["nombre"] as String;

    List<String> componentes = nombreCompleto.split(' - ');

    return Aditivo(
        codigo: componentes[0],
        nombre: componentes[1],
        peligrosidad: Peligrosidad.tryParse(data["peligrosidad"])!,
        comentario: data["comentario"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "nombre": "$codigo - $nombre",
      "peligrosidad": "$peligrosidad",
      "comentario": comentario
    };
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

//======================================================================
class DirectorioAditivos {
  List<Aditivo> items;

  DirectorioAditivos._({this.items = const []});

  factory DirectorioAditivos.fromJson(List<Map<String, dynamic>> jsonData) {
    try {
      return DirectorioAditivos._(
          items: jsonData.map((e) => Aditivo.fromJson(e)).toList());
    } on Exception catch (e) {
      print(e);
      return DirectorioAditivos._();
    }
  }

  List<Map<String, dynamic>> toJson() {
    return items.map((aditivo) => aditivo.toJson()).toList();
  }

  static Future<DirectorioAditivos> load({required String path}) async {
    try {
      String aditivosJson = await File(path).readAsString();
      return DirectorioAditivos.fromJson(
          (jsonDecode(aditivosJson) as List).cast<Map<String, dynamic>>());
    } on Exception catch (e) {
      print(e);
      return DirectorioAditivos._();
    }
  }

  @override
  String toString() {
    return toJson().toString();
  }

  // Parte 3. Ejercicio 2a con sort por defecto
  List<String> get nombresOrdenAlfabetico =>
      items.map((e) => e.nombre).toList()..sort();

  // Parte 3. Ejercicio 2ai
  /*static int diacriticsCaseAwareCompare(String a, String b) =>
      removeDiacritics(a)
          .toUpperCase()
          .compareTo(removeDiacritics(b).toUpperCase());*/

  // Parte 3. Ejercicio 2aii
 /* List<String> get nombresOrdenAlfabeticoOK =>
      items.map((e) => e.nombre).toList()
        ..sort(DirectorioAditivos.diacriticsCaseAwareCompare);*/

  // Parte 3. Ejercicio 2b
  List<Peligrosidad> get categoriasPeligrosidad =>
      items.map((e) => e.peligrosidad).toSet().toList();

  // Parte 3. Ejercicio 2c
  List<Peligrosidad> get categoriasPeligrosidadAlt => items.fold(
      [],
      (out, e) =>
          out.contains(e.peligrosidad) ? out : (out..add(e.peligrosidad)));
}

DirectorioAditivos aditivos = DirectorioAditivos.fromJson(aditivosJson);
