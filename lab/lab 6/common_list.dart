//Write a dart code to read 2 lists and return a list that contains only the elements that are common between them
import 'dart:io';

void main(List<String> args) {
  List<int> list1 = [], list2 = [];

  print("Enter total number of elements for list1");
  int n1 = int.parse(stdin.readLineSync()!);

  print("\nEnter elements of list1");
  for (var i = 0; i < n1; i++) {
    print("Enter element number ${i + 1}");
    list1.add(int.parse(stdin.readLineSync()!));
  }

  print("Enter total number of elements for list2");
  int n2 = int.parse(stdin.readLineSync()!);
  print("\nEnter elements of list2");
  for (var i = 0; i < n2; i++) {
    print("Enter element number ${i + 1}");
    list2.add(int.parse(stdin.readLineSync()!));
  }

  print(list1);
  print(list2);
  list1.retainWhere((item) => list2.contains(item));

  print("Common elemnts");
  print(list1);
}
