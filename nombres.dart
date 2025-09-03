void main(){
  List<String> nombres =['Juan','Manolo','Sonic','Mauricio','Goku'];
  nombres.forEach((nombre){
    print('$nombre');
  });
  print('Nuevo alumno: Naruto');
  nombres.add('Naruto');
  nombres.forEach((nombre){
    print('$nombre');
  });

}