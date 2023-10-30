import 'package:repaso/ejercicios1_2/jerarquia/vehiculo.class.dart';
import 'package:repaso/ejercicios1_2/jerarquia/vmotor.class.dart';

class Moto extends VMotor {

const Moto({String? modelo, String? marca, String? color, bool esElectrico = false}) : 
super(modelo: modelo, marca: marca, color: color, esElectrico: esElectrico ,combustible: Combustible.gasolina, medio: Medio.terrestre, nRuedas: 2);

  @override
  String toString() {
    return """
Moto(
${super.toString()}
)
""";
  }

}