// Write a dart code program to calculate the sum of all positive even numbers and the sum of all
// negative odd numbers from a set of numbers. You can enter 0 (zero) to quit the program and
// thus it displays the result.

import 'dart:io';

void main(List<String> args) {
  int sum_positive_even = 0, sum_negative_odd = 0, n = -1;
  while (n != 0) {
    print("Enter an integer");
    n = int.parse(stdin.readLineSync()!);
    if (n > 0 && n % 2 == 0)
      sum_positive_even += n;
    else if (n < 0 && n % 2 != 0) sum_negative_odd += n;
  }
  print("sum of positive even numbers ${sum_positive_even}");
  print("sum of negative odd numbers ${sum_negative_odd}");
}
