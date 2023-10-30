import 'vehiculo.class.dart';

abstract class VNoMotor extends Vehiculo {
  final Traccion traccion;

  const VNoMotor(
      {String? modelo,
      String? marca,
      String? color,
      required int nRuedas,
      required Medio medio,
      required this.traccion})
      : super(
            modelo: modelo,
            marca: marca,
            color: color,
            nRuedas: nRuedas,
            medio: medio);

  @override
  String toString() {
    return """${super.toString()}
  Tracción: $traccion""";
  }
}
