import 'dart:io';

void main() {
  int num1;
  int num2;
  String operation;

  while (true) {
    print("Enter your first number (0 to exit):");
    num1 = int.tryParse(stdin.readLineSync()!)!;
    if (num1 == 0) break;

    print("Enter your second number (0 to exit):");
    num2 = int.tryParse(stdin.readLineSync()!)!;
    if (num2 == 0) break;

    print("Choose operation: \n1. Sum \n2. Difference \n3. Product \n4. Quotient");
    operation = stdin.readLineSync()!;

    switch (operation) {
      case '1':
        print("Sum: ${compute(num1, num2, 'sum')}");
        break;
      case '2':
        print("Difference: ${compute(num1, num2, 'difference')}");
        break;
      case '3':
        print("Product: ${compute(num1, num2, 'product')}");
        break;
      case '4':
        if (num2 == 0) {
          print("Error: Division by zero");
        } else {
          print("Quotient: ${compute(num1, num2, 'quotient')}");
        }
        break;
      default:
        print("Invalid operation");
    }
  }
}

int compute(int num1, int num2, String operation) {
  switch (operation) {
    case 'sum':
      return num1 + num2;
    case 'difference':
      return num1 - num2;
    case 'product':
      return num1 * num2;
    case 'quotient':
      return num1 ~/ num2;
    default:
      throw ArgumentError("Invalid operation");
  }
}