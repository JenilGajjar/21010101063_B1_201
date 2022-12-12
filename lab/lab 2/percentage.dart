// Write a dart code to read marks of five subjects. Calculate percentage and print class
// accordingly. Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First
// Class between 60 to 70, Distinction if more than 70
import 'dart:io';

void main(List<String> args) {
  List list = [];
  print("Enter Number of subjects");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print("Enter Marks in subject ${i + 1}");
    list.add(int.parse(stdin.readLineSync()!));
    // another method to add elements in the list
    // list.insert(i, stdin.readLineSync()!);
  }
  double total = 0;
  list.forEach((e) => {total += e});
  double percentage = total / list.length;
  print("percentage " + percentage.toString());

  if (percentage < 35) {
    print("Fail");
  } else if (percentage >= 35 && percentage < 45) {
    print("Pass");
  } else if (percentage >= 45 && percentage < 60) {
    print("Second");
  } else if (percentage >= 60 && percentage < 70) {
    print("First");
  } else {
    print("Distinction");
  }
}
