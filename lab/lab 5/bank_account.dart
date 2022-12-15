//Create a class named Bank_Account with Account_No, User_Name, Email, Account_Type, and
//Account_Balance as data members. Also create a method GetAccountDetails() and
//DisplayAccountDetails(). Create a main method to demonstrate the Bank_Account class.

import 'dart:io';

void main(List<String> args) {
  Bank_Account()
    ..getCandidateDetails()
    ..displayAccountDetails();
}

class Bank_Account {
  int? Account_No;
  String? User_Name;
  String? Email;
  String? Account_Type;
  double? Account_Balance;

  void getCandidateDetails() {
    print("Enter Account number");
    Account_No = int.parse(stdin.readLineSync()!);
    print("Enter User name");
    User_Name = stdin.readLineSync()!;
    print("Enter Email");
    Email = stdin.readLineSync()!;
    print("Enter Account type");
    Account_Type = stdin.readLineSync()!;
    print("Enter Account balance");
    Account_Balance = double.parse(stdin.readLineSync()!);
  }

  void displayAccountDetails() {
    print("Account number ${Account_No}");
    print("User name ${User_Name}");
    print("Email ${Email}");
    print("Account type ${Account_Type}");
    print("Account balance ${Account_Balance}");
  }
}
