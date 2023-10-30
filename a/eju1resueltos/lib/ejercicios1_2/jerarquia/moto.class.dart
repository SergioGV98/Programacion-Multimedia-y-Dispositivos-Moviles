import 'vehiculo.class.dart';
import 'vmotor.class.dart';

class Moto extends VMotor {
  const Moto(
      {String? modelo, String? marca, String? color, bool esElectrico = false})
      : super(
            modelo: modelo,
            marca: marca,
            color: color,
            combustible: Combustible.gasolina,
            esElectrico: esElectrico,
            medio: Medio.terrestre,
            nRuedas: 2);

  @override
  String toString() {
    return """
Moto(
${super.toString()}
)
""";
  }
}
