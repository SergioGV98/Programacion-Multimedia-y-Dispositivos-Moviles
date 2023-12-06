import 'package:flutter/material.dart';

class EstadoFiltro extends ChangeNotifier {
  bool _familia;
  bool _amistad;
  bool _deporte;
  bool _trabajo;
  bool _ninguno;

  EstadoFiltro({
    bool familia = true,
    bool amistad = true,
    bool deporte = true,
    bool trabajo = true,
    bool ninguno = true,
  })  : _familia = familia,
        _amistad = amistad,
        _deporte = deporte,
        _trabajo = trabajo,
        _ninguno = ninguno;

  bool get familia => _familia;
  bool get amistad => _amistad;
  bool get deporte => _deporte;
  bool get trabajo => _trabajo;
  bool get ninguno => _ninguno;

  set familia(bool value) {
    _familia = value;
    notifyListeners();
  }

  set amistad(bool value) {
    _amistad = value;
    notifyListeners();
  }

  set deporte(bool value) {
    _deporte = value;
    notifyListeners();
  }

  set trabajo(bool value) {
    _trabajo = value;
    notifyListeners();
  }

  set ninguno(bool value) {
    _ninguno = value;
    notifyListeners();
  }
}
