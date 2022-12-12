import 'dart:io';
import 'dart:math';

void main() {
  /*
    stdout.write("Enter First Number ");
    int? first = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Second Number ");
    int? second = int.parse(stdin.readLineSync()!);
    print("Addition : ${first + second}");
  */

  /*
    print("Enter Temperature in fahrenheit ");
    double fahrenheit = double.parse(stdin.readLineSync()!);
    String celsius = (((fahrenheit - 32) * 5) / 9).toStringAsFixed(2);
    print("Temperature in celsius ${celsius}");
  */

  /*
    List list = [];
    for (var i = 0; i < 5; i++) {
      print("Enter marks in subject ${i + 1}");
      list.add(double.parse(stdin.readLineSync()!));
    }
    double total = 0;
    list.forEach((element) => {total += element});
    print("Average : ${total / list.length}");
  */

  /*
  double meter = double.parse(stdin.readLineSync()!);
  String foot = (3.28084 * meter).toStringAsFixed(2);
  print("Meter to Feet " + foot);
  */

  /*
  print("Enter Weight in pound ");
  double weight = 0.45359237 * double.parse(stdin.readLineSync()!);
  print("Enter Height in inch ");
  double height = 0.254 * double.parse(stdin.readLineSync()!);
  String bmi = (weight / pow(height, 2)).toStringAsFixed(2);
  print("BMI : " + bmi);
  */

  print("Enter a number");
  int n = int.parse(stdin.readLineSync()!);
  int a = 0;
  while (n != 0) {
    a = a * 10 + n % 10;
    n = n ~/ 10;
  }
  print("Reverse " + a.toString());
}
