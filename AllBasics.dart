import 'dart:io';

void main() {
  // const and final
  const String country = "India"; // constant at compile time
  final String developer = "OpenAI"; // assigned once at runtime

  print("Enter your name:");
  String name = stdin.readLineSync()!;

  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  print("Enter your score:");
  var score = double.parse(stdin.readLineSync()!); // var used here

  print("\n--- User Info ---");
  print("Name: $name");
  print("Age: $age");
  print("Score: $score");
  print("Country: $country");
  print("Developer: $developer");

  // Conditional Statement
  if (age >= 18) {
    print("You are an adult.");
  } else {
    print("You are a minor.");
  }

  // Loop Example
  print("\nPrinting numbers from 1 to 5:");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // Function call
  int result = multiply(age, 2);
  print("\nDouble your age is: $result");
}

// Function
int multiply(int a, int b) {
  return a * b;
}
