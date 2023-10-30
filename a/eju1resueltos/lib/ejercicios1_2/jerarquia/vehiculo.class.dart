import 'package:meta/meta.dart';

enum Combustible { diesel, gasolina }

enum Medio { terrestre, aereo, acuatico, subacuatico }

enum Traccion { pedales, remo, animal }

abstract class Vehiculo {
  final String? modelo, marca, color;
  final int nRuedas;
  final Medio medio;

  @protected
  const Vehiculo(
      {this.modelo,
      this.marca,
      this.color,
      required this.nRuedas,
      required this.medio});

  @override
  String toString() {
    return """  Modelo: $modelo
  Marca: $marca
  Color: $color
  Número de ruedas: $nRuedas
  Medio: $medio""";
  }
}
