// Arislanbek Kalbaev 220081
// Tuesday 14.00

// Main Function
// Q1
public class CommandLineArgs {
    public static void main(String[] args) {
        // args contains the command-line arguments
        int numArgs = args.length;

        System.out.println("Number of arguments: " + numArgs);

        // Print each argument on a new line
        for (int i = 0; i < numArgs; i++) {
            System.out.println("Argument " + (i + 1) + ": " + args[i]);
        }
    }
}

// Q2
// Main method is like the starting point of a Java program. It tells Java Virtual Machine where to start executing the program. It is static so that it can be called without creating an instance of the class, and it takes an array of Strings as arguments to allow passing command-line inputs to the program.

// Q3
// Return type: In Java, it's void and uses System.exit() if needed and in C++ it's int and return 0 is used to indicate successful completion.
// Parameters: In Java, it's String[] args and in C++ it's int argc, char* argv[].
// Access Modifiers: In Java, it's public static and in C++ it's typically omitted or can be specified with different access specifiers.

// Q4
// In C/C++, the integer returned by main is the program’s exit code (0 = success, non-zero = error) while in Java, since main returns void, you use System.exit(status) to provide a non-zero exit code to the OS.

// Variables
// Q1
public class SwapNumbers {
    public static void main(String[] args) {
        int a = 10;
        int b = 20;

        System.out.println("Before swap: a = " + a + ", b = " + b);

        // Method 1: Using addition and subtraction
        a = a + b;  // a = 30
        b = a - b;  // b = 10
        a = a - b;  // a = 20

        System.out.println("After swap (method 1): a = " + a + ", b = " + b);

        // Reset values
        a = 10;
        b = 20;

        // Method 2: Using XOR
        a = a ^ b;
        b = a ^ b;
        a = a ^ b;

        System.out.println("After swap (method 2): a = " + a + ", b = " + b);
    }
}

// Q2
// Primitives are actual values, stored directly in the stack while references store the address (pointer) to an object in the heap, while the reference variable itself is on the stack.

// Q3
// In short, Local scope lives temporarily inside a method/block. Class-level scope belongs to an object. Static scope belongs to the class, shared across all objects.

// Q4
// C++ and Java are statically typed and types are fixed and checked before execution. Dynamic typing, on the other hand, is flexible, but errors appear at runtime.

// Control Flow
// Q1
public class FibonacciForLoop {
    public static void main(String[] args) {
        int n = 10;  // number of terms
        int first = 0;
        int second = 1;

        System.out.println("First " + n + " Fibonacci numbers:");

        for (int i = 1; i <= n; i++) {
            System.out.print(first + " ");

            // calculate next term
            int next = first + second;
            first = second;
            second = next;
        }
    }
}


// Q2
// While loop checks the condition before executing the loop body, so it may not execute at all if the condition is false initially. Do-while loop executes the loop body first and then checks the condition, ensuring that the loop body runs at least once.

// Q3
// A control flow statement used to choose one block of code from many options. 
// In summary: case labels possible values. break prevents fall-through, exits the switch. default handles unmatched cases (just like else).

// Q4
// Java’s logical AND (&&) and logical OR (||) operators don’t always evaluate both operands.
// For && (AND):
// If the first condition is false, Java skips the second condition (since false && anything is always false).
// For || (OR):
// If the first condition is true, Java skips the second condition (since true || anything is always true).

// Functions / Methods
// Q1
public class PalindromeCheck {
    // Static method to check palindrome
    public static boolean isPalindrome(String str) {
        // Remove spaces and make lowercase for uniform comparison
        str = str.replaceAll("\\s+", "").toLowerCase();

        int left = 0;
        int right = str.length() - 1;

        while (left < right) {
            if (str.charAt(left) != str.charAt(right)) {
                return false; // mismatch found
            }
            left++;
            right--;
        }

        return true; // all matched
    }

