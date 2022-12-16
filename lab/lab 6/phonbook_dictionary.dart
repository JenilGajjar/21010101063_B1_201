//Write a dart code to create and read a phonebook dictionary

import 'dart:io';

void main(List<String> args) {
  int choice = 0;
  Phonebook phonebook = Phonebook();
  while (choice != 3) {
    print(
        "\nPress 1 to Enter phone number\nPress 2 to Display data\nPress 3 to exit");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        phonebook.setData();
        break;
      case 2:
        phonebook.getData();
        break;
      case 3:
        break;
      default:
        print("Please Enter a valid number");
        break;
    }
  }
}

class Phonebook {
  List list = [];
  setData() {
    Map map = {};
    print("Enter name");
    map['Name'] = stdin.readLineSync()!;
    print("Enter Phone Number");
    map['PhoneNumber'] = int.parse(stdin.readLineSync()!);
    list.add(map);
    print("");
  }

  getData() {
    for (var item in list)
      print("Name : ${item['Name']} , Phone Number : ${item['PhoneNumber']}");
  }
}
