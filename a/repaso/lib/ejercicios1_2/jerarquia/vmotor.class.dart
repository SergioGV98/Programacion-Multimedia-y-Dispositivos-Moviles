import 'package:meta/meta.dart';
import 'package:repaso/ejercicios1_2/jerarquia/vehiculo.class.dart';

abstract class VMotor extends Vehiculo {
  final Combustible combustible;
  final bool esElectrico;

  @protected
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
            medio: medio,
            nRuedas: nRuedas);

  @override
  String toString() {
    return """${super.toString()}
  Combustible: $combustible
  Es eléctrico: $esElectrico""";
  }
}