    public static void main(String[] args) {
        System.out.println(isPalindrome("madam"));      // true
        System.out.println(isPalindrome("racecar"));    // true
        System.out.println(isPalindrome("hello"));      // false
        System.out.println(isPalindrome("A man a plan a canal Panama")); // true
    }
}

// Q2
// C++ offers value, pointer, and reference passing. Java always uses pass-by-value → primitives are copied, object references are copied (so the object can be modified, but the caller’s reference cannot be changed).

// Q3
// Overloading means having multiple functions/methods with the same name but different parameter lists in the same scope/class. C++ and Java both allow overloading when the parameter list is different. “Different” means: Number of parameters. Types of parameters Order of parameters

// Q4
// Recursion is a programming technique where a function calls itself directly or indirectly to solve a problem. Without a base case, recursion would never stop and leads to infinite recursion and causes stack overflow error.

// Comments
// Q1
// //single line
/* multi-line */

// Q2
// Code tells what is happening, but comments explain why it’s happening, also important for collaboration between team members so that each can read comment and understand.

// Q3
// Documentation comment systems like Javadoc (Java) and Doxygen (C++) exist to make code easier to understand, share, and maintain by automatically generating professional documentation from special comments written in the source code.

// Q4
// The phrase means that well-written code should be understandable without relying heavily on comments. Comments are still necessary when explaining complex logic, assumptions, or decisions that aren't immediately clear from the code itself.

// Classes
// Q1
public class BankAccount {
    // Private field to store balance
    private double balance;

    // Constructor to set initial balance
    public BankAccount(double initialBalance) {
        if (initialBalance >= 0) {
            this.balance = initialBalance;
        } else {
            this.balance = 0; // safeguard against negative initial balance
            System.out.println("Initial balance cannot be negative. Set to 0.");
        }
    }

    // Method to deposit money into the account
    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
        } else {
            System.out.println("Deposit amount must be positive.");
        }
    }

    // Getter method to check balance
    public double getBalance() {
        return balance;
    }

    // Testing the class
    public static void main(String[] args) {
        BankAccount account = new BankAccount(100.0); // start with $100
        System.out.println("Initial Balance: $" + account.getBalance());

        account.deposit(50.0);
        System.out.println("After Deposit: $" + account.getBalance());

        account.deposit(-20.0); // invalid deposit
        System.out.println("Final Balance: $" + account.getBalance());
    }
}

// Q2
// In short: a class defines the structure and behavior and an object is a specific instance of that class, with its own values stored in memory.

// Q3
// public → accessible everywhere; private → accessible only inside the class; protected → accessible inside the class and its subclasses

// Q4
// A constructor is a special method in a class that is called automatically when an object is created. A default constructor is a constructor that takes no parameters and simply creates an object, often with default values.

// Enums
// Q1
public class SeasonActivity {

    // Define enum with four values
    public enum Season {
        SPRING, SUMMER, AUTUMN, WINTER
    }

    // Method that recommends an activity based on the season
    public static String recommendActivity(Season season) {
        switch (season) {
            case SPRING:
                return "Go for a hike and enjoy the blooming flowers.";
            case SUMMER:
                return "Go swimming or have a picnic at the beach.";
            case AUTUMN:
                return "Go leaf-peeping or visit a pumpkin patch.";
            case WINTER:
                return "Go skiing or enjoy hot chocolate by the fireplace.";
            default:
                return "Unknown season.";
        }
    }

    // Main method to test
    public static void main(String[] args) {
        Season current = Season.AUTUMN;
        System.out.println("Recommended activity: " + recommendActivity(current));
    }
}

// Q2
// With enums, a variable can only take one of the predefined values. If you use int or String, you could accidentally assign an invalid value.

// Q3
// Enums prevent invalid values and catch mistakes at compile time, rather than at runtime. Also, Enums prevent invalid values and catch mistakes at compile time, rather than at runtime.

