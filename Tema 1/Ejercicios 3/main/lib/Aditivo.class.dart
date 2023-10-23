// B
class Aditivo {
  final String codigo;
  final String nombre;
  final String peligrosidad;
  final String comentario;

  Aditivo({
    required this.codigo,
    required this.nombre,
    required this.peligrosidad,
    required this.comentario,
  });

  factory Aditivo.fromJson(Map<String, dynamic> json) {
    // Separa el código y el nombre a partir del campo "nombre" del JSON.
    final parts = json['nombre'].split(' - ');
    if (parts.length != 2) {
      throw FormatException('Formato de nombre incorrecto en el JSON');
    }

    return Aditivo(
      codigo: parts[0],
      nombre: parts[1],
      peligrosidad: json['peligrosidad'],
      comentario: json['comentario'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'codigo': codigo,
      'nombre': nombre,
      'peligrosidad': peligrosidad,
      'comentario': comentario,
    };
  }

}