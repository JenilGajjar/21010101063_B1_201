//Write a dart code to find friends’ details by their name using a dictionary. (Create a local
//dictionary and search from it using Map<String, Object?> & Model Class).

import 'dart:io';

void main(List<String> args) {
  int choice = 0;
  Friend friend = Friend();
  while (choice != 4) {
    print(
        "\nEnter 1 to enter details\nEnter 2 to display all data\nEnter 3 to display data using name \nEnter 4 exit");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        friend.setData();
        break;
      case 2:
        friend.getAllData();
        break;
      case 3:
        print("Enter name");
        friend.getData(stdin.readLineSync()!);
        break;
      case 4:
        break;
      default:
        print("Invalid value");
    }
  }
}

class Friend {
  static const NAME = "Name";
  static const AGE = "Age";
  static const PHONE_NUMBER = "PhoneNumber";
  static const EMAIL = "Email";
  static const ADDRESS = "Address";
  List list = [];

  setData() {
    Map map = {};
    print(("Enter name"));
    map[NAME] = stdin.readLineSync()!;
    print(("Enter age"));
    map[AGE] = int.parse(stdin.readLineSync()!);
    print(("Enter Phone number"));
    map[PHONE_NUMBER] = stdin.readLineSync()!;
    print(("Enter Email"));
    map[EMAIL] = stdin.readLineSync()!;
    print(("Enter Address"));
    map[ADDRESS] = stdin.readLineSync()!;
    list.add(map);
  }

  getAllData() {
    print("\nDetails");
    for (var map in list) {
      print("\nNAME : ${map[NAME]}");
      print("AGE : ${map[AGE]}");
      print("PHONE_NUMBER : ${map[PHONE_NUMBER]}");
      print("EMAIL : ${map[EMAIL]}");
      print("ADDRESS : ${map[ADDRESS]}");
    }
  }

  getData(name) {
    for (var element in list) {
      if (name.toString().toLowerCase() ==
          element[NAME].toString().toLowerCase()) {
        print("\nNAME : ${element[NAME]}");
        print("AGE : ${element[AGE]}");
        print("PHONE_NUMBER : ${element[PHONE_NUMBER]}");
        print("EMAIL : ${element[EMAIL]}");
        print("ADDRESS : ${element[ADDRESS]}");
        return;
      }
    }
    print("Invalid name");
  }
}
