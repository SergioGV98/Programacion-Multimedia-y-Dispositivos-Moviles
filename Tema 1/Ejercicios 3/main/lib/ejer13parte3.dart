import 'DirectorioAditivos.class.dart';
void parte3ejercicio1() async {
try {
    final directorio = await DirectorioAditivos.load("assets/aditivos.json");

    for (var aditivo in directorio.items) {
      print("Código: ${aditivo.codigo}");
      print("Nombre: ${aditivo.nombre}");
      print("Peligrosidad: ${aditivo.peligrosidad}");
      print("Comentario: ${aditivo.comentario}");
      print("");
    }
  } catch (e) {
    print("Error: $e");
  }

}