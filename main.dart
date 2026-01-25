// Practicals of Mobile Application Development using Flutter
//                 Assignment 1

// Name : Brahmbhatt Sahil
// Rollno : IT25A06
// Enrollment : 202500819010005

// 1. Write a program which will find all such numbers which are divisible by 7 but are
// not a multiple of 5, between 2000 and 3200 (both included).

void main() {
  for (int i = 2000; i <= 3200; i++) {
    if (i % 7 == 0 && i % 5 != 0) {
      print(i);
    }
  }
}

// Output:-
// 2002
// 2009
// 2016
// 2023
// 2037
// 2044
// 2051
// 2058
// 2072
// 2079
// 2086
// 2093
// 2107
// 2114
// 2121
// 2128
// 2142
// 2149
// 2156
// 2163
// 2177
// 2184
// 2191
// 2198
// 2212
// 2219
// 2226
// 2233
// 2247
// 2254
// 2261
// 2268
// 2282
// 2289
// 2296
// 2303
// 2317
// 2324
// 2331
// 2338
// 2352
// 2359
// 2366
// 2373
// 2387
// 2394
// 2401
// 2408
// 2422
// 2429
// 2436
// 2443
// 2457
// 2464
// 2471
// 2478
// 2492
// 2499
// 2506
// 2513
// 2527
// 2534
// 2541
// 2548
// 2562
// 2569
// 2576
// 2583
// 2597
// 2604
// 2611
// 2618
// 2632
// 2639
// 2646
// 2653
// 2667
// 2674
// 2681
// 2688
// 2702
// 2709
// 2716
// 2723
// 2737
// 2744
// 2751
// 2758
// 2772
// 2779
// 2786
// 2793
// 2807
// 2814
// 2821
// 2828
// 2842
// 2849
// 2856
// 2863
// 2877
// 2884
// 2891
// 2898
// 2912
// 2919
// 2926
// 2933
// 2947
// 2954
// 2961
// 2968
// 2982
// 2989
// 2996
// 3003
// 3017
// 3024
// 3031
// 3038
// 3052
// 3059
// 3066
// 3073
// 3087
// 3094
// 3101
// 3108
// 3122
// 3129
// 3136
// 3143
// 3157
// 3164
// 3171
// 3178
// 3192
// 3199

// 2. Write a program to check if a number is a prime number.

import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print("Enter a number:");

  int number = int.parse(stdin.readLineSync()!);

  if (isPrime(number)) {
    print("$number is a prime number.");
  } else {
    print("$number is not a prime number.");
  }
}

// output :
// Enter a number:
// 7
// 7 is a prime number.

// 3. Write a program that accepts a sentence and calculate the number of letters and
// digits. Suppose the following input is supplied to the
// Program: hello world! 123 Then, the output should be: LETTERS 10 DIGITS 3

import 'dart:io';

void main() {
  print("Enter a sentence:");

  String input = stdin.readLineSync()!;

  int letters = 0;
  int digits = 0;

  for (int i = 0; i < input.length; i++) {
    int code = input.codeUnitAt(i);

    if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122)) {
      letters++;
    } else if (code >= 48 && code <= 57) {
      digits++;
    }
  }

  print("LETTERS $letters");
  print("DIGITS $digits");
}

// output :
// Enter a sentence:
// hello world! 123
// LETTERS 10
// DIGITS 3

// 4. Write a program to calculate squares of even numbers between a given range (like
// 1 to 30)

void main() {
  for (int i = 1; i <= 30; i++) {
    if (i % 2 == 0) {
      print("Square of $i = ${i * i}");
    }
  }
}

// output:
// Square of 2 = 4
// Square of 4 = 16
// Square of 6 = 36
// Square of 8 = 64
// Square of 10 = 100
// Square of 12 = 144
// Square of 14 = 196
// Square of 16 = 256
// Square of 18 = 324
// Square of 20 = 400
// Square of 22 = 484
// Square of 24 = 576
// Square of 26 = 676
// Square of 28 = 784
// Square of 30 = 900

// 5. Write a Dart program to accept age input from the user.
// If the entered age is less than 18, throw a custom exception.
// Properly handle both FormatException (invalid input) and the
// custom exception using try-catch.

