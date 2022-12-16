//Define Time class with hour and minute as data member. Also define addition() method to add two-time objects.


import 'dart:io';

class Time {
  int? hour;
  int? minute;

  setData() {
    print("Enter hour ");
    this.hour = int.parse(stdin.readLineSync()!);
    print("Enter minute ");
    this.minute = int.parse(stdin.readLineSync()!);
  }

  addition(Time t) {
    print("Total time ${this.hour! + t.hour!} : ${this.minute! + t.minute!}");
  }
}

void main(List<String> args) {
  Time t = Time();
  t..setData();
  Time()
    ..setData()
    ..addition(t);
}