// Q4
// Java enums are more powerful than C++ enums. Java enums can have fields, methods, and constructors, while C++ enums are more limited. Java enums are type-safe, meaning you cannot assign an invalid value, while C++ enums can be implicitly converted to integers, which can lead to errors.

// Inheritance
// Q1
// Base class
class Vehicle {
    public void startEngine() {
        System.out.println("Engine started.");
    }
}

// Derived class
class Car extends Vehicle {
    public void drive() {
        System.out.println("Car is driving.");
    }
}

// Test class
public class Main {
    public static void main(String[] args) {
        Car myCar = new Car();   // Create a Car object
        myCar.startEngine();     // Inherited from Vehicle
        myCar.drive();           // Car's own method
    }
}


// Q2
// Inheritance (is-a): A Dog is a Animal. Composition (has-a): A Car has an Engine.

// Q3
// Method overriding is when a subclass provides a specific implementation of a method that is already defined in its superclass. In C++, the 'virtual' keyword is used in the base class to allow a method to be overridden in derived classes, and the 'override' keyword in the derived class indicates that the method is intended to override a base class method. In Java, the '@Override' annotation serves a similar purpose, indicating that a method is overriding a method from its superclass, helping to catch errors at compile time if the method does not actually override anything.

// Q4
// The "Diamond Problem" occurs in multiple inheritance when a class inherits from two classes that both inherit from a common superclass, leading to ambiguity about which inherited properties or methods to use. C++ addresses this issue using virtual inheritance, which ensures that only one instance of the common base class is shared among the derived classes. Java avoids the diamond problem altogether by not allowing multiple inheritance of classes; instead, it uses interfaces, which can be implemented by multiple classes without the ambiguity associated with shared state or behavior.

// Mixins (in Flutter, Multiple Inheritance in C++) and Interfaces
// Q1
// Mixin interface with a default print() method
interface Printable {
    // Any implementing class must provide toString()
    String toString();

    // Default mixin method that uses toString()
    default void print() {
        System.out.println(toString());
    }
}

// Book class implements Printable
class Book implements Printable {
    private String title;
    private String author;

    public Book(String title, String author) {
        this.title = title;
        this.author = author;
    }

    // Override toString() to provide meaningful output
    @Override
    public String toString() {
        return "Book: \"" + title + "\" by " + author;
    }
}

// Test class
public class Main {
    public static void main(String[] args) {
        Book myBook = new Book("1984", "George Orwell");
        myBook.print();  // Gains print() functionality from the mixin
    }
}

// Q2
// They allow classes to share functionality without being in a strict inheritance relationship, promoting composition over inheritance and enabling more flexible code reuse.

// Q3
// Java’s 'default' methods in interfaces allow you to define methods with a default implementation that can be inherited by implementing classes. This enables code reuse similar to mixins, as multiple classes can implement the same interface and gain the default behavior without needing to inherit from a common superclass.

// Q4
// Inheritance creates a tight coupling between the base and derived classes, which can lead to rigidity and complexity in the class hierarchy. Composition offers more flexibility by allowing classes to combine behaviors from multiple sources without being tied to a single parent class. Mixin-like patterns, such as Java's default methods in interfaces, provide a way to share functionality across unrelated classes without the constraints of inheritance. However, they can lead to ambiguity if multiple interfaces provide conflicting default methods. Overall, composition and mixins promote better code reuse and maintainability compared to traditional inheritance.

// Polymorphism
// Q1
abstract class Shape {
    public abstract double getArea();
}

class Circle extends Shape {
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    @Override
    public double getArea() {
        return Math.PI * radius * radius;
    }
}

class Rectangle extends Shape {
    private double width;
    private double height;

    public Rectangle(double width, double height) {
        this.width = width;
        this.height = height;
    }

    @Override
    public double getArea() {
        return width * height;
    }
}

