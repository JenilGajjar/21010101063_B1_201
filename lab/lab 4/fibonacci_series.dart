//Write a dart code to generate a Fibonacci series of N given numbers using this method.

import 'dart:io';

void main(List<String> args) {
  print("Enter number of digits to be displayed");
  Fibonaci().fibonacci(int.parse(stdin.readLineSync()!));
}

class Fibonaci {
  int? n;
  void fibonacci(n) {
    this.n = n;
    if (this.n == 1) {
      print(0);
      return;
    }
    // method 1
    // List list = [];
    // int i = 2;
    // list.add(0);
    // list.add(1);
    // while (i < n) {
    //   list.add(list[i - 1] + list[i - 2]);
    //   i++;
    // }
    // print(list);

    // method 2 a better way because we are not using list anda saving spcace

    int num1 = 0, num2 = 1;
    stdout.write("0 1 ");
    for (int i = 2; i < n; i++) {
      int num3 = num1 + num2;
      stdout.write("${num3} ");
      num1 = num2;
      num2 = num3;
    }
  }
}
