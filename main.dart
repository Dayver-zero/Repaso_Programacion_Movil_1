import 'dart:io';
import 'operaciones.dart';
void main() {
  print('Ingresa un numero');
  int entrada = int.parse(stdin.readLineSync()!);
  int resultado = cuadrado(entrada);
  print('El cuadrado de $entrada es $resultado');
  
}
