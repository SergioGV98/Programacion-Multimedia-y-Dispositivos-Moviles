import 'package:meta/meta.dart';
import 'package:repaso/ejercicios1_2/jerarquia/vehiculo.class.dart';

abstract class VNoMotor extends Vehiculo {
  final Traccion traccion;

  @protected
  const VNoMotor({String? modelo, String? marca, String? color, required int nRuedas, required Medio medio, required this.traccion}) : 
  super(modelo: modelo, marca: marca, color: color, nRuedas: nRuedas, medio: medio);
  
  @override
  String toString() {
    return """${super.toString()}
  Tracción: $traccion""";
  }

}