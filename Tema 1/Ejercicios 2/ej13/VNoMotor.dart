import 'Medio.dart';
import 'Traccion.dart';
import 'Vehiculo.class.dart';
import 'package:meta/meta.dart';

class VNoMotor extends Vehiculo {
  final Traccion traccion;

  @protected
  VNoMotor(super.modelo, super.marca, super.color, super.nRuedas, super.medio,
      this.traccion);

  @protected
  VNoMotor.bicicleta([String? modelo, String? marca, String? color])
      : traccion = Traccion.pedales,
        super(2, Medio.terrestre, modelo, marca, color);

  @protected
  VNoMotor.canoa([String? modelo, String? marca, String? color])
      : traccion = Traccion.remo,
        super(0, Medio.acuatico, modelo, marca, color);

  @override
  String toString() {
    return '${super.toString()}\n  Traccion: $traccion';
  }
}
