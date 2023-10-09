import 'package:ejercicio13/Medio.dart';
import 'package:meta/meta.dart';

class Vehiculo {

  String? modelo;
  String? marca;
  String? color;
  final int nRuedas;
  final Medio medio;

  
  @protected
  Vehiculo(this.nRuedas, this.medio, [this.modelo, this.marca, this.color]);

   @override
  String toString() {
    return 'Vehiculo: \n'
        '  Modelo: $modelo\n'
        '  Marca: $marca\n'
        '  Color: $color\n'
        '  Número de Ruedas: $nRuedas\n'
        '  Medio: $medio';
  }
}