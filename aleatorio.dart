import 'dart:io';
import 'dart:math';
void main() {
  int aleatorio = Random().nextInt(100) + 1;
  int? intento;
  print('$aleatorio');
  print('¡Adivina el número secreto entre 1 y 100!');

  while (intento != aleatorio) {
    print('Ingresa tu intento');
    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      intento = int.tryParse(entrada);

      if (intento == null) {
        print('Por favor, ingresa un número válido.');
        continue;
      }

      if (intento < aleatorio) {
        print('El número es mayor.');
      } else if (intento > aleatorio) {
        print('El número es menor.');
      } else {
        print('Adivinaste el número.');
      }
    }
  }
}
