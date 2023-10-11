import 'package:ejercicio13/Combustible.dart';
import 'package:ejercicio13/Medio.dart';
import 'package:ejercicio13/VMotor.dart';
import 'package:ejercicio13/VNoMotor.dart';
import 'package:ejercicio13/Vehiculo.class.dart' as ejercicio13;

void main(List<String> arguments) {
  var miVehiculo =
      ejercicio13.Vehiculo(4, Medio.terrestre, 'Camry', 'Toyota', 'Rojo');
  print(miVehiculo);

  var turismo = VMotor.turismo(Combustible.diesel, false);
  print(turismo);

  var moto = VMotor.moto(false, "BMP", "Landa", "Amarilla");
  print(moto);

  var camion = VMotor.camion();
  print(camion);

  var bicicleta = VNoMotor.bicicleta("BMX", "123BMX", "Azul");
  print(bicicleta);

  var canoa = VNoMotor.canoa();
  print(canoa);
}
