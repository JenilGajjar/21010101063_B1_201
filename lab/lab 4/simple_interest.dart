//Write a dart code to calculate simple interest using a method.
import 'dart:io';

void main(List<String> args) {
  print("Enter principal");
  double principal = double.parse(stdin.readLineSync()!);
  print("Enter rate");
  double rate = double.parse(stdin.readLineSync()!);
  print("Enter year");
  int year = int.parse(stdin.readLineSync()!);

  print(
      "Simple interest : ${Interest().calculateInterest(principal, rate, year)}");
}

class Interest {
  double calculateInterest(double principal, double rate, int year) {
    return (principal * rate * year) / 100;
  }
}
