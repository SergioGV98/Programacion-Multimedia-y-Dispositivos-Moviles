import 'package:flutter/material.dart';

class EstadoFiltro extends ChangeNotifier {
  bool _saludable;
  bool _inofensivo;
  bool _precaucion;
  bool _peligroso;

  EstadoFiltro({
    bool saludable = true,
    bool inofensivo = true,
    bool precaucion = true,
    bool peligroso = true,
  })  : _saludable = saludable,
        _inofensivo = inofensivo,
        _precaucion = precaucion,
        _peligroso = peligroso;

  bool get saludable => _saludable;
  bool get inofensivo => _inofensivo;
  bool get precaucion => _precaucion;
  bool get peligroso => _peligroso;

  set saludable(bool value) {
    _saludable = value;
    notifyListeners();
  }

  set inofensivo(bool value) {
    _inofensivo = value;
    notifyListeners();
  }

  set precaucion(bool value) {
    _precaucion = value;
    notifyListeners();
  }

  set peligroso(bool value) {
    _peligroso = value;
    notifyListeners();
  }
}
