import 'package:ejercicios2/Usuario.class.dart' as usuario;
import 'package:ejercicios2/UsuarioNoMutable.class.dart' as usuarionomutable;

void main(List<String> arguments) {
  // Ejercicio 1
  var usuario1 = usuario.Usuario(1, "SergioGV98", "prueba", "prueba@gmail.com",
      "Sergio", "Garcia Vico", "España");
  print(usuario1);
  var usuario2 = usuario.Usuario(2, "PacoR", "1234", "paco@gmail.com");
  print(usuario2);

  // Ejercicio 2
  var usuario3 = usuarionomutable.UsuarioNoMutable(
      3, "Antonia12", "Antonia123", "Antonia@gmail.com");
  print(usuario3);

  // Ejercicio 3
  var usuario3Copia = usuario3.copyWith(
      numero: 3,
      username: "Antonia123",
      password: "Antonia123",
      email: "Paca@gmail.com");
  print(usuario3Copia);

  // Ejercicio 4
  var usuario4 = usuario.Usuario(1, "Carlos", "prueba", "carlos@gmail.com",
      "Carlos", "Rodriguez", "Pakistan", "1969-07-20");
  print(usuario4.edad);
}
