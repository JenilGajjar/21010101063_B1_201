// Write a dart code to find out the largest number from three numbers without using Logical
// Operator.
import 'dart:io';

void main() {
  print("Enter First Number");
  int first = int.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  int second = int.parse(stdin.readLineSync()!);
  print("Enter Third Number");
  int third = int.parse(stdin.readLineSync()!);

  int largest = (first > second)
      ? ((first > third) ? first : third)
      : ((second > third) ? second : third);
  print("Largest Number Between ${first} , ${second} ,${third} : ${largest} ");
}