public class PolymorphismDemo {
    public static void main(String[] args) {
        Shape[] shapes = new Shape[3];
        shapes[0] = new Circle(5.0);
        shapes[1] = new Rectangle(4.0, 6.0);
        shapes[2] = new Circle(2.5);

        for (Shape shape : shapes) {
            System.out.println("Area: " + shape.getArea());
        }
    }
}

// Q2
// Compile-time polymorphism (method overloading) is resolved during compilation, while runtime polymorphism (method overriding) is resolved during execution.

// Q3
// An abstract class can have both abstract methods (without implementation) and concrete methods (with implementation), and it can have fields. An interface (or fully abstract class in C++) can only have abstract methods (until Java 8, which introduced default methods) and cannot have instance fields. Use an abstract class when you want to share code among closely related classes, and use an interface when you want to define a contract that can be implemented by any class, regardless of its position in the class hierarchy.

// Q4
// Both interfaces in Java and abstract classes with pure virtual functions in C++ define a contract that derived classes must fulfill. They allow different classes to be treated uniformly through a common type, enabling polymorphism. In Java, any class that implements an interface must provide implementations for all its methods, allowing objects of different classes to be used interchangeably if they implement the same interface. Similarly, in C++, any class that inherits from an abstract class with pure virtual functions must implement those functions, allowing polymorphic behavior through base class pointers or references.

// Async Operations
// Q1
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

public class AsyncSum {
    public static void main(String[] args) throws ExecutionException, InterruptedException {
        CompletableFuture<Long> future = CompletableFuture.supplyAsync(() -> {
            long sum = 0;
            for (long i = 1; i <= 1_000_000_000L; i++) {
                sum += i;
            }
            return sum;
        });

        System.out.println("Calculating...");

        long result = future.get();
        System.out.println("Sum = " + result);
    }
}

// Q2
// It aims to prevent blocking the main thread, allowing the application to remain responsive while waiting for I/O operations to complete.

// Q3
// Parallel execution means multiple tasks are running at the same time, typically on multiple CPU cores. Concurrent execution means multiple tasks are making progress over the same period of time, but not necessarily simultaneously; they may be interleaved on a single core.

// Q4
// A 'Future' or 'Promise' is a placeholder for a result that will be available at some point in the future, allowing asynchronous operations to be managed without blocking the main thread. In Java, 'Future' represents the result of an asynchronous computation, while 'CompletableFuture' extends this functionality by allowing chaining and combining multiple asynchronous tasks. In C++, 'std::future' serves a similar purpose, providing a way to access the result of an asynchronous operation initiated by 'std::async' or other concurrency mechanisms. Both constructs enable developers to write non-blocking code that can handle results once they are ready.

// Exceptions
// Q1
public class AgeValidator {
    public static void checkAge(int age) {
        if (age < 0) {
            throw new IllegalArgumentException("Age cannot be negative");
        }
        System.out.println("Valid age: " + age);
    }

    public static void main(String[] args) {
        try {
            checkAge(-5);
        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
        }

        try {
            checkAge(25);
        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}

// Q2
// 'try' block contains code that might throw an exception. 'catch' block handles the exception if one is thrown. 'finally' block contains code that always runs after the try/catch, regardless of whether an exception occurred or not. In C++, RAII ensures that resources are released when objects go out of scope, effectively achieving the same goal as 'finally' by using destructors to clean up resources.

// Q3
// Checked exceptions must be declared in a method's throws clause and handled by the caller, while unchecked exceptions (runtime exceptions) do not require such declarations and can be thrown without being caught. C++ does not have a built-in distinction between checked and unchecked exceptions; all exceptions in C++ are unchecked, meaning they can be thrown and caught without any compile-time checks.

// Q4
// Advantages: Exceptions separate error-handling code from regular code, making it cleaner and easier to read. They also provide a way to propagate errors up the call stack without cluttering the code with error checks. Disadvantages: Overuse of exceptions can lead to performance overhead and make the control flow harder to follow. Additionally, if not properly documented, it can be unclear which exceptions a method might throw, leading to unexpected runtime errors.

