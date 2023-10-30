import 'package:repaso/ejercicios1_2/jerarquia/vehiculo.class.dart';
import 'package:repaso/ejercicios1_2/jerarquia/vnomotor.class.dart';

class Bicicleta extends VNoMotor {

  const Bicicleta({String? modelo, String? marca, String? color}) : 
  super(modelo: modelo, marca: marca, color: color, medio: Medio.terrestre, traccion: Traccion.pedales, nRuedas: 2);


    @override
  String toString() {
    return """
Bicicleta(
${super.toString()}
)
""";
  }
}