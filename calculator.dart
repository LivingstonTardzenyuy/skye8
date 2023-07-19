import 'dart:io';

double getNumber(String prompt) {
  stdout.write(prompt);
  return double.parse(stdin.readLineSync()!);
}

String getOperation() {
  stdout.write('Enter the operation you want to perform (+, -, *, /) : ');
  return stdin.readLineSync()!;
}

double add(double numberOne, double numberTwo) {
  return numberOne + numberTwo;
}

double substract(double numberOne, double numberTwo) {
  return numberOne - numberTwo;
}

double multiply(double numberOne, double numberTwo) {
  return numberOne * numberTwo;
}

double divide(double numberOne, double numberTwo) {
  if (numberTwo == 0) {
    return -1;
  }
  return numberOne / numberTwo;
}

void main() {
  double numberOne = getNumber('Input the first number: ');
  double numberTwo = getNumber('Enter the second number: ');

  String operation = getOperation();

  double result;

  switch (operation) {
    case '+':
      result = add(numberOne, numberTwo);

    case '-':
      result = substract(numberOne, numberTwo);

    case '*':
      result = multiply(numberOne, numberTwo);

    case '/':
      result = divide(numberOne, numberTwo);
    // double

    default:
      print('Invalide operation');
      return;
  }

  print('The results of $numberOne $operation $numberTwo is $result');
}
