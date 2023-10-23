import 'dart:convert';
import 'dart:io';
import 'Aditivo.class.dart';
import 'package:diacritic/diacritic.dart';

// C
class DirectorioAditivos {
  List<Aditivo> items;

  DirectorioAditivos({required this.items});

  // D
  DirectorioAditivos._({List<Aditivo>? items}) : items = items ?? <Aditivo>[];

  // E
  DirectorioAditivos._fromJson(List<Map<String, dynamic>> aditivosJson)
      : items = aditivosJson.map((json) => Aditivo.fromJson(json)).toList();

  factory DirectorioAditivos.fromJson(
      {required List<Map<String, dynamic>> aditivosJson}) {
    return DirectorioAditivos._fromJson(aditivosJson);
  }

  // Ejercicio 3 parte 2
  List<String> get nombresOrdenAlfabetico =>
      items.map((aditivo) => aditivo.nombre).toList()
        ..sort(diacriticsCaseAwareCompare);

  List<String> get categoriasPeligrosidadAlt {
    return items.fold([], (List<String> result, Aditivo aditivo) {
      if (!result.contains(aditivo.peligrosidad)) {
        result.add(aditivo.peligrosidad);
      }
      return result;
    });
  }

  List<String> get categoriasPeligrosidad {
    return items.fold([], (List<String> result, Aditivo aditivo) {
      if (!result.contains(aditivo.peligrosidad)) {
        result.add(aditivo.peligrosidad);
      }
      return result;
    });
  }

  // F
  static Future<DirectorioAditivos> load(String path) async {
    try {
      final file = File(path);
      final jsonString = await file.readAsString();
      final jsonData = jsonDecode(jsonString);
      if (jsonData is List<Map<String, dynamic>>) {
        return DirectorioAditivos.fromJson(aditivosJson: jsonData);
      } else {
        throw FormatException("JSON no es una lista de mapas");
      }
    } catch (e) {
      throw Exception("Error al cargar el archivo JSON: $e");
    }
  }

  // Ejercicio 3 parte 2
  static int diacriticsCaseAwareCompare(String a, String b) {
    a = removeDiacritics(a.toUpperCase());
    b = removeDiacritics(b.toUpperCase());
    return a.compareTo(b);
  }
}