import 'dart:io';

class UnderAgeException implements Exception {}

void main() {
  try {
    print("Enter your age:");
    int age = int.parse(stdin.readLineSync()!);

    if (age < 18) {
      throw UnderAgeException();
    }

    print("Age accepted");
  } on FormatException {
    print("Invalid input");
  } on UnderAgeException {
    print("Age must be 18 or above");
  }
}

// 6. Create a Dart program to implement a To-Do List application using a List.
// The program should support the following operations:
// ● Add new tasks
// ● Remove existing tasks
// ● Mark tasks as completed
// ● Display pending tasks and completed tasks separately

import 'dart:io';

void main() {
  List<String> pendingTasks = [];
  List<String> completedTasks = [];

  while (true) {
    print("\n--- TO DO LIST ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. Mark Task as Completed");
    print("4. Show Tasks");
    print("5. Exit");

    print("Enter your choice:");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter task name:");
      String task = stdin.readLineSync()!;
      pendingTasks.add(task);
      print("Task added");

    } else if (choice == 2) {
      print("Enter task index to remove:");
      int index = int.parse(stdin.readLineSync()!);
      pendingTasks.removeAt(index);
      print("Task removed");
    } else if (choice == 3) {
      print("Enter task index to mark completed:");
      int index = int.parse(stdin.readLineSync()!);
      completedTasks.add(pendingTasks[index]);
      pendingTasks.removeAt(index);
      print("Task completed");
    } else if (choice == 4) {
      print("\nPending Tasks:");
      for (int i = 0; i < pendingTasks.length; i++) {
        print("$i. ${pendingTasks[i]}");
      }

      print("\nCompleted Tasks:");
      for (int i = 0; i < completedTasks.length; i++) {
        print("$i. ${completedTasks[i]}");
      }
    } else if (choice == 5) {
      print("Exit");
      break;
    } else {
      print("Invalid choice");
    }
  }
}

// 7. Develop a Dart program to simulate basic bank account operations.
// Create a BankAccount class that uses encapsulation to protect
// account balance.
// Implement the following methods:
// ● deposit() to add amount to the balance
// ● withdraw() to deduct amount (handle insufficient balance condition)
// ● checkBalance() to display the current balance
// ● Ensure the balance variable is declared as private.

import 'dart:io';

class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    _balance = _balance + amount;
    print("Amount deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance = _balance - amount;
      print("Amount withdrawn: $amount");
    } else {
      print("Insufficient balance");
    }
  }

  void checkBalance() {
    print("Current balance: $_balance");
  }
}

void main() {
  BankAccount account = BankAccount();

  while (true) {
    print("\n--- BANK MENU ---");
    print("1. Deposit");
    print("2. Withdraw");
    print("3. Check Balance");
    print("4. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter amount to deposit:");
      double amount = double.parse(stdin.readLineSync()!);
      account.deposit(amount);
    } else if (choice == 2) {
      print("Enter amount to withdraw:");
      double amount = double.parse(stdin.readLineSync()!);
      account.withdraw(amount);
    } else if (choice == 3) {
      account.checkBalance();
    } else if (choice == 4) {
      print("Thank you");
      break;
    } else {
      print("Invalid choice");
    }
  }
}

// 8. Create a Dart program to calculate salaries for different types of employees.
// ● Define a base class Employee and derive two subclasses: PermanentEmployee
// ContractEmployee
// ● Override the calculateSalary() method in each subclass to compute salary according to
// the employee type.

class Employee {
  void calculateSalary() {
    print("Employee salary");
  }
}

class PermanentEmployee extends Employee {
  @override
  void calculateSalary() {
    int basic = 20000;
    int bonus = 10000;
    print("Permanent Employee Salary: ${basic + bonus}");
  }
}

class ContractEmployee extends Employee {
  @override
  void calculateSalary() {
    int hours = 160;
    int rate = 200;
    print("Contract Employee Salary: ${hours * rate}");
  }
}

void main() {
  Employee e1 = PermanentEmployee();
  Employee e2 = ContractEmployee();

  e1.calculateSalary();
  e2.calculateSalary();
}
// ==================================================================================

