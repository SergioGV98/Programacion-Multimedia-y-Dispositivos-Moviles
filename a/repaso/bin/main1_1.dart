import 'package:repaso/ejercicios1_1/ejercicios1.dart' as repaso;

void main(List<String> arguments) {
  //Ejercicio Unidad 1 Apartado 2 numSolucionesEcGrado2
  print(repaso.numSolucionesEcGrado2(1, 2, -2));
  print(repaso.numSolucionesEcGrado2(1, 0, 0));
  print(repaso.numSolucionesEcGrado2(2, 3, 4));

  //Ejercicio Unidad 1 Apartado 3 coeficiente
  print(repaso.coeficiente(1));
  print(repaso.coeficiente(-1));
  print(repaso.coeficiente(3, 1));
  print(repaso.coeficiente(-1, 1));
  print(repaso.coeficiente(-3, 2));
  print(repaso.coeficiente(-3,3));

  //Ejercicio Unidad 1 Apartado 4 polinomioGrado2Str
  print(repaso.polinomioGrado2Str(a: 1, b: -5, c: -2));
  print(repaso.polinomioGrado2Str(a: -2, c: -2));
  print(repaso.polinomioGrado2Str(a: -2, b: 3));
  print(repaso.polinomioGrado2Str(b: 1, c: -2));
  print(repaso.polinomioGrado2Str(c: -2));
  print(repaso.polinomioGrado2Str(b: 8));
  print(repaso.polinomioGrado2Str(c: 5));
  print(repaso.polinomioGrado2Str());
}
