import 'package:repaso/ejercicios1_2/jerarquia/vehiculo.class.dart';
import 'package:repaso/ejercicios1_2/jerarquia/vmotor.class.dart';

class Camion extends VMotor {

    const Camion({String? modelo, String? marca, String? color, int nRuedas = 4}) : 
    super(modelo: modelo, marca: marca, color: color, combustible: Combustible.diesel, esElectrico: false, nRuedas: nRuedas < 4 ? 4 : nRuedas, medio: Medio.terrestre);


    @override
  String toString() {
    return """
Camion(
${super.toString()}
)
""";
  }
}