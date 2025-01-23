//!21/01/25

//! Collections in dart
//! SETS
//* Sets are unordered collections of unique items. it does not allow duplicate values.

//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  Basic set example
// void main(List<String> args) {
//   Set<String> names = {'Jack', 'Jill', 'John', 'Jake'};
//   print(names);
//   for (var name in names) {
//     print(name);
//   }
// }

//?------------------------------------------------------
//! Example 2:  Add item to set
// void main(List<String> args) {
// Set<String> names = {'Jack', 'Jill', 'John', 'Jake'};

//! Sub-Example 1:  Adding unique item to set
// names.add('Jen');
// print(names); // {Jack, Jill, John, Jake, Jen}

//! Sub-Example 2:  Adding duplicate item to set
//   names.add('Jen'); // it will not add Jen because Set does not allow to add duplicate item.
//   print(names); // {Jack, Jill, John, Jake, Jen}
// }

//?------------------------------------------------------

//! Example 3:  Creating Set from List Using spread operator
// void main(List<String> args) {
//  final List<String> names = ['Jack', 'Jill', 'John', 'Jake', 'John', 'Jen', "Jack"];
//   Set<String> nameSet = {...names};
//   print(nameSet); // {Jack, Jill, John, Jake, Jen} // it will remove duplicate items.
// }

//?------------------------------------------------------

//! Example 4:  Set supports Hashing
//* with the use of hashcode, sets can quickly determine if an item is already in the set or not. it is important to note that it is important to understand that hashcode is not unique. it is possible that two different objects can have the same hashcode. sets
// void main(List<String> args) {
//   final foo1 = 'Foo';
//   var foo2 = 'Foo';
//   print(foo1.hashCode);
//   print(foo2.hashCode);
// }

//?------------------------------------------------------

//! Example 5:  Search item (.contains()) in Set
// void main(List<String> args) {
//   Set<String> names = {'Jack', 'Jill', 'John', 'Jake'};
//   print(names);
//   if (names.contains('Jill')) {
//     print('Jill is in the set');
//   } else {
//     print('Jill is not in the set');
//   }
// }

//?------------------------------------------------------

//! Example 6:  Equality Check in sets
//   import 'package:collection/collection.dart';
// void main(List<String> args) {
//   Set<String> names1 = {'Jack', 'Jill', 'John', 'Jake'};
//   Set<String> names2 = {'Jack', 'Jill', 'John', 'Jake'};

//!Sub-Example 1: Using == operator
//* We can't do equality check using == operator because it is comparing the reference of the object which is different.
// print(names1 == names2); // false. // because it is comparing the reference of the object which is different. It is same as i have explained in List (Example no: 8).

//!Sub-Example 2: Using SetEquality class
//* The best way to do comparison is to use SerEquality class from collection package.
// final setEquality = SetEquality();
// print(setEquality.equals(names1, names2)); // true
// }

//?------------------------------------------------------------------------

//! Example 7:  HashCode and Equality in Set

void main(List<String> args) {
  final Person p1 = Person(name: 'Jack', age: 25);
  final Person p2 = Person(name: 'Jack', age: 25);

  print('Hash code of p1: ${p1.hashCode}');
  print('Hash code of p2: ${p2.hashCode}');

  final persons = {p1, p2}; // Using a set to store Person objects
  print('Are p1 and p2 identical? ${identical(p1, p2)}');
  print('Contents of the persons set: $persons');

  final Dog d1 = Dog(name: 'Doggy', age: 25);
  print('Hash code of d1: ${d1.hashCode}');
  print('Hash code of p1: ${p1.hashCode}');
  print('Are p1 and d1 identical? ${identical(p1, d1)}');

  final beings = {p1, d1}; // Using a set to store Person and Dog objects
  print('Contents of the beings set: $beings');
}


// void main(List<String> args) {
//   final person = Person(
//     age: 10,
//     name: 'Foo',
//   );
//   final dog = Dog(
//     age: 10,
//     name: 'Foo',
//   );
//   print(person.hashCode);
//   print(dog.hashCode);
//   final beings = {person, dog};
//   print(beings);
// }

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
