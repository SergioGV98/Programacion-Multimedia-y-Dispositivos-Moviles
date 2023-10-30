import 'package:repaso/ejercicios1_2/jerarquia/vehiculo.class.dart';
import 'package:repaso/ejercicios1_2/jerarquia/vnomotor.class.dart';

class Canoa extends VNoMotor {

  const Canoa({String? modelo, String? marca, String? color}) : 
  super(modelo: modelo, marca: marca, color: color, nRuedas: 0, traccion: Traccion.remo, medio: Medio.acuatico);

  @override
  String toString() {
    return """
Canoa(
${super.toString()}
)
""";
  }
}
