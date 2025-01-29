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
