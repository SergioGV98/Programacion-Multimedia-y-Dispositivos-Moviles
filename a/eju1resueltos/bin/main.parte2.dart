import 'package:helloworld/ejercicios1_2/base.class.dart';
import 'package:helloworld/ejercicios1_2/jerarquia/moto.class.dart';
import 'package:helloworld/ejercicios1_2/jerarquia/turismo.class.dart';
import 'package:helloworld/ejercicios1_2/usuario.class.dart';
import 'package:helloworld/ejercicios1_2/usuarionomutable.class.dart';

void main() {
  UsuarioNoMutable p = UsuarioNoMutable(1, 'pepe', '1234', 'pepe@gmail.com',
      nombre: 'Pepe',
      apellidos: 'Romero',
      nacimiento: '1990-10-12',
      nacionalidad: 'España');

  print(p);
  UsuarioNoMutable p2 = p.copyWith(username: 'manolo', nombre: 'Manolo');
  print(p2);

  Usuario u1 = Usuario.fromString(
      "1, superhacker, 1234, braulio@gmail.com, Braulio, Ruiz Galvez, 1985-08-14, España");

  Usuario u2 = Usuario.fromString("1, casianonimo");

  print(u1);
  print(u2);

  print(
      "Número de instancias creadas de objetos que heredan de Base: ${Base.numInstancias}");

  /*---------------------------------------------------------------------------------------------*/
  Turismo turismo =
      Turismo(marca: "Fiat", modelo: "500E", color: "Rojo", esElectrico: true);
  Moto moto = Moto(marca: "Harley-Davison", modelo: "Nightster");

  print(turismo);
  print(moto);
}
