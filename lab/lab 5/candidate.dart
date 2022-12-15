//Create a class named Candidate with Candidate_ID, Candidate_Name, Candidate_Age,
//Candidate_Weight and Candidate_Height as data members. Create a method
//GetCandidateDetails() and DisplayCandidateDetails(). Create a main method to demonstrate
//the Candidate class

import 'dart:io';

class Candidate {
  String? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double? Candidate_Height;

  void getCandidateDetails() {
    print("Enter cadidate id");
    this.Candidate_ID = stdin.readLineSync()!;
    print("Enter cadidate name");
    this.Candidate_Name = stdin.readLineSync()!;
    print("Enter cadidate age");
    this.Candidate_Age = int.parse(stdin.readLineSync()!);
    print("Enter cadidate weight");
    this.Candidate_Weight = double.parse(stdin.readLineSync()!);
    print("Enter cadidate height");
    this.Candidate_Height = double.parse(stdin.readLineSync()!);
  }

  void displayCandidateDetails() {
    print("\nCandidate id : ${Candidate_ID}");
    print("Candidate name  : ${Candidate_Name}");
    print("Candidate age : ${Candidate_Age}");
    print("Candidate weight  : ${Candidate_Weight}");
    print("Candidate height  : ${Candidate_Height}\n");
  }
}

void main() {
  Candidate()
    ..getCandidateDetails()
    ..displayCandidateDetails();
}
