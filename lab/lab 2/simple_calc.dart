// Write a dart code to perform Addition, Subtraction, Multiplication, Division based on user choice
// using if, if..else..if, & switch

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Enter First Number : ");
  int first = int.parse(stdin.readLineSync()!);
  print("Enter Second Number : ");
  int second = int.parse(stdin.readLineSync()!);

  print(
      "Press 1 for Addition \nPress 2 for Subtraction\nPress 3 for Multiplication\nPress 4 for Division\nPress 5 for Power\nPress 6 for reminder");
  int operator = int.parse(stdin.readLineSync()!);

  // if (operator == 1) {
  //   print("Addition : ${first + second}");
  // } else if (operator == 2) {
  //   print("Subtraction : ${first - second}");
  // } else if (operator == 3) {
  //   print("Multiplication : ${first * second}");
  // } else if (operator == 4) {
  //   print("Divison : ${first / second}");
  // } else if (operator == 5) {
  //   print("Power: ${pow(first, second)}");
  // } else if (operator == 6) {
  //   print("Reminder: ${first % second}");
  // } else {
  //   print("Invalid operator");
  // }

  switch (operator) {
    case 1:
      print("Addition : ${first + second}");
      break;
    case 2:
      print("Subtraction: ${first - second}");
      break;
    case 3:
      print("Multiplication: ${first * second}");
      break;
    case 4:
      print("Division: ${first / second}");
      break;
    case 5:
      print("Power: ${pow(first, second)}");
      break;
    case 6:
      print("Reminder: ${first % second}");
      break;
    default:
      print("Invalid operator");
      break;
  }
}
