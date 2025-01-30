//! 27/01/25

//! Classes in Dart
//?--------------------------------------------------------------------------------------------------------------

//! Example 1: Simple Classes
//* classes are like blueprints of information there are blueprints of logic and you basically create this logic in one place and  reuse it in many different other place this blue print itself like the main logic it is called classes and copies of these logic  blueprints are called instances so you have always an one class that does something and then you can have  many instances of that class. if anyone make changes  in instances whoever basically took that the copy of the blueprint makes changes to theor copy it won't be reflected on your copy and vice-versa. if you change your blueprint and then that instance copy won't be affected only the next copy that you make of your blueprint then will have you chnages in it again it's the same thing is true in classes.
//* However sometimes you can create classes in  dart and many other programming language where your chnages will actually be available immediately to the instances.
// void main(List<String> args) {
//   final person1 = Person(name: "Max", age: 30);
//   print(person1.name);
// }

// every class needs a constructor where it has properties and methods.
// Constructor is a special function usually with name of the class itself and whose job is to create an instance of the class.

// class Person {
//   final String name;
//   final int age;
//   Person({
//    required this.name,
//     required  this.age}) {
//       print('Person constructor');
//     }

// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 2: Constructors
//* Constructors are special functions that are called when you create a new instance of a class. They are used to initialize the instance and they can have parameters to customize the initialization process.

// void main(List<String> args) {

//! const Constructor
// final person1 = Person( "Max", 30);
// print(person1.name);

// ------------------------------------------

//! Named Constructor (.foo)
// final person2 = Person.foo('Manu', 31);
// print(person2.name);

// ------------------------------------------

//! Another named constructor
// final person3 = Person.bar(32);
// print(person3.name); // Max

// ------------------------------------------

//! Constructor with optional parameters
//   final person4 = Person.other(null, null);
//   print("other constructer ==> ${person4.name}, ${person4.age}"); // Baz
// }

// class Person {
//   final String name;
//   final int age;

//! const Constructor
// const Person(
//    this.name,
//    this.age,
// );

//! Named Constructor (.foo)
//*you can create constructor like this: Person.foo() : name = 'Max', age = 30;
// const Person.foo(this.name, this.age);

//!  Another named constructor
// Here we are using the same constructor name but with different parameters and providing name = "Max" as default value.
// const Person.bar(this.age) : name = 'Max';

//! Constructor with optional parameters
//    Person.other(String? name, int? age) : name = name ?? 'Baz', age = age ?? 30;

// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 3: Inheritance
//* Inheritance is a mechanism in which a new class is derived from an existing class. The derived class inherits all the features from the base class and can have additional features of its own.
// Functions and properties of the parent class can be accessed in the child class.

// void main(List<String> args) {

//! Example1:
// final car = Car(4);
// print(car);

//! Example2:
//   final car = Car();
//   print(car);

//   final bike = Bike();
//   print(bike);

// }

//Here toSring() method print Instance of 'Car' or Instance of "Bike" because when we create an instance of a class, Dart automatically calls the toString() method of that class. and because of its instance of Car or Bike, it prints Instance of 'Car' or Instance of "Bike".
// class Vehicle {
//   final int wheels;
//   const Vehicle(this.wheels);

//   @override
//   String toString() {
//     if (runtimeType == Vehicle) {
//        return 'Vehicle with wheels: $wheels';
//     }
//     return super.toString();
//   }
// }

// class Car extends Vehicle {

//We can call the parent class constructor in different ways:

//!Example1:
// const Car(super.wheels);

//!Example2:
// const Car() : super(4); // calling the parent class constructor
// }

// class Bike extends Vehicle {
//   const Bike() : super(2);
// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 4: Getters

// void main(List<String> args) {

//! Without using Getters
// final person = Person(firstName: 'Max', lastName: 'Smith');

//once calculated only does not calculate again and again.
// print(person.fullName); // Max Smith
// print(person.fullName); // Max Smith

//! Using Getters
// final person2 = Person2(firstName: 'Max', lastName: 'Smith');

//calculated every time when we call this getter
// print(person2.fullName); // Max Smith
// print(person2.fullName); // Max Smith
// }

//! Without using Getters

// class Person {
//   final String firstName;
//   final String lastName;

//   final String fullName;

//   Person({
//     required this.firstName,
//     required this.lastName,
//   }): fullName = '$firstName $lastName';

// }

//?----------------------------------

//! Using Getters
// class Person2 {
//   final String firstName;
//   final String lastName;

//   String get fullName{
//     print('Getter called');
//     return "$firstName $lastName";
//   }

//   const Person2({
//     required this.firstName,
//     required this.lastName,
//   });

// }

//!NOTE: Whats the difference between using a getter and using a list initializer constructor?

// Without using a getter: Here, Our person class has a property fullName that is ccalculated upon constructing an instance of person, since firstName and lastName are final properties they could never change since this is also a constant Constructor. So, once we create an instance of person, that instance could not change internally even. So, the fullName property is calculated upon creating an instance of person which is actually very good because this firstName and lastName empty change fullName  cant be changed either or should not be changed either so .
// The diiference is that fullName is calculated every  time when we call this fullName getter , every time this fullName is basically writtten like this person.fullName, this getter again call this getter and calculate this fullName again and again.

