import 'dart:io';

void main() {
  stdout.write('Enter the desired operation (+, -, *, /, %): ');
  String? operation = stdin.readLineSync();

  stdout.write('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double? result;

  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: Division by zero is not allowed!');
        return;
      }
      break;
    case '%':
      result = (num1 / num2) * 100;
      break;
    default:
      print('Invalid operation!');
      return;
  }

  print('Result: $result');
}
