# Basic Level Questions

1) Class and Object

Create a class Person with properties name and age. Add a method display() to print the person's details. Create an object of this class and call the display() method.

Constructors

Create a class Book with properties title and author. Add a parameterized constructor to initialize these properties. Create an object of this class and print the book details.

Named Constructors

Create a class Student with properties name and grade. Add a named constructor Student.fromJson that takes a Map<String, dynamic> and initializes the properties. Create an object using this constructor.

Getter and Setter

Create a class Rectangle with private properties _width and_height. Add getters and setters for these properties. Ensure the width and height cannot be negative.

Static Members

Create a class MathUtils with a static method factorial(int n) that calculates the factorial of a number. Call this method without creating an instance of the class.

<!-- !--------------------------------------------------------------------------------------------------------------------------------------------------------------->

## Intermediate Level Questions

Inheritance

Create a class Animal with a method speak(). Create two subclasses Dog and Cat that override the speak() method to print "Woof" and "Meow" respectively. Create objects of these subclasses and call the speak() method.

Method Overriding

Create a class Shape with an abstract method draw(). Create two subclasses Circle and Square that override the draw() method to print "Drawing Circle" and "Drawing Square" respectively.

Polymorphism

Create a list of Shape objects (from the above question) and call the draw() method on each object. Observe how polymorphism works.

Mixins

Create a mixin Logger with a method log(String message). Use this mixin in a class App and call the log() method.

Interfaces

Create an interface Drivable with a method drive(). Implement this interface in a class Car and call the drive() method.

<!-- !--------------------------------------------------------------------------------------------------------------------------------------------------------------->

## Advanced Level Questions

Factory Constructors

Create a class DatabaseConnection with a factory constructor that ensures only one instance of the class is created (Singleton pattern).

Generics

<!-- Create a generic class Box<T> that can store any type of value. Add a method getValue() to return the stored value. -->

Exception Handling

Create a custom exception InvalidAgeException. Write a function validateAge(int age) that throws this exception if the age is less than 0 or greater than 120.

Encapsulation

Create a class BankAccount with a private property _balance. Add methods deposit() and withdraw() to modify the balance. Ensure the balance cannot go below 0.

Complex Inheritance

Create a class Vehicle with properties make and model. Create two subclasses Car and Bike. Add additional properties and methods specific to each subclass. Demonstrate polymorphism by creating a list of Vehicle objects and calling a common method.

<!-- !--------------------------------------------------------------------------------------------------------------------------------------------------------------->

Challenge Questions

Multiple Inheritance with Mixins

Create two mixins Flyable and Swimmable with methods fly() and swim() respectively. Use these mixins in a class Duck that can both fly and swim.

1Complex Generics

Create a generic class Pair<T, U> that can store two values of different types. Add a method swap() that swaps the two values.

2Abstract Classes and Interfaces

Create an abstract class Shape with an abstract method area(). Implement this class in two subclasses Circle and Rectangle. Also, create an interface Drawable with a method draw(). Implement this interface in the Shape subclasses.

3Singleton Pattern

Implement a Singleton pattern using a factory constructor in Dart. Ensure only one instance of the class can be created.

4Complex Polymorphism

Create a class hierarchy for a zoo management system. Include classes like Animal, Mammal, Bird, Lion, Eagle, etc. Demonstrate polymorphism by creating a list of Animal objects and calling a common method like makeSound().
