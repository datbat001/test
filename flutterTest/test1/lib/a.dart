void main(List<String> args) {
  //print("hello world");

  //Cadenas
  String cadena01 = "Hola";
  String cadena02 = "Mi nombre es: ";
  String cadena03 = "Valerio";

  // print(cadena01 + " " + cadena02 + cadena03);

  //Numeros enteros y flotantes
  int numero01 = 5;
  int numero02 = 10;
  int suma = 0, resta = 0, multiplicacion = 0;
  double division = 0.0;

  suma = numero01 + numero02;
  resta = numero02 - numero01;
  multiplicacion = numero01 * numero02;
  division = numero01 / numero02;

//   print("La suma de los numeros $numero01 y $numero02 es : $suma");
//   print("La resta de los numeros $numero01 y $numero02 es : $resta");
//   print("La multiplicacion de los numeros $numero01 y $numero02 es : $multiplicacion");
//   print("La division de los numeros $numero01 y $numero02 es : $division");
  bool cierto = true;
  bool falso = false;

  if (cierto) {
    print("La condicion es verdadera");
  }

  if (falso) {
    print("No debe de entrar");
  } else {
    print("La condicion es falsa");
  }

  if(!falso){
    print("Negamos la condicion");
  }
}
