import 'package:intl/intl.dart';

class Pelicula {
  int id;
  String? titulo;
  String? director;
  List<String> reparto = [];
  DateTime? fechaEstreno;
  PeliculaGenero? genero;
  static DateFormat _dateFormat = DateFormat.yMMMMd();

  //-------------------------------------------------------------------------------
  Pelicula({
    required this.id,
    this.titulo,
    this.director,
    List<String>? reparto,
    this.fechaEstreno,
    this.genero,
  }) : reparto = reparto ?? [];

  //-------------------------------------------------------------------------------
  @override
  String toString() {
    return [
      "Id: $id",
      if (titulo != null) "Titulo: $titulo",
      if (director != null) "Director: $director",
      if (reparto.isNotEmpty) "Reparto: ${reparto.join(', ')}",
      if (fechaEstreno != null)
        "Fecha de Estreno: ${Pelicula._dateFormat.format(fechaEstreno!)}",
      if (genero != null) "Genero: $genero",
    ].join("\n");
  }

  //-------------------------------------------------------------------------------
  Pelicula copyWith({
    int? id,
    String? titulo,
    String? director,
    List<String>? reparto,
    DateTime? fechaEstreno,
    PeliculaGenero? genero,
  }) {
    return Pelicula(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      director: director ?? this.director,
      reparto: reparto ?? List.from(this.reparto),
      fechaEstreno: fechaEstreno ?? this.fechaEstreno,
      genero: genero ?? this.genero,
    );
  }

  //-------------------------------------------------------------------------------
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      if (titulo != null) 'titulo': titulo,
      if (director != null) 'director': director,
      if (reparto.isNotEmpty) 'reparto': reparto,
      if (fechaEstreno != null) 'fechaEstreno': fechaEstreno?.toIso8601String(),
      if (genero != null) 'genero': genero?.toJson(),
    };
  }

  //-------------------------------------------------------------------------------
  factory Pelicula.fromJson(Map<String, dynamic> json) {
    return Pelicula(
      id: json['id'] as int,
      titulo: json['titulo'] as String?,
      director: json['director'] as String?,
      reparto: (json['reparto'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
      fechaEstreno: json['fechaEstreno'] != null
          ? DateTime.tryParse(json['fechaEstreno'] as String)
          : null,
      genero: json['genero'] != null
          ? PeliculaGenero.tryParse(json['genero'] as String)
          : null,
    );
  }

  //-------------------------------------------------------------------------------
  void copyValuesFrom(Pelicula other) {
    id = other.id;
    titulo = other.titulo;
    director = other.director;
    reparto = List.from(other.reparto);
    fechaEstreno = other.fechaEstreno;
    genero = other.genero;
  }

  //-------------------------------------------------------------------------------
  // Gracias a la siguiente implementación podemos comparar dos
  // películas para ver si tienen los mismos datos usando ==
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pelicula &&
          runtimeType == other.runtimeType &&
          titulo == other.titulo &&
          director == other.director &&
          listEquals(reparto, other.reparto) &&
          fechaEstreno == other.fechaEstreno &&
          genero == other.genero;

  @override
  int get hashCode =>
      titulo.hashCode ^
      director.hashCode ^
      reparto.hashCode ^
      fechaEstreno.hashCode ^
      genero.hashCode;

  bool listEquals(List a, List b) {
    if (identical(a, b)) return true;
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}

enum PeliculaGenero {
  accion,
  comedia,
  drama,
  cienciaFiccion,
  terror,
  romance,
  animacion,
  aventura,
  fantasia,
  thriller;

  String get nombre => toString().split('.')[1];

  String toJson() {
    return nombre;
  }

  static PeliculaGenero? tryParse(String nombreGenero) {
    for (var genero in PeliculaGenero.values) {
      if (genero.toJson() == nombreGenero.toLowerCase()) {
        return genero;
      }
    }
    return null;
  }
}
