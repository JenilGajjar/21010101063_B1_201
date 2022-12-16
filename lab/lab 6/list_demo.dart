//Write a dart code that prompts the user to enter 5 numbers, stores them in a List, and displays them in increasing order.

import 'dart:io';

void main() {
  print("Enter 5 numbers");
  List<num> list = [];
  for (var i = 1; i <= 5; i++) {
    print("Enter element number " + (i).toString());
    list.add(double.parse(stdin.readLineSync()!));
  }
  list.sort();
  print(list);
}
