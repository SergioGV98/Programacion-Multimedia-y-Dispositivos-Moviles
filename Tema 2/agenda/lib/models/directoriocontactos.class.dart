// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import '../data/contactos.json.dart';
import 'package:agenda/class/contacto.class.dart';

class DirectorioContactos {
  List<Contacto> items;

  DirectorioContactos._({this.items = const []});

  factory DirectorioContactos.fromJson(List<Map<String, dynamic>> jsonData) {
    try {
      return DirectorioContactos._(
          items: jsonData.map((e) => Contacto.fromJson(e)).toList());
    } on Exception catch (e) {
      print(e);
      return DirectorioContactos._();
    }
  }

  List<Map<String, dynamic>> toJson() {
    return items.map((contacto) => contacto.toJson()).toList();
  }

  static Future<DirectorioContactos> load({required String path}) async {
    try {
      String contactosJson = await File(path).readAsString();
      return DirectorioContactos.fromJson(
          (jsonDecode(contactosJson) as List).cast<Map<String, dynamic>>());
    } on Exception catch (e) {
      print(e);
      return DirectorioContactos._();
    }
  }

  void actualizarContacto(Contacto contacto) {
    // Encuentra el índice del contacto en la lista de contactos
    final index = items.indexWhere((c) => c.id == contacto.id);

    if (index != -1) {
      // Actualiza el estado del contacto en la lista de contactos
      items[index] = contacto;

      // Guarda la lista de contactos actualizada en tu JSON
      guardarContactosEnJson();
    }
  }

  void guardarContactosEnJson() async {
  try {
    // Obtén la instancia de DirectorioContactos
    DirectorioContactos directorioContactos = await DirectorioContactos.load(path: './data/contactos.json');

    // Convierte la lista de contactos a formato JSON
    String contactosJson = jsonEncode(directorioContactos.toJson());

    // Escribe el JSON en un archivo
    await File('contactos.json').writeAsString(contactosJson);
  } catch (e) {
    print("Error al guardar contactos en JSON: $e");
  }
}




  @override
  String toString() {
    return toJson().toString();
  }
}

DirectorioContactos contactos = DirectorioContactos.fromJson(contactosJson);
