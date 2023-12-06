import 'dart:convert';
import 'dart:io';
import 'package:diacritic/diacritic.dart';
import '../data/aditivos.json.dart';
import 'aditivo.class.dart';
import 'peligrosidad.enum.dart';

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
  static int diacriticsCaseAwareCompare(String a, String b) =>
      removeDiacritics(a)
          .toUpperCase()
          .compareTo(removeDiacritics(b).toUpperCase());

  // Parte 3. Ejercicio 2aii
  List<String> get nombresOrdenAlfabeticoOK =>
      items.map((e) => e.nombre).toList()
        ..sort(DirectorioAditivos.diacriticsCaseAwareCompare);

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
