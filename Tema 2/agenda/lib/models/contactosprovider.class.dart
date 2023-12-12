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

//crear constructor vacio factory y probar .save poner el await y con return true o false
//Saber si le ha dado a guardar o cancelar. Se puede usar la misma pagina de contacto añadir
//con context para añadir.

//Fecha creacion probar con DateTime.now() y terminar con notifyListeners();

//Habilitar el boton guardar si los campos obligatorios no estan vacios.

//WillPopScope para lanzar una pregunta para salir de la pagina si cambia algo. Posiblemente necesite crear un metodo async
// y el resultado sera un await showDialog