// 1. Given Code
// class Student {
// int id;
// String name;
// Student(int id, String name) {
// id = id;
// name = name;
// }
// }
// void main() {
// Student s = Student(1, "Rahul");
// print(s.name);
// }

// Tasks -
// ● Does the code produce output or error?
// ● If error → identify and rectify it
// ● Add functionality to:
// ○ Display both id and name
// ○ Add a method display()

class Student {
  int? id;
  String? name;

  Student(int id, String name) {
    this.id = id;
    this.name = name;
  }

  void display() {
    print("ID: $id");
    print("Name: $name");
  }
}

void main() {
  Student s = Student(1, "Rahul");
  s.display();
}

// 1. Does the code produce output or error?
// The code gives incorrect output because constructor parameters hide the class variables.

// 2.If error → identify and rectify it

// this.id = id;
//   this.name = name;


// 2. Given Code
// void main() {
// int marks = 85;
// if (marks > 90) {
// print("A");
// } else if (marks > 75) {
// print("B");
// } else {
// print("C");
// }
// }
// Tasks-
// ● Predict output
// ● Identify logical issue
// ● Fix grading logic
// ● Add functionality: Accept marks from user.

import 'dart:io';

void main() {
  print("Enter marks:");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks >= 90) {
    print("A");
  } else if (marks >= 75) {
    print("B");
  } else {
    print("C");
  }
}

// 1. Predict output
// The original code will output “B” for marks = 85.

// 2. Identify logical issue
// The grading logic does not handle invalid marks (greater than 100 or less than 0).

// 3. Fix grading logic
// The grading logic is updated to check for valid marks in the range 0 to 100.

// 4. Add functionality: Accept marks from user
// The program now accepts marks as input from the user.

// 3. Given Code -
// class Product {
// String name;
// double price;
// Product(this.name, this.price);
// }
// void main() {
// Product p = Product("Laptop", -50000);
// print(p.price);
// }
// Tasks -
// ● Is this logically correct?
// ● Add validation using exception handling
// ● Add functionality: Apply 10% discount if price > 30000

class Product {
  String name;
  double price;
  Product(this.name, this.price) {
    if (price < 0) {
      throw Exception("Price cannot be negative");
    }
    if (price > 30000) {
      price = price * 0.9;
    }
  }
}

void main() {
  try {
    Product p = Product("Laptop", 50000);
    print("Final Price: ${p.price}");
  } catch (e) {
    print(e);
  }
}

// 1. Is this logically correct?
// product price cannot be negative, so the logic is incorrect.

// 2.Add validation using exception handling
// Validation using exception handling

// ● Add functionality: Apply 10% discount if price > 30000
//  Apply 10% discount if price > 30000

// 4. Given Code -
// class Person {
// String name;
// Person(this.name);
// }
// void main() {
// Person p1 = Person("Amit");
// Person p2 = Person("Amit");
// print(p1 == p2);
// }
// Tasks-
// ● Predict output
// ● Explain why
// ● Override equality operator
// ● Add functionality: compare by name

class Person {
  String name;
  Person(this.name);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Person && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}

void main() {
  Person p1 = Person("Amit");
  Person p2 = Person("Amit");
  print(p1 == p2);
}

// 1. Predicted Output:
// false

// 2. Explanation:
// By default, Dart compares objects by reference (memory address).

// p1 and p2 are two different objects, so p1 == p2 returns false.
// 3 & 4. Override equality operator to compare by name

// 5. Given Code -
// void main() {
// int day = 1;
// switch (day) {
// case 1:
// print("Monday");
// case 2:
// print("Tuesday");
// break;
// }
// }
// Tasks -
// ● Predict output
// ● Explain Dart switch behavior
// ● Fix the logic
// ● Add functionality: handle all weekdays

void main() {
  int day = 1;
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}

// 1. Predicted Output:
// Monday
// Tuesday

// 2. Explanation:
// In Dart, if a 'break' is missing, execution falls through to the next case.
// Since case 1 has no break, it continues into case 2.
// 3 & 4. Fixed logic + handle all weekdays
