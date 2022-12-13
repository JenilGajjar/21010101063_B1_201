//Write a dart code to find the maximum number from two numbers using this method
import 'dart:io';

void main(List<String> args) {
  print("Enter numbner 1");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter numbner 2");
  int num2 = int.parse(stdin.readLineSync()!);

  print(
    "Maximum number between ${num1} and ${num2} is ${Maximum().maximum(num1, num2)}",
  );
}

class Maximum {
  int? num1, num2;
  int maximum(num1, num2) {
    this.num1 = num1;
    this.num2 = num2;
    if (num1 > num2) return num1;
    return num2;
  }
}
