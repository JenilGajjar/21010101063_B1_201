// Write a dart code to find the factorial of the given number

import 'dart:io';

void main(List<String> args) {
  print("Enter a number");
  int n = int.parse(stdin.readLineSync()!);
  print("factorial of ${n} : ${factorial(n)}");
}

double factorial(int n) {
  if (n < 0) {
    print("Invalid Value"); 
    return -1;
  }
  double ans = 1;
  for (int i = 1; i <= n; i++) {
    ans *= i;
  }
  return ans;
}
