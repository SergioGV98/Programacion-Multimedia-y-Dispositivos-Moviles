import 'package:ejercicios2/Base.class.dart';
import 'package:ejercicios2/Usuario.class.dart' as usuario;
import 'package:ejercicios2/UsuarioNoMutable.class.dart' as usuarionomutable;

void main(List<String> arguments) {
  // Ejercicio 1
  var usuario1 = usuario.Usuario(numero: 1, username: "SergioGV98", password: "prueba", email: "prueba@gmail.com",
      nombre: "Sergio", apellidos: "Garcia Vico", nacionalidad: "España");
  print(usuario1);
  
  var usuario2 = usuario.Usuario(numero: 2, username: "PacoR",password:  "1234", email: "paco@gmail.com");
  print(usuario2);

  /*const usuario3 = usuarionomutable.UsuarioNoMutable(numero: 3, username: "Antonia12", password: "Antonia123", email: "Antonia@gmail.com");
  print(usuario3);*/
 
 /* const usuario4 = usuarionomutable.UsuarioNoMutable( numero: 2, username: "otrousuario", password: "otropassword", email: "otroemail@example.com");
  usuario3 = usuario4;*/

  /*
  var usuario3Copia = usuario3.copyWith(
      numero: 3,
      username: "Antonia123",
      password: "Antonia123",
      email: "Paca@gmail.com");
  print(usuario3Copia);*/

  var usuario4 = usuario.Usuario(numero: 1, username: "Carlos",password:  "prueba",email:  "carlos@gmail.com",
      nombre: "Carlos",apellidos:  "Rodriguez",nacionalidad:  "Pakistan",nacim:  "1969-07-20");
  print(usuario4);

  var anonimo = usuario.Usuario.anonimo();
  print(anonimo);

  final userData = "1,miusuario,mipassword,miemail@example.com,Juan,Pérez,Mexicana";
  final pFinal =  usuario.Usuario.fromCSV(userData);
  print(pFinal);

  final p2Final = usuarionomutable.UsuarioNoMutable(numero: 1, username: "prueba", password: "contraseña", email: "correo@gmail.com", nombre: "John", apellidos: "Doe", nacionalidad: "EEUU", nacimiento:  "1969-07-20");
  print(p2Final);
  
  print("Número de instancias en la clase Base después de crear usuarios: ${Base.numInstancias}");
  
}
