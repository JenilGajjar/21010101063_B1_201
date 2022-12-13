//Write a dart code to count the number of even or odd numbers from an array of n numbers

import 'dart:io';

void main() {
  List<int> list = [];
  print("Enter total number of integers you want to enter");
  int n = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < n; i++) {
    print("Enter element number " + (i + 1).toString());
    list.add(int.parse(stdin.readLineSync()!));
  }

  print(list);
  EvenOdd().evenOdd(list);
}

class EvenOdd {
  List? list;

  void evenOdd(List list) {
    this.list = list;
    int even_numbers = 0;
    list.forEach(((element) => {if (element % 2 == 0) even_numbers++}));
    print("Even numbers : ${even_numbers}");
    print("Odd numbers : ${list.length - even_numbers}");
  }
}