//  If the calculation is expensive, you might want to use a list initializer constructor instead of a getter. In this case, the fullName property is calculated only once when the instance is created.

// The difference is that a getter is a method that is called when you access a property of an object, while a list initializer constructor is called when you create an object.

//?--------------------------------------------------------------------------------------------------------------

//! Example 5: Methods
//* Methods are functions that are defined inside a class. They can be used to perform operations on the data stored in the class.

// void main(List<String> args) {

//   final car = Car();
//   car.drive(speed: 20); // Car Driving...
//   car.speed = 40; // setting the speed
//   car.drive(speed: car.speed); // Car Driving...
//   car.stop(); // Car Stopped!
//   print(car.speed); // 0

// }

//Here the methodss are belonging to the an instance meaning that you have to make an instance of the class to call the method.
// Those functions which are no static and accessed by the instance of the class are called methods.
// here we have no control over the speed property of the car class because it is public and can be accessed from outside the class. We can set the speed to any value we want, even a negative value, which doesn't make sense for a car. To fix this, we can make the speed property private and provide a setter method to set the speed.

// class Car {

//   int speed = 0;

//   void drive({required int speed}) {
//     print('Car Driving at $speed km/h...');
//   }

//   void stop() {
//     speed = 0;
//     print('Car Stopped!');
//   }
// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 6: Setters Methods
//* Setters are used to set the value of a property in a class. They are defined using the set keyword followed by the property name.

// void main(List<String> args) {
// final car = Car();
// car.speed = 40;
// print(car.speed); // 40
// car.drive( speed:  40); // Car Driving at 40 km/h...
// car.speed = -10; // Exception: Speed cannot be negative
//   car.speed = 60;
// }

//Here drive method cant directly access the speed property of the car class because it is private. So, we have to use the setter method to set the speed property. The setter method is called when we set the value of the speed property.
// hERE we are following encapsulation principle.
// Validation :
//The speed setter method includes validation to prevent negative speed values. If the drive method were to assign speed directly to _speed, it would bypass the validation logic.

// class Car {
//   int _speed = 0;

//   int get speed => _speed;

//   set speed(int value) {
//     print("Setter called");
//     if (value < 0) {
//       throw Exception('Speed cannot be negative');
//     } else {
//       _speed = value;
//     }
//   }

//   void drive({required int speed}) {

//     print("Drive called");
//     this.speed = speed;
//     print('Car Driving at $_speed km/h...');
//   }

//   void stop() {
//     speed = 0;
//     print('Car Stopped!');
//   }
// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 7: Static Methods and Static Properties
//* Static methods and properties are associated with the class itself, rather than with any particular instance of the class. They can be accessed using the class name without creating an instance of the class.
//changes made to the static property or method will be reflected in all instances of the class.
// because static methods scope is not based on the instance of the class, it is based on the class itself.
// void main(List<String> args) {
//   print(Car.carInstantiated);
//     Car(name: "Car1"); // creating an instance of the car class
//   print(Car.carInstantiated);
//   Car(name: "Car2");
//   print(Car.carInstantiated);
// }

// Here we a static property which create a once per class and if you create thousand uses of the car this _carInstantiated will be the same for all of them. we are able to access this property.
// Then  we are creating getter out of it as you can see in here so that the outside world can read this property. and we indicate world that hey dont mess with this variable because it is private and we are not going to allow you to change it.

// class Car {
//   static int _carInstantiated = 0;

// static int get carInstantiated => _carInstantiated;
// static void _incrementCarInstantiated() => _carInstantiated++;

// String name;
// Car({this.name = 'Car'}) {
//   _incrementCarInstantiated();
//   print('Car Instantiated: $_carInstantiated');
//   }
// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 8: Factory Constructors
// factory constructors create instances  of their sunclasses a lot of people are a little bit confused about factory constructors and what differences between those and normal constructors: a normal constructor of a class can only  create instance of that class. However, a factory constructor can create instance of subclasses which is its main power.

// void main(List<String> args) {
//! Creating instance of the Car class using the constructor
  // if you want to go ahead and ask a vehicle to create a car for you, you can do that with a factory constructor.  Here we are creating an instance of the Car class directly using the Car constructor
  // final car = Car(); 
  // print(car);

//! Creating instance of the Vehicle class using the factory constructor
//   final factoryCar = Vehicle.car();
//   print(factoryCar);

// print('---------------------------------');

//   final factoryTruck = Vehicle.create('truck');
//   print(factoryTruck);

// }

// class Vehicle {
//   const Vehicle();


// Single factory constructor
// factory Vehicle.car(){
//   print('Car created from Vehicle');
//   return Car();
// }


//Here, we have a factory constructor that creates instances of the Car and Truck classes. The factory constructor takes a type parameter that specifies the type of vehicle to create. If the type is 'car', it returns an instance of the Car class. If the type is 'truck', it returns an instance of the Truck class. Otherwise, it returns an instance of the Vehicle class.


//  factory Vehicle.create(String type) {
//     switch (type) {
//       case 'truck':
//         print('Truck created');
//         return Truck();
//       default:
//         print('Vehicle created');
//         return Vehicle();
//     }
//   }


// }

// class Car extends Vehicle {
//   const Car();
// }

// class Truck extends Vehicle {
//   const Truck();
// }
