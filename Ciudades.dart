import 'dart:io';

void main() {
  // Lista de ciudades de Bolivia
  List<String> ciudades = [
    'La Paz',
    'Santa Cruz',
    'Cochabamba',
    'Sucre',
    'Oruro',
    'Potosí',
    'Tarija',
    'Trinidad',
    'Cobija'
  ];

  print('Ingresa el nombre de una ciudad de Bolivia: ');
  String? ciudadIngresada = stdin.readLineSync();

  if (ciudadIngresada != null) {
    if (ciudades.contains(ciudadIngresada)) {
      print('La ciudad "$ciudadIngresada" está en la lista.');
    } else {
      print('La ciudad "$ciudadIngresada" NO está en la lista.');
    }
  } else {
    print('No se ingresó ninguna ciudad.');
  }
}
