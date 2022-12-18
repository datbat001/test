import 'dart:io';

void main() {
  print("Escribe tu nombre: ");
  String? name = stdin.readLineSync();

  print("Escribe tu edad: ");
  // String? age = stdin.readLineSync();
  int option = int.parse(stdin.readLineSync()!);

  //output
  print('hola $name, tienes $option años');

  while (true) {
    menu();
    String? option = stdin.readLineSync();
    switch (option) {
      case '1':
        suma();
        break;
      case '2':
        resta();
        break;
      case '3':
        multiplicacion();
        break;
      case '4':
        division();
        break;
      case '5':
        print('Adios');
        exit(0);
        break;
      default:
        print('Opcion no valida');
    }
  }
}

void menu() {
  print("------------------");
  print("------------------");
  print('1. Suma');
  print('2. Resta');
  print('3. Multiplicacion');
  print('4. Division');
  print('5. Salir');
  print("------------------");
  print("------------------");
}

void suma() {
  print('Ingresa el primer numero');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Ingresa el segundo numero');
  int num2 = int.parse(stdin.readLineSync()!);
  print('La suma es: ${num1 + num2}');
}

void resta() {
  print('Ingresa el primer numero');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Ingresa el segundo numero');
  int num2 = int.parse(stdin.readLineSync()!);
  print('La resta es: ${num2 - num1}');
}

void multiplicacion() {
  print('Ingresa el primer numero');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Ingresa el segundo numero');
  int num2 = int.parse(stdin.readLineSync()!);
  print('La multiplicacion es: ${num1 * num2}');
}

void division() {
  print('Ingresa el primer numero');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Ingresa el segundo numero');
  int num2 = int.parse(stdin.readLineSync()!);
  print('La division es: ${num1 / num2}');
}
