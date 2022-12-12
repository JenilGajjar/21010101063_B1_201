// Write a dart code to find whether the given number is prime or not.

import 'dart:io';

void main(List<String> args) {
  print("Enter a number");
  int n = int.parse(stdin.readLineSync()!);
  bool flag = true;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      print(i);
      flag = false;
      break;
    }
  }

  if (flag) {
    print("${n} is prime");
  } else {
    print("${n} is not prime");
  }
}
