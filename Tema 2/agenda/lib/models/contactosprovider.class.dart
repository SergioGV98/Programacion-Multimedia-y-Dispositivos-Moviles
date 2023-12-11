// ignore_for_file: prefer_final_fields

import 'package:flutter/foundation.dart';

class ContactosProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _contactosJson = [];

  List<Map<String, dynamic>> get contactosJson => _contactosJson;

  void agregarContacto(Map<String, dynamic> nuevoContacto) {
    _contactosJson.add(nuevoContacto);
    notifyListeners();
  }
}