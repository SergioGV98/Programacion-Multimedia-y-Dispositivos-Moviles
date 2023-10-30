import 'vehiculo.class.dart';

abstract class VMotor extends Vehiculo {
  final Combustible combustible;
  final bool esElectrico;

  const VMotor(
      {String? modelo,
      String? marca,
      String? color,
      required int nRuedas,
      required Medio medio,
      required this.combustible,
      required this.esElectrico})
      : super(
            modelo: modelo,
            marca: marca,
            color: color,
            nRuedas: nRuedas,
            medio: medio);

  @override
  String toString() {
    return """${super.toString()}
  Combustible: $combustible
  Es eléctrico: $esElectrico""";
  }
}
