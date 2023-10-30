import 'vehiculo.class.dart';
import 'vmotor.class.dart';

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
