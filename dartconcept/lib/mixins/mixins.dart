//! 31/01/25

//! Mixins in Dart
//?--------------------------------------------------------------------------------------------------------------

//! Example 1: Simple Mixin
//Mixins are like seperate entities that caan bring functionality to a existing classes and enumeration so, whereas your usual function you either create them at top level of your application or inside a class or inside a enumeration. mixins allow you to create functionallity or function variable  properties inside mixin and then bring the mixing into various enumeration or classes. and in that way you can basically have a kind of like simulated multiple inheritance in dart.
//Lets say you have two classes A and B and  class C wants to inherit the functionalities that are inside A and B.  Since, dart doe not have multiple inheritance, you can use mixins to achieve this. With Mixin you can inherit the functionalities of A and B in C.

// void main() {
// final Person person = Person();
// person.walk(speed: 10.0);
// person.jump(speed: 20.0);
// person.speed = 30.0;
// print(person.speed);
// }

// mixin HasSpeed{
// abstract double speed;

// }

// mixin CanJump on HasSpeed{

//   void jump({required double speed}){
//     print('$runtimeType is jumping at $speed');
//     this.speed = speed;
//   }

// }
// mixin CanWalk on HasSpeed{

//   void walk({required double speed}){
//     print('$runtimeType is walking at $speed');
//     this.speed = speed;
//   }

// }

//here, Person class is inheriting the functionalities of HasSpeed, CanJump and CanWalk. parent mixin HasSpeed comes first and then CanJump and CanWalk.
// class Person with HasSpeed, CanJump, CanWalk{
//   @override
//   double speed;
//   Person() : speed = 0.0;
// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 2: Mixin and Function parameter
// void main(List<String> args) {
//   final Person person = Person(firstName: 'John', lastName: 'Doe');
//   print(getFullName(person));
//   print(person.fullName);
// }

// String getFullName(HasFullName obj){
//   return obj.fullName;
// }
// mixin HasFirstName{
//   String get firstName;
// }

// mixin HasLastName{
//   String get lastName;
// }

// mixin HasFullName on HasFirstName, HasLastName{
//   String get fullName => '$firstName $lastName';
// }

// //here, first name and last name are variable but in the mixin class it is a getter. so in mixin it does not matter if you are passing a variable or a getter, what mixin  class needed is the value of the variable or getter.
// class Person with HasFirstName, HasLastName, HasFullName{
//   @override
//   final String  firstName;

//   @override
//   final String  lastName;

//   Person({required this.firstName, required this.lastName});
// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 3: Mixin with logic
// void main(List<String> args) {
//   final Cat cat = Cat(age: 10);
//   print(cat.age);
// cat.ageIncrement();
//   print(cat.age);
// }

// mixin HasAge{
//   abstract int age;
//   void ageIncrement() => age++;
// }

// class Cat with HasAge{
//   @override
//here we cant can not have const constructor and final int age  because  mixin class HasAge does not say this abstract int age is a get age  like this int get agel; because thenn it would not be able to increment the age. so, we have to leave it like abstract int age; its a property that i can read from and write  to, therefore cat that conforms to HasAge can not have a const constructor and final int age. simply because one of HasAge function which it has brought in using HasAge mixin is actualling modifying or mutating the this age instance internally therefore we cant have a const constructor and final int age.
//   int age;

//   Cat({required this.age});
// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 4: Mixin with Data Types or Mixin on class

// void main(List<String> args) {
// final bla = Has2Feet();
//here this bla.run  is not working because Has2Feet does not have run method.
// bla.run();

//   final person = Person();
//   person.run();
// }

// class Has2Feet{
//   const Has2Feet();
// }

//Subclass of Has2Feet
// class Person extends Has2Feet with CanRun{
//   const Person();
// }

//tehn we create another class that conforms to Has2Feet and bring in the CanRun mixin. so, now we can access the run method in this class.
// class HasNoFeet{
//   const HasNoFeet();
// }

//Here this will show error if we write like this class Fish extends HasNoFeet with CanRun{} it shows this error: CanRun' can't be mixed onto 'HasNoFeet' because 'HasNoFeet' doesn't implement 'Has2Feet'. because CanRun is only available on any type that conforms to Has2Feet. since, there is no Has2Feet in Fish class, we can not access the CanRun mixin.
// class Fish extends HasNoFeet with CanRun{
//   const Fish();
// }

