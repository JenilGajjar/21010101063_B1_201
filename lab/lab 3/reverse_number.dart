// Write a dart code to print a given number in reverse order
import 'dart:io';

void main(List<String> args) {
  print("Enter a number");
  int n = int.parse(stdin.readLineSync()!);
  print("reverse of${n} :${reverse(n)} ");
}

int reverse(int n) {
  int a = 0;
  while (n != 0) {
    a = a * 10 + n % 10;
    n ~/= 10;
  }
  return a;
}
