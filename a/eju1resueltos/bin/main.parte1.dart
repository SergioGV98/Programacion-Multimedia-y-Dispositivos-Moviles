import 'package:helloworld/ejercicios1_1/ejercicios1_1.dart';

void main() {
  solucionadorEcuacionesGrado2();
}

//===========================================================================================
void pruebaEjercicio1_1() {
  print(numSolucionesEcGrado2(1, 1, -2)); // 2
  print(numSolucionesEcGrado2(1, 0, 0)); // 1
  print(numSolucionesEcGrado2(2, 3, 4)); // 0
}

//-------------------------------------------------------------------------------------------
void pruebaEjercicio1_2() {
  print(coeficiente(1)); // "1"
  print(coeficiente(-1)); // "– 1"
  print(coeficiente(3, 1)); // "x"
  print(coeficiente(-2, 1)); // "– 2x"
  print(coeficiente(-3, 2)); // "– 3x²"
  print(coeficiente(-3, 3)); // null
}

//-------------------------------------------------------------------------------------------
void pruebaEjercicio1_3() {
  print(polinomioGrado2Str(a: 1, b: -5, c: -2)); // "x² -5x –2"
  print(polinomioGrado2Str(a: -2, c: -2)); // "–2x² –2"
  print(polinomioGrado2Str(a: -2, b: 3)); // "–2x² +3x"
  print(polinomioGrado2Str(b: 1, c: -2)); // "x –2"
  print(polinomioGrado2Str(c: -2)); // "–2"
  print(polinomioGrado2Str(b: 8)); // "8x"
  print(polinomioGrado2Str(c: 5)); // "5"
}

//-------------------------------------------------------------------------------------------
void pruebaEjercicio1_4() {
  mediaNumeros();
}

//-------------------------------------------------------------------------------------------
void pruebaEjercicio1_5() {
  adivinaElNumero(max: 200);
}

//-------------------------------------------------------------------------------------------
void pruebaEjercicio1_6() {
  solucionadorEcuacionesGrado2();
}
