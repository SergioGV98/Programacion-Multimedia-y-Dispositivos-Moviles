import 'package:ejercicios2/Usuario.class.dart' as usuario;
import 'package:ejercicios2/UsuarioNoMutable.class.dart' as usuarionomutable;

void main(List<String> arguments) {
  // Ejercicio 1
  var usuario1 = usuario.Usuario(numero: 1, username: "SergioGV98", password: "prueba", email: "prueba@gmail.com",
      nombre: "Sergio", apellidos: "Garcia Vico", nacionalidad: "España");
  print(usuario1);
  
  var usuario2 = usuario.Usuario(numero: 2, username: "PacoR",password:  "1234", email: "paco@gmail.com");
  print(usuario2);

  // Ejercicio 2
  /*const usuario3 = usuarionomutable.UsuarioNoMutable(numero: 3, username: "Antonia12", password: "Antonia123", email: "Antonia@gmail.com");
  print(usuario3);*/
 
 /* const usuario4 = usuarionomutable.UsuarioNoMutable( numero: 2, username: "otrousuario", password: "otropassword", email: "otroemail@example.com");
  usuario3 = usuario4;*/

  // Ejercicio 3
  /*
  var usuario3Copia = usuario3.copyWith(
      numero: 3,
      username: "Antonia123",
      password: "Antonia123",
      email: "Paca@gmail.com");
  print(usuario3Copia);*/

  // Ejercicio 4 y 5
  var usuario4 = usuario.Usuario(numero: 1, username: "Carlos",password:  "prueba",email:  "carlos@gmail.com",
      nombre: "Carlos",apellidos:  "Rodriguez",nacionalidad:  "Pakistan",nacim:  "1969-07-20");
  print(usuario4);

  // Ejercicio 7
  var anonimo = usuario.Usuario.anonimo();
  print(anonimo);

  // Ejercicio 8
  final userData = "1,miusuario,mipassword,miemail@example.com,Juan,Pérez,Mexicana";
  final pFinal =  usuario.Usuario.fromCSV(userData);
  print(pFinal);

  // Ejercicio 9
  final p2Final = usuarionomutable.UsuarioNoMutable(numero: 1, username: "prueba", password: "contraseña", email: "correo@gmail.com", nombre: "John", apellidos: "Doe", nacionalidad: "EEUU", nacimiento:  "1969-07-20");
  print(p2Final);
}
