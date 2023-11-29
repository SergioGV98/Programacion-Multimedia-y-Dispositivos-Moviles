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

  @override
  String toString() {
    return toJson().toString();
  }
}

DirectorioContactos contactos = DirectorioContactos.fromJson(contactosJson);
