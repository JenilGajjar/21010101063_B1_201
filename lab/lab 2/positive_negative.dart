// Write a dart code to check whether the given number is positive or negative.
import 'dart:io'; 

void main(List<String> args) {
  print("Enter a number : ");
  int n = int.parse(stdin.readLineSync()!);
  // if (n >= 0) {
  //   print("${n} is positive");
  // } else {
  //   print("${n} is negative");
  // }
  if (!n.isNegative) {
    print("${n} is positive");
  } else {
    print("${n} is negative");
  }
}
