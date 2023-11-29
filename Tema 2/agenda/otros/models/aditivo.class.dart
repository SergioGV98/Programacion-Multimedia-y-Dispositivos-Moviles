import 'peligrosidad.enum.dart';

class Aditivo {
  String codigo;
  String nombre;
  Peligrosidad peligrosidad;
  String comentario;

  Aditivo(
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
