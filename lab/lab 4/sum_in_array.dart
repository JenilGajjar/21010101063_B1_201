//Write a dart code to accept n numbers in an array. Display the sum of all the numbers which are divisible by either 3 or 5.
import 'dart:io';

void main(List<String> args) {
  List<int> list = [];

  print("Enter number of  elements you want to enter");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print("Enter element number ${i + 1}");
    list.add(int.parse(stdin.readLineSync()!));
  }

  print(list);
  print("Sum of numbers that are divisible by 3 or 5 : ${sumInArray(list)}");
}

int sumInArray(list) {
  int sum = 0;
  list.forEach((element) =>
      {if (element % 3 == 0 || element % 5 == 0) sum += element as int});
  return sum;
}
