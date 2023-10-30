import 'vehiculo.class.dart';
import 'vnomotor.class.dart';

class Bicicleta extends VNoMotor {
  const Bicicleta({String? modelo, String? marca, String? color})
      : super(
            modelo: modelo,
            marca: marca,
            color: color,
            medio: Medio.terrestre,
            nRuedas: 2,
            traccion: Traccion.pedales);

  @override
  String toString() {
    return """
Bicicleta(
${super.toString()}
)
""";
  }
}
