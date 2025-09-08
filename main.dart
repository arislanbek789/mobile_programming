// Arislanbek Kalbaev
// 220081

// LAB 3

//1
//T1
void main() {
  print ("Hello, World!");
}

//T2
void main() {
  print ("Arislanbek Kalbaev");
}

//T3
void main() {
  print("42 Mustaqillik Street\nYunusabad District\nTashkent, Uzbekistan\n100123");
}

//T4
void main() {
  print("The current year is 2025.");
}

//T5
void main() {
  print("Welcome, dear students of New Uzbekistan University!");
}

//2
//T2
void main() {
  String favoriteCity = "Tashkent";
  print("My favorite city is $favoriteCity.");
}

//T3
void main() {
  double bookPrice = 15.99;
  print("The price of the book is $bookPrice USD.");
}

//T4
void main() {
  bool isLearningDart = true;
  print("Am I learning Dart? The answer is $isLearningDart.");
}

//T5
void main() {
  String weather = "Sunny";
  int temperature = 32;
  print("Today’s weather is $weather and the temperature is $temperature degrees Celsius.");
}

//T6
void main() {
  var numberOfApples = 10;
  print(numberOfApples);

  numberOfApples = 12;
  print(numberOfApples);
}

//3
//T2
void main() {
  int studentScore = 75;

  if (studentScore >= 60) {
    print("Pass");
  } else {
    print("Fail");
  }
}

//T3
void main() {
  int hour = 14;

  if (hour < 12) {
    print("Good morning");
  } else if (hour >= 12 && hour <= 18) {
    print("Good afternoon");
  } else {
    print("Good evening");
  }
}

//T4
void main() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

//T5
void main() {
  for (int i = 5; i >= 1; i--) {
    print(i);
  }
  print("Liftoff!");
}

//T6
void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0) {
      print(i);
    }
  }
}


//4
//T2
void greetByName(String name) {
  print("Hello, $name!");
}

void main() {
  greetByName("Arislanbek");
}

//T3
int multiply(int a, int b) {
  return a * b;
}

void main() {
  int result = multiply(7, 6);
  print(result);
}

//T4
bool isPositive(int number) {
  return number > 0;
}

void main() {
  int positiveTest = 10;
  int negativeTest = -5;

  print("Is $positiveTest positive? ${isPositive(positiveTest)}");
  print("Is $negativeTest positive? ${isPositive(negativeTest)}");
}

//T5
double calculateAverage(double num1, double num2) {
  return (num1 + num2) / 2;
}

void main() {
  double result = calculateAverage(10.5, 20.5);
  print(result);
}

//T6
int multiply(int a, int b) => a * b;

void main() {
  int result = multiply(7, 6);
  print(result);
}

//5
//T2
// This variable stores the name of a planet.
void main (){
  // The variable stores the string
  String planet = 'Earth';
  print ("We live on planet $planet.");
}

//T3
/*
Name: Arislanbek Kalbayev
Date: September 8, 2025
Description: This is my first Dart function.
*/

void sayHello() {
  print('Hello from a function!');
}

void main() {
  sayHello();
}

//T4
void main() {
  // print('This message should not appear.');
  print('This message should appear.');
}

//T5
import 'dart:math';

/// Calculates the area of a circle given its radius.
/// 
/// Formula: π × radius²
double calculateCircleArea(double radius) {
  return pi * radius * radius;
}

void main() {
  print(calculateCircleArea(5.0));
}

//T6
void main() {
  // This variable stores a very important universal constant.
  int speedOfLight = 299792458; // in meters per second
  print(speedOfLight);
}
