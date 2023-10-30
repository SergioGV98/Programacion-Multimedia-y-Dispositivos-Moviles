import 'package:meta/meta.dart';
import 'package:repaso/ejercicios1_2/jerarquia/vehiculo.class.dart';
import 'package:repaso/ejercicios1_2/jerarquia/vmotor.class.dart';

class Turismo extends VMotor {
  const Turismo(
      {String? modelo,
      String? marca,
      String? color,
      Combustible combustible = Combustible.diesel,
      bool esElectrico = false})
      : super(
            modelo: modelo,
            marca: marca,
            color: color,
            combustible: combustible,
            esElectrico: esElectrico,
            medio: Medio.terrestre,
            nRuedas: 4);

  @override
  String toString() {
    return """
Turismo(
${super.toString()}
)
""";
  }
}