//here we can access the run method because canRun implimenting on Has2Feet class and Has2Feet dont have run method,

//this syntax mixin CanRun on Has2Feet{} is saying that i am available on any type that conforms to Has2Feet if that type brings me in but i am not available on any other type even if they bring me  in as long as i mean. basically it is ssaying taht i am only available on any type that conforms it Has2Feet and thats all. so, if you have a class that conforms to Has2Feet and you bring in CanRun mixin then you can access the run method. to use rum method in Has2Feet class, we have to create a subclass of Has2Feet and then bring in the CanRun mixin.
// mixin CanRun on Has2Feet{
//   void run() => print('$runtimeType is Running');
// }

//?------------------------------------------------------------------------------------------------

//! Example 5: Mixin with hascode Implementation
// void main(List<String> args) {
//   final cat1 = Cat(petName: 'Tom', age: 10);
//   final dog1 = Cat(petName: 'Joffy', age: 10);
//   final cat2 = Cat(petName: 'Tom', age: 10);
//   print(cat1.hashCode);
//   print(dog1.hashCode);
//   print(cat2.hashCode);
//   print(cat1 == dog1);
//   print(cat1 == cat2);
// }

// enum PetType { Dog, Cat, Bird }

// mixin Pet {
//   String get petName;
//   PetType get petType;
//   int get age;

//   @override
//   int get hashCode => Object.hash(
//         petName,
//         petType,
//         age,
//       );

//   @override
//   String toString() =>
//       'Pet ( name: $petName, pet type: $petType, pet age: $age)';

//   @override
//   bool operator ==(Object other) => other is Pet && other.hashCode == hashCode;
// }

// class Cat with Pet {
//   @override
//   final String petName;
//   @override
//   final PetType petType;
//   @override
//   final int age;

//   Cat({required this.petName, required this.age}) : petType = PetType.Cat;
// }


//?--------------------------------------------------------------------------------------------------------------

//! Example 6: Mixin with Reflection

// import 'dart:mirrors'; //for reflection

// void main(List<String> args) {
//   final person = Person(
//     name: 'John',
//     age: 30,
//   );
//   print(person);
//   final house = House(
//     address: '123 Main St',
//     rooms: 6,
//   );
//   print(house);
// }
// mixin HasDescription {
//   @override
//   String toString() {
//     final reflection = reflect(this);
//     final thisType = MirrorSystem.getName(
//       reflection.type.simpleName,
//     );

//     final variables =
//         reflection.type.declarations.values.whereType<VariableMirror>();

//     final properties = <String, dynamic>{
//       for (final field in variables)
//         field.asKey: reflection
//             .getField(
//               field.simpleName,
//             )
//             .reflectee,
//     }.toString();

//     return '$thisType = $properties';
//   }
// }

// extension AsKey on VariableMirror {
//   String get asKey {
//     final fieldName = MirrorSystem.getName(simpleName);
//     final fieldType = MirrorSystem.getName(type.simpleName);
//     return '$fieldName ($fieldType)';
//   }
// }

// class Person with HasDescription {
//   final String name;
//   final int age;

//   const Person({
//     required this.name,
//     required this.age,
//   });
// }

// class House with HasDescription {
//   final String address;
//   final int rooms;

//   const House({
//     required this.address,
//     required this.rooms,
//   });
// }

//?--------------------------------------------------------------------------------------------------------------

//! Example 7: Mixin with Equality Implementation

import 'package:uuid/uuid.dart';

void main(List<String> args) {
  final uuid1 = const Uuid().v4();
  final uuid2 = const Uuid().v4();

  final person1 = Person(
    id: uuid1,
    name: 'John',
    age: 30,
  );

  final person1Again = Person(
    id: uuid1,
    name: 'john',
    age: 30,
  );

  final person2 = Person(
    id: uuid2,
    name: 'John',
    age: 30,
  );

  if (person1 == person2) {
    print('Person 1 and Person 2 are equal');
  } else {
    print('Person 1 and Person 2 are NOT equal');
  }

  if (person1 == person1Again) {
    print('Person 1 and Person 1 Again are equal');
  } else {
    print('Person 1 and Person 1 Again are NOT equal');
  }

  if (person1Again == person2) {
    print('Person 1 Again and Person 2 are equal');
  } else {
    print('Person 1 Again and Person 2 are NOT equal');
  }
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;

  final String name;
  final int age;

  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}