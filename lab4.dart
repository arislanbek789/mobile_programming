// Arislanbek Kalbaev
// 220081
// LAB 4

// Classes
// 1.2
class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);
}

void main() {
  Book myBook = Book("The Great Gatsby", "F. Scott Fitzgerald", 180);

  print("Title: ${myBook.title}");
  print("Author: ${myBook.author}");
  print("Number of Pages: ${myBook.numberOfPages}");
}

//1.3
class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calculateAverageGrade() {
    if (grades.isEmpty) {
      return 0.0;
    }
    double sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
}

void main() {
  Student student = Student("Alice", 20, [85.5, 90.0, 78.5, 92.0]);

  print("Student: ${student.name}");
  print("Age: ${student.age}");
  print("Average Grade: ${student.calculateAverageGrade()}");
}

// 1.4
class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Deposit amount must be greater than zero.");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be greater than zero.");
    } else if (amount > balance) {
      print("Error: Insufficient funds. Current balance: \$${balance.toStringAsFixed(2)}");
    } else {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
    }
  }
}

void main() {
  BankAccount account = BankAccount("123456789", "Alice Johnson", 500.0);

  print("Account Holder: ${account.accountHolderName}");
  print("Account Number: ${account.accountNumber}");
  print("Initial Balance: \$${account.balance.toStringAsFixed(2)}\n");

  account.deposit(200.0);
  account.deposit(-50.0);

  account.withdraw(100.0);
  account.withdraw(700.0);
  account.withdraw(-20.0);

  print("\nFinal Balance: \$${account.balance.toStringAsFixed(2)}");
}

// 1.5
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double get area => width * height;

  double get perimeter => 2 * (width + height);
}

void main() {
  Rectangle rect = Rectangle(10.0, 5.0);

  print("Width: ${rect.width}");
  print("Height: ${rect.height}");
  print("Area: ${rect.area}");
  print("Perimeter: ${rect.perimeter}");
}


// Task 2
// 2.2
enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled
}

void main() {
  OrderStatus status = OrderStatus.processing;

  print("Current order status: $status");

  print("Order status (clean): ${status.name}");
}

// 2.3
enum TrafficLight {
  red,
  yellow,
  green,
}

String getAction(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return "Stop";
    case TrafficLight.yellow:
      return "Caution";
    case TrafficLight.green:
      return "Go";
  }
}

void main() {
  for (var light in TrafficLight.values) {
    print("Light: ${light.name} → Action: ${getAction(light)}");
  }
}


// 2.4
enum UserRole { admin, editor, guest }

class User {
  String name;
  UserRole role;

  User(this.name, this.role);

  bool hasEditPermission() {
    return role == UserRole.admin || role == UserRole.editor;
  }
}

void main() {
  User user1 = User("Alice", UserRole.admin);
  User user2 = User("Bob", UserRole.editor);
  User user3 = User("Charlie", UserRole.guest);

  print("${user1.name} (admin) → Edit Permission: ${user1.hasEditPermission()}");
  print("${user2.name} (editor) → Edit Permission: ${user2.hasEditPermission()}");
  print("${user3.name} (guest) → Edit Permission: ${user3.hasEditPermission()}");
}

// 2.5
enum TrafficLight {
  red,
  yellow,
  green;

  int get durationInSeconds {
    switch (this) {
      case TrafficLight.red:
        return 30;
      case TrafficLight.yellow:
        return 5;
      case TrafficLight.green:
        return 45;
    }
  }
}

void main() {
  for (var light in TrafficLight.values) {
    print("Light: ${light.name}, Duration: ${light.durationInSeconds} seconds");
  }
}


// Task 3
// 3.2
class Animal {
  void makeSound() {
    print("Some generic animal sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  Dog dog = Dog();
  Cat cat = Cat();

  dog.makeSound();
  cat.makeSound();
}

// 3.3
class Shape {
  String color;

  Shape(this.color);
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius) : super(color);
}

class Square extends Shape {
  double sideLength;

  Square(String color, this.sideLength) : super(color);
}

void main() {
  Circle circle = Circle("Red", 5.0);
  Square square = Square("Blue", 4.0);

  print("Circle → Color: ${circle.color}, Radius: ${circle.radius}");
  print("Square → Color: ${square.color}, Side Length: ${square.sideLength}");
}

// 3.4
class Employee {
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculateSalary() {
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

void main() {
  Employee emp = Employee("Alice", 3000);
  Manager mgr = Manager("Bob", 5000, 2000);

  print("${emp.name}'s Salary: ${emp.calculateSalary()}");
  print("${mgr.name}'s Salary: ${mgr.calculateSalary()}");
}


// 3.5
class LibraryItem {
  String title;
  int id;

  LibraryItem(this.title, this.id);

  String getDetails() {
    return "Title: $title, ID: $id";
  }
}

class Book extends LibraryItem {
  String author;

  Book(String title, int id, this.author) : super(title, id);

  @override
  String getDetails() {
    return "Book → Title: $title, ID: $id, Author: $author";
  }
}

class DVD extends LibraryItem {
  String director;

  DVD(String title, int id, this.director) : super(title, id);

  @override
  String getDetails() {
    return "DVD → Title: $title, ID: $id, Director: $director";
  }
}

void main() {
  Book book = Book("1984", 1, "George Orwell");
  DVD dvd = DVD("Inception", 2, "Christopher Nolan");

  print(book.getDetails());
  print(dvd.getDetails());
}


// Task 4
// 4.2
mixin Flyer {
  void fly() {
    print("Taking off!");
  }
}

class Bird with Flyer {}

class Plane with Flyer {}

void main() {
  Bird bird = Bird();
  Plane plane = Plane();

  bird.fly();
  plane.fly();
}

// 4.3
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class DataService with Logger {
  void fetchData() {
    log("Fetching data");
  }
}

void main() {
  DataService service = DataService();
  service.fetchData();
}

// 4.4
mixin Validator {
  bool isEmailValid(String email) {
    return email.contains("@") && email.contains(".");
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  void validateUser(String email, String password) {
    print("Email: $email → ${isEmailValid(email) ? "Valid" : "Invalid"}");
    print("Password: ${"*".padRight(password.length, "*")} → ${isPasswordStrong(password) ? "Strong" : "Weak"}");
  }
}

void main() {
  UserSignup signup = UserSignup();

  signup.validateUser("test@example.com", "mypassword123");
  signup.validateUser("invalidemail", "12345");
}

// 4.5
mixin Performer {
  void perform() {
    print("Performing on stage!");
  }
}

mixin Musician {
  void playInstrument() {
    print("Playing an instrument!");
  }
}

class Artist {
  String name;
  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

void main() {
  Dancer dancer = Dancer("Anna");
  Guitarist guitarist = Guitarist("John");

  print("${dancer.name}:");
  dancer.perform();

  print("\n${guitarist.name}:");
  guitarist.perform();
  guitarist.playInstrument();
}

