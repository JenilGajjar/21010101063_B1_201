import 'dart:io';
import 'string_const.dart';

class Faculty {
  List<Map<String, dynamic>> list = [];

  setData() {
    Map<String, dynamic> map = Map();
    print("Enter Faculty name");
    map[NAME] = stdin.readLineSync();
    print("Enter Faculty salary");
    map[SALARY] = double.parse(stdin.readLineSync()!);
    print("Enter Faculty age");
    map[AGE] = int.parse(stdin.readLineSync()!);
    print("Enter Faculty mobile number");
    map[MOBILENUMBER] = stdin.readLineSync();
    print("Enter Faculty address");
    map[ADDRESS] = stdin.readLineSync();
    list.add(map);
  }

  getAllData() {
    print("Faculty Details\n");
    for (int i = 0; i < list.length; i++) {
      Map map = list[i];
      print("Faculty name : ${map[NAME]}");
      print("Faculty Salary : ${map[SALARY]}");
      print("Faculty Age : ${map[AGE]}");
      print("Faculty MobileNumber : ${map[MOBILENUMBER]}");
      print("Faculty Address : ${map[ADDRESS]}\n");
    }
  }

  getData(name) {
    for (var element in list) {
      if (name.toString().toLowerCase() ==
          element[NAME].toString().toLowerCase()) {
        print("\nFaculty name : ${element[NAME]}");
        print("Faculty Salary : ${element[SALARY]}");
        print("Faculty Age : ${element[AGE]}");
        print("Faculty MobileNumber : ${element[MOBILENUMBER]}");
        print("Faculty Address : ${element[ADDRESS]}\n");
        return;
      }
    }
    print("Name not found");
  }

  remove(name) {
    for (var element in list) {
      if (element[NAME].toString().toLowerCase() ==
          name.toString().toLowerCase()) {
        print("\nRemoved data");
        print("Faculty name : ${element[NAME]}");
        print("Faculty Salary : ${element[SALARY]}");
        print("Faculty Age : ${element[AGE]}");
        print("Faculty MobileNumber : ${element[MOBILENUMBER]}");
        print("Faculty Address : ${element[ADDRESS]}\n");
        list.remove(element);
        return;
      }
    }
    print("Name not found");
  }

  update(name, number) {
    for (var i = 0; i < list.length; i++) {
      if (name.toString().toLowerCase() ==
          list[i][NAME].toString().toLowerCase()) {
        print(
            "press 1 to update name\npress 2 to update salary\npress 3 to update age\npress 4 to update mobile number\npress 5 to update address\npress 6 to update all details\n");
        number = int.parse(stdin.readLineSync()!);
        switch (number) {
          case 1:
            print("Enter new name");
            list[i][NAME] = stdin.readLineSync()!;
            break;
          case 2:
            print("Enter new salary");
            list[i][SALARY] = double.parse(stdin.readLineSync()!);
            break;
          case 3:
            print("Enter new age");
            list[i][AGE] = int.parse(stdin.readLineSync()!);
            break;
          case 4:
            print("Enter new mobile number");
            list[i][MOBILENUMBER] = (stdin.readLineSync()!);
            break;
          case 5:
            print("Enter new address");
            list[i][ADDRESS] = (stdin.readLineSync()!);
            break;
          case 6:
            print("Name :${list[i][NAME]} , Enter new name");
            list[i][NAME] = stdin.readLineSync()!;
            print("Salary :${list[i][SALARY]} , Enter new salary");
            list[i][SALARY] = double.parse(stdin.readLineSync()!);
            print("Age :${list[i][AGE]} , Enter new age");
            list[i][AGE] = int.parse(stdin.readLineSync()!);
            print(
                "Mobile number :${list[i][MOBILENUMBER]} , Enter new mobile number");
            list[i][MOBILENUMBER] = (stdin.readLineSync()!);
            print("Address :${list[i][ADDRESS]} , Enter new address");
            list[i][ADDRESS] = (stdin.readLineSync()!);
            break;
          default:
            print("Invalid choice");
            break;
        }
        return;
      }
    }
    print("Name not found");
  }
}
