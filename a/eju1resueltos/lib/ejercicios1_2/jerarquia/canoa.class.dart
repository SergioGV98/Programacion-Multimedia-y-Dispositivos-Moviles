import 'vehiculo.class.dart';
import 'vnomotor.class.dart';

class Canoa extends VNoMotor {
  const Canoa({String? modelo, String? marca, String? color})
      : super(
            modelo: modelo,
            marca: marca,
            color: color,
            medio: Medio.acuatico,
            nRuedas: 0,
            traccion: Traccion.remo);

  @override
  String toString() {
    return """
Canoa(
${super.toString()}
)
""";
  }
}
