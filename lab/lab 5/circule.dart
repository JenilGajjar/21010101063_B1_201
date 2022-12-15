//Write a dart code to create a Circle class with area() and perimeter() function to find area and
//perimeter of the circle.

import 'dart:io';
import 'dart:math';

class Circle {
  area(radius) {
    return pi * radius * radius;
  }

  perimeter(radius) {
    return 2 * pi * radius;
  }
}

void main(List<String> args) {
  print("Enter radius");
  double radius = double.parse(stdin.readLineSync()!);
  Circle circle = Circle();
  print("Area of Circle of ${circle.area(radius).toStringAsFixed(2)}");
  print(
      "Perimeter of radius of ${circle.perimeter(radius).toStringAsFixed(2)}");
}
