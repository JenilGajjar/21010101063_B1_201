//Create a class named Member having the following members:
//1 - Name
//2 - Age
//3 - Phone number
//4 - Address
//5 - Salary
//It also has a method named printSalary() which prints the salary of the members. Two classes
//Employee and Manager inherit the Member class. The Employee and Manager classes have
//data members specialization and department respectively. Now, assign name, age,
//phone_number, address and salary to an Employee and Manager by making an object of both
//of these classes and print the same along with specialization and department respectively.

import 'dart:io';

class Member {
  String? Name;
  String? Age;
  String? Phone_number;
  String? Address;
  String? Salary;

  setData() {
    print("Enter Name");
    Name = stdin.readLineSync()!;
    print("Enter Age");
    Age = stdin.readLineSync()!;
    print("Enter Phone number");
    Phone_number = stdin.readLineSync()!;
    print("Enter Address");
    Address = stdin.readLineSync()!;
    print("Enter Salary");
    Salary = stdin.readLineSync()!;
  }

  printSalary() {
    print("Salary of ${Name} is ${Salary}");
  }

  printData() {
    print("Name ${Name}");
    print("Age ${Age}");
    print("Phone_number ${Phone_number}");
    print("Address ${Address}");
    print("Salary ${Salary}");
  }
}

class Employee extends Member {
  String? specialization;

  setData() {
    super.setData();
    print("Enter specialization");
    specialization = stdin.readLineSync()!;
  }

  @override
  printData() {
    print("\nEmployee data");
    super.printData();
    print("specialization ${specialization}\n");
  }
}

class Manager extends Member {
  String? department;

  setData() {
    super.setData();
    print("Enter department");
    department = stdin.readLineSync()!;
  }

  @override
  printData() {
    print("\nManager data");
    super.printData();
    print("department ${department}\n");
  }
}

void main(List<String> args) {
  Employee()
    ..setData()
    ..printData();
  Manager()
    ..setData()
    ..printData();
}
