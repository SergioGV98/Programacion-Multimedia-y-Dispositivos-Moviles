import 'package:repaso/ejercicios1_2/base.class.dart';
import 'package:repaso/ejercicios1_2/usuario.class.dart';
import 'package:repaso/ejercicios1_2/usuarionomutable.class.dart';

void main(List<String> arguments) {
  Usuario alumno = Usuario(1, 'jaimeruiz', '1234', 'jaimeruiz@iesportada.org', nombre: 'Jaime', apellidos: 'Ruiz Medina', nacionalidad: 'España', nacimiento: '1990-10-12');

  print(alumno);

  UsuarioNoMutable alumnoNoMutable = UsuarioNoMutable(2, "SergioGV98", "1234", "sergio@iesportada.org", nombre: "Sergio", apellidos: "Garcia Vico", nacionalidad: "España");
  print(alumnoNoMutable);
  alumnoNoMutable = UsuarioNoMutable(2, "SergioGV98", "123456789", "sergio@iesportada.org", nombre: "Sergio", apellidos: "Garcia Vico", nacionalidad: "España");
  print(alumnoNoMutable);

  Usuario u1 = Usuario.fromString(
      "1, superhacker, 1234, braulio@gmail.com, Braulio, Ruiz Galvez, 1985-08-14, España");

  Usuario u2 = Usuario.fromString("1, casianonimo");

  print(u1);
  print(u2);

  print(
      "Número de instancias creadas de objetos que heredan de Base: ${Base.numInstancias}");


}
