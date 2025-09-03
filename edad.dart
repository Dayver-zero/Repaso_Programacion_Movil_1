import 'dart:io';

void main() {
  print('Ingrese la edad:');
  int entrada = int.parse(stdin.readLineSync()!);
  
  String resultado = (entrada >= 18) ? "Eres mayor de edad." : "Eres menor de edad.";
  print(resultado);
}
