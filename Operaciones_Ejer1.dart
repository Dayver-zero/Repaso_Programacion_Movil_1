import 'dart:io';

void main(){
  print("Ingrese el primer numero:");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Ingrese el segundo numero:");
  int num2 = int.parse(stdin.readLineSync()!);
  
  int suma = num1+num2;
  print("*suma: $suma");
  int resta = num1-num2;
    print("*Resta: $resta");

  int Multiplicacion = num1*num2;
    print("*Multiplicacion: $Multiplicacion");

  if(num2 != 0){
    double Division = num1/num2;
      print("*Division: $Division");

  }else{
    print('!!No hay divison entre 0');
  }
  
}