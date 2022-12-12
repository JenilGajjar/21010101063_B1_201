// Write a dart code to print numbers between two given numbers which are divisible by 2 but not divisible by 3.

import 'dart:io';

void main() {
  print("Enter first number");
  int first = int.parse(stdin.readLineSync()!);
  print("Enter second number");
  int second = int.parse(stdin.readLineSync()!);

  if (first > second) {
    int temp = first;
    first = second;
    second = temp;
  }

  print("number between  ${first} and ${second}");
  for (int i = first + 1; i < second; i++) {
    if (i % 2 == 0 && i % 3 != 0) print(i);
  }
}
