//Write a dart code to accept a number and check whether the number is prime or not. Use method name check (int n). The method returns 1, if the number is prime otherwise, it returns 0.

import 'dart:io';

void main(List<String> args) {
  while (true) {
    print("Enter a number");
    int n = int.parse(stdin.readLineSync()!);
    int temp = PrimeNumber().check(n);
    if (temp == 1)
      print("${n} is prime");
    else
      print("${n} is not prime");
    print("Do you want enter another number\nyes no\n");
    if (stdin.readLineSync() == 'no') break;
  }
}

class PrimeNumber {
  int check(n) {
    for (int i = 2; i <= n ~/ 2; i++) if (n % i == 0) return 0;
    return 1;
  }
}
