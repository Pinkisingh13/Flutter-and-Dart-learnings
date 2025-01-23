//!23/01/25

//! Enumeration

//?-------------------------------------------------------------------------------------------------------------------

//!  Example 1: Basic Enumeration

// enum AnimalType { cat, dog, horse, cow, elephant }

// void main(List<String> args) {
//   Animal cat = Animal(name: 'Cat', type: AnimalType.cat);
//   Animal dog = Animal(name: 'Dog', type: AnimalType.dog);

//   print(cat); // AnimalType.cat
//   print(dog.type); // AnimalType.dog

// print(switch (cat.type) {
//   AnimalType.cat => 'This is a cat',
//   AnimalType.dog => 'This is a dog',
//   AnimalType.horse => 'This is a horse',
//   AnimalType.cow => 'This is a cow',
//   AnimalType.elephant => 'This is a elephant'
// });
// }

// class Animal {
//   final String name;
//   final AnimalType type;
//   const Animal({required this.name, required this.type});
// }

//?-------------------------------------------------------------------------------------------------------------------

//!  Example 2: Enhanced Enumeration
//* Enhanced Enumerations are introduced in Dart 2.15.0
// Enhance enums are more powerful than basic enums. They can have properties, methods, and constructors.
// Enhanced enums are declared using the const keyword.
// Enhanced enums have some limitations. They can't have a custom superclass, implement interfaces, or extend other classes.

// class Person {
//   final String name;
//   final Car car;
//   const Person({required this.name, required this.car});
// }

// enum Car {
//   teslaModelX(
//     manufacturer: 'Tesla',
//     model: 'Model SX',
//     year: 2020,
//     price: 79999.99,
//   ),
//   teslaModelY(
//     manufacturer: 'Tesla',
//     model: 'Model SY',
//     year: 2021,
//     price: 49999.99,
//   );

//   final String manufacturer;
//   final String model;
//   final int year;
//   final double price;

//   const Car({
//     required this.manufacturer,
//     required this.model,
//     required this.year,
//     required this.price,
//   });
//   @override
//   String toString() {
//     return 'Car: $manufacturer $model $year $price';
//   }
// }

// void main(List<String> args) {
//   Person person = Person(name: 'John', car: Car.teslaModelX);

//   print(person.car);
//   print(person.car.manufacturer); // Tesla

//   print(switch (person.car) {
//     Car.teslaModelX => 'This is a Tesla Model SX',
//     Car.teslaModelY => 'This is a Tesla Model SY'
//   });
// }

//?-------------------------------------------------------------------------------------------------------------------

//!  Example 3: Switch Enumeration
//its better to not use default case in switch statement
// be sure to cover all cases
// by providing default case, it will be difficult to catch the error if we add new AnimalType in the future it will not be covered in the switch statement

// enum AnimalType { cat, dog, horse, cow, elephant }

// void main(List<String> args) {
//   final whiskers = AnimalType.dog;
//   print(whiskers); // AnimalType.cat

// print(switch (whiskers) {
//   AnimalType.cat => 'This is a cat',
//   _ => 'This is not a cat'
// });
// }

//?-------------------------------------------------------------------------------------------------------------------

//!  Example 4: String to Enumeration

//creating instance of enumeration from string

// void main(List<String> args) {
//   getAnimalType(type: animalType(fromStr: 'cat')); // cat
// }

// void getAnimalType({AnimalType? type}) {
//   print (switch (type) {
//     AnimalType.cat => 'This is a cat',
//     AnimalType.dog => 'This is a dog',
//     AnimalType.horse => 'This is a horse',
//     AnimalType.cow => 'This is a cow',
//     AnimalType.elephant => 'This is a elephant',
//     _ => 'Unknown',
//   });
// }

// AnimalType? animalType({required String fromStr}) {
//   try {
//     return AnimalType.values
//     .firstWhere((element) => element.name == fromStr);
//   } catch (e) {
//     return null;
//   }
// }

// enum AnimalType { cat, dog, horse, cow, elephant }

//?-------------------------------------------------------------------------------------------------------------------

//!  Example 5: Fall through of Enumeration clas
// Fall through is a feature in switch statement that allows the execution of multiple cases in a single switch statement.
// enum Vehicletype { car, bike, truck, motorcyle, bicycle }

// void main(List<String> args) {
//   final vehicle = Vehicletype.car;
//   getAnimalType(type: vehicle);
// }

// void getAnimalType({required Vehicletype type}) {
//   switch (type) {
//     case Vehicletype.car:
//     case Vehicletype.bike:
//     case Vehicletype.bicycle:
//     case Vehicletype.motorcyle:
//       print("Most common vehicle");
//       break;
//     case Vehicletype.truck:
//       print("Heavy vehicle");
//       break;
//     }
// }

//?-------------------------------------------------------------------------------------------------------------------

//!  Example 6: Enumeration with Mixins

// enum AnimalType { cat, dog, horse, cow, elephant }

// void main(List<String> args) {

//   AnimalType.cat.jump();
//   AnimalType.dog.jump();
// }

// enum AnimalType with CanJump {
//    cat(jumpHeight: 5),
//    dog(jumpHeight: 10);

//   @override
//   final int jumpHeight;
//   const AnimalType({required this.jumpHeight});
// }

// mixin CanJump{
//   int get jumpHeight;

//   void jump() {
//    jumpHeight < 1 ? throw Exception("Can not jump") : print('Jumping $jumpHeight feet');
//   }
// }

//?-------------------------------------------------------------------------------------------------------------------

//!  Example 7: Extending Enumeration

// enum AnimalType {
//   cat,
//   dog,
//   horse,
//   cow,
//   elephant;

//   void run() {
//   print("Running...");
// }

// }

// void main(List<String> args) {
//   AnimalType.cat
//     ..jump()
//     ..run();
// }

// extension AnimalTypeExtension on AnimalType {
//   void jump() {
//     print('Jumping...');
//   }
// }

//?-------------------------------------------------------------------------------------------------------------------

//!  Example 8: Implimenting Comparable on Enumeration

// enum TeslaCar implements Comparable<TeslaCar> {
//   modelX(price: 79999.99),
//   modelY(price: 49999.99),
//   modelS(price: 89999.99);

//   final double price;

//   const TeslaCar({required this.price});

//   @override
//   int compareTo(TeslaCar other) => price.compareTo(other.price);
// }

// void main(List<String> args) {
//   final modelX = TeslaCar.modelX;
//   final modelY = TeslaCar.modelY;
//   final modelS = TeslaCar.modelS;
//   print([...TeslaCar.values]..sort());
//   print(TeslaCar.values); // [TeslaCar.modelX, TeslaCar.modelY, TeslaCar.modelS]
//   print(modelX.price); // TeslaCar.modelX
//   print(modelX.compareTo(modelY)); // 1
//   print(modelY.compareTo(modelS)); // -1
//   print(modelS.compareTo(modelX)); // 1
// }
