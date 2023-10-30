import 'vehiculo.class.dart';
import 'vmotor.class.dart';

class Camion extends VMotor {
  const Camion({String? modelo, String? marca, String? color, int nRuedas = 4})
      : super(
            modelo: modelo,
            marca: marca,
            color: color,
            combustible: Combustible.diesel,
            esElectrico: false,
            medio: Medio.terrestre,
            nRuedas: nRuedas < 4 ? 4 : nRuedas);

  @override
  String toString() {
    return """
Camion(
${super.toString()}
)
""";
  }
}
