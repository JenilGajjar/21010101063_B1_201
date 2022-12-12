// Write a dart code to make a Simple Calculator using switch...case
import 'dart:io';

void main(List<String> args) {
  double ans = 0;
  bool flag = true;
  print("Enter a number");
  double num = double.parse(stdin.readLineSync()!);
  String str = "Enter operator(+,-,/,*,=)";
  print(str);
  String operator = stdin.readLineSync()!;
  while (flag) {
    switch (operator) {
      case '+':
        ans += num;
        print("Enter a number");
        num = double.parse(stdin.readLineSync()!);
        print(str);
        operator = stdin.readLineSync()!;
        break;
      case '-':
        ans -= num;
        print("Enter a number");
        num = double.parse(stdin.readLineSync()!);
        print(str);
        operator = stdin.readLineSync()!;
        break;
      case '*':
        ans *= num;
        print("Enter a number");
        num = double.parse(stdin.readLineSync()!);
        print(str);
        operator = stdin.readLineSync()!;
        break;
      case '/':
        ans /= num;
        print("Enter a number");
        num = double.parse(stdin.readLineSync()!);
        print(str);
        operator = stdin.readLineSync()!;
        break;
      case "=":
        print(str);
        operator = stdin.readLineSync()!;
        if (operator == '+') {
          ans += num;
        } else if (operator == '-') {
          ans -= num;
        } else if (operator == '*') {
          ans *= num;
        } else if (operator == '/') {
          ans /= num;
        }
        flag = false;
        print("Answer : ${ans}");
        break;
    }
  }
}
