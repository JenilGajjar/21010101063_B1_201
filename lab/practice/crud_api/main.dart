import 'dart:io';
import 'faculty.dart';

void main(List<String> args) {
  int choice = 0;
  Faculty faculty = Faculty();
  while (choice != 6) {
    print(
        "\nPress 1 to insert\nPress 2 to get all details\nPress 3 to get details of a particuler Faculty\nPress 4 to remove \nPress 5 to update \nPress 6 to exit");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        faculty.setData();
        break;
      case 2:
        faculty..getAllData();
        break;
      case 3:
        print("\nEnter name");
        faculty.getData(stdin.readLineSync()!);
        break;
      case 4:
        print("Enter name");
        faculty.remove(stdin.readLineSync()!);
        break;
      case 5:
        print("\nEnter name");
        faculty.update(stdin.readLineSync()!, 0);
        break;
      case 6:
        break;
      default:
        print("Invalid choice");
        break;
    }
  }
}
