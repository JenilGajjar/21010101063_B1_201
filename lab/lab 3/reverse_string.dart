// Write a dart code to print the reverse string.
import 'dart:io';

void main(List<String> args) {
  String string = stdin.readLineSync()!;
  String rev_string = string.split('').reversed.join('');
  print("reverse of " + string + " : " + rev_string);
  print("reverse of " +
      string +
      " : " +
      new String.fromCharCodes(string.codeUnits.reversed));
}
