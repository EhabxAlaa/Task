import 'dart:io';

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw new Exception("Cannot divide by zero");
    }
    return a / b;
  }
}

void main() {
  Calculator calculator = new Calculator();

  while (true) {
    stdout.write("Enter an operation (+, -, *, /) or q to quit: ");
    String? operation = stdin.readLineSync();
    if (operation == null) {
      print("Invalid input");
      continue;
    }
    operation = operation.trim();

    if (operation == "q") {
      break;
    }

    stdout.write("Enter the first operand: ");
    String? operand1String = stdin.readLineSync();
    if (operand1String == null) {
      print("Invalid input");
      continue;
    }
    operand1String = operand1String.trim();
    double? operand1 = double.tryParse(operand1String);

    if (operand1 == null) {
      print("Invalid input for operand 1");
      continue;
    }

    stdout.write("Enter the second operand: ");
    String? operand2String = stdin.readLineSync();
    if (operand2String == null) {
      print("Invalid input");
      continue;
    }
    operand2String = operand2String.trim();
    double? operand2 = double.tryParse(operand2String);

    if (operand2 == null) {
      print("Invalid input for operand 2");
      continue;
    }

    double result;
    try {
      switch (operation) {
        case "+":
          result = calculator.add(operand1, operand2);
          break;
        case "-":
          result = calculator.subtract(operand1, operand2);
          break;
        case "*":
          result = calculator.multiply(operand1, operand2);
          break;
        case "/":
          result = calculator.divide(operand1, operand2);
          break;
        default:
          print("Invalid operation");
          continue;
      }

      print("Result: $result");
    } catch (e) {
      print(e.toString());
    }
  }

  print("Exiting calculator...");
}
