import 'Combustible.dart';
import 'Medio.dart';
import 'Vehiculo.class.dart';
import 'package:meta/meta.dart';

class VMotor extends Vehiculo {
  final bool esElectrico;
  final Combustible combustible;

  @protected
  VMotor(super.modelo, super.marca, super.color, super.nRuedas, super.medio,
      this.esElectrico, this.combustible);

  @protected
  VMotor.turismo(this.combustible, this.esElectrico,
      [String? modelo, String? marca, String? color])
      : super(4, Medio.terrestre, modelo, marca, color);

  @protected
  VMotor.moto(this.esElectrico, [String? modelo, String? marca, String? color])
      : combustible = Combustible.gasolina,
        super(2, Medio.terrestre, modelo, marca, color);

  @protected
  VMotor.camion([String? modelo, String? marca, String? color, int nRuedas = 4])
      : combustible = Combustible.diesel,
        esElectrico = false,
        super(nRuedas < 4 ? 4 : nRuedas, Medio.terrestre, modelo, marca, color);

  @override
  String toString() {
    return '${super.toString()}\n  Combustible: $combustible\n  Eléctrico: $esElectrico';
  }
}
