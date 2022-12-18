int suma(int p1, int p2) => p1 + p2;

int resta(int p1, int p2) => p2 - p1;

int multiplicacion(int p1, int p2) => p1 * p2;

double division(int p1, int p2) {
  return p1 / p2;
  
}
void main() {
  int num1 = 5, num2 = 10;
  int sum = suma(num1, num2);
  int res = resta(num1, num2);
  int mul = multiplicacion(num1, num2);
  double div = division(num1, num2);

  //funciones
  print("La suma de los numeros $num1 y $num2 es : $sum");
  print("La resta de los numeros $num1 y $num2 es : $res");
  print("La multiplicacion de los numeros $num1 y $num2 es : $mul");
  print("La division de los numeros $num1 y $num2 es : $div");
  imprimir("Hola puta");
}

void imprimir(String cadena) {
  print(cadena);
}
