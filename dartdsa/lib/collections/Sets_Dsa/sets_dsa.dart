//! 23/01/25
// These Questions is from chatgpt

// ?------------------------------------------

//! Question no 1: Creating Sets: Write a program to create a set of integers containing the numbers 1 to 5. Print the set.

// void main(List<String> args) {
//   Set<int> set = {1, 2, 3, 4, 5};
// set.forEach(print);

// for (var e in set) {
//   print(e);
// }
// }

//?-----------------------------------------

//! Question no 2: Adding and Removing Items: Write a program to add the number 6 to the set {1, 2, 3, 4, 5}, and then remove the number 2. Print the updated set.

// void main(List<String> args) {
//   final set = {1, 2, 3, 4, 5};
//   set.add(6);
//   print(set);

//   set.remove(2);
//   print(set);
// }

//?------------------------------------------

//! Question no 3: Union and Intersection: Given two sets, {1, 2, 3, 4} and {3, 4, 5, 6}, write a program to find their union and intersection.

// void main(List<String> args) {
//   final Set<int> unionSet = {};
//   final set1 = {1, 2, 3, 4};
//   final set2 = {3, 4, 5, 6};

//! Union combines all unique elements from both sets
// unionSet.addAll(set1.union(set2));

//! Intersection includes only the common elements.
//   unionSet.addAll(set1.intersection(set2));

//   print(unionSet);
// }

//?---------------------------------

//! Question no 4: Difference: Write a program to find the difference between the sets {1, 2, 3, 4} and {3, 4, 5, 6}.
// import 'package:collection/collection.dart';

//* Difference between union() and difference()
// Union merges both sets and removes duplicates.
// Difference subtracts one set from the other and only keeps elements that are not shared.

// void main(List<String> args) {
// final set1 = {1, 2, 3, 4};
// final set2 = {3, 4, 5, 6};
// final Set<int> diffSet = {};

// final setEquality = SetEquality();
// setEquality.equals(set1, set2); // return true or false;

// diffSet.addAll(set1.difference(set2)); // OUTPUT: {1,2}
// diffSet.addAll(set2.difference(set1)); // Output: {5,6}

// print(diffSet);
// }

//?---------------------------------

//! Question no 5: Subset Check:  Write a program to check if the set {3, 4} is a subset of {1, 2, 3, 4, 5}.

// void main(List<String> args) {
//   final Set<int> subset = {3, 4};
//   final Set<int> set = {1, 2, 3, 4};

// //! First Way
//   print(set.containsAll(subset));

// //! Second way
//   print(subset.every((element) => set.contains(element)));
// }

//?---------------------------------

//! Question no 6: Removing Duplicates: Given a list of integers [1, 2, 2, 3, 3, 4, 5], write a program to create a set from the list and print the unique elements.

// void main(List<String> args) {
//   final List<int> list = [1, 2, 2, 3, 3, 4, 5];

//   final Set<int> set = {...list};
//   print(set);
// }

//?----------------------------------------------

//! Question no 7: Write a program to check if the string 'Flutter' is present in the set {'Dart', 'Flutter', 'React', 'Node.js'}.

// void main(List<String> args) {
// final Set<String> strSet = {'Dart', 'Flutter', 'React', 'Node.js'};

// final String checkVar = "Flutter";

//! Using .where()
// print(strSet.where(
//   (element) => element == checkVar,
// )); // (Flutter)

//! Using .any(): Using .any() (Preferred Method for Short-Circuiting)
//* The .any() method stops as soon as a match is found:
// print(strSet.any(
//   (element) => element == checkVar,
// )); // true

// print(strSet.contains(checkVar)); //true

//! Using a Custom extention
// String containEle = strSet.containElement(checkVar);
// print(containEle);

//! Using Functional Programming
//**The .fold() method is designed to iterate over the entire collection, combining elements based on the function provided. It doesn't support short-circuiting (breaking early when a condition is met) because it's meant to aggregate or reduce the entire collection into a single result. So even if a match is found early, .fold() will process all elements. */
// bool exist = strSet.fold(false, (previousValue, element) {
// return  previousValue || element == checkVar;
// });
// print(exist);
// }

// extension SearchInSet<T> on Set<T> {
//   String containElement(T val) {
//     return where(
//       (element) => element == val,
//     ).toString();
//   }
// }

//?----------------------------------------------

//! Question no 8: Hashing and Equality:  Modify the Person class to include a new property city. Update the hashCode and equality operator (==) to include this new property. Test if two Person objects with the same name, age, and city are considered equal

// void main(List<String> args) {
//   final Person p1 = Person(name: "Jacky", age: 60, city: "xyc, sector 67");
//   final Person p2 = Person(name: "Jacky", age: 60, city: "xyc, sector 67");
//   final Dog d1 = Dog(city: "xyc, sector 67", name: "Jacky", age: 60);

//   // Hascodes are same:
//   print(p1.hashCode);
//   print(p2.hashCode);
//   print(d1.hashCode);

//   final persons = {p1, p2, d1}; // Using a set to store Person objects

//   print(
//       persons); // persons include p1 and d1: {Person: Jacky, 60 xyc, sector 67, Dog: Jacky, 60, xyc, sector 67}

//   p1.hashCode == p2.hashCode
//       ? print("They are equal")
//       : print("They are not equal"); // they are equal

//   p1.hashCode == d1.hashCode
//       ? print("They are equal")
//       : print("They are not equal"); // They are equal

//   //! == operator

//   print(p1 == p2); // true
//   print(p1 == d1); // false
// }

// class Person {
//   final String name;
//   final int age;
//   final String city;

//   Person({
//     required this.name,
//     required this.age,
//     required this.city,
//   });

//   @override
//   String toString() => 'Person: $name, $age $city';

//   @override
//   int get hashCode => Object.hash(
//         name,
//         age,
//         city,
//       );

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Person &&
//           name == other.name &&
//           age == other.age &&
//           city == other.city;
// }

// class Dog {
//   final String name;
//   final int age;
//   final String city;

//   Dog({
//     required this.city,
//     required this.name,
//     required this.age,
//   });

//   @override
//   String toString() => 'Dog: $name, $age, $city';

//   @override
//   int get hashCode => Object.hash(
//         name,
//         age,
//         city,
//       );

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Dog &&
//           name == other.name &&
//           age == other.age &&
//           city == other.city;
// }

//? ----------------------------------------------

//! Question no 9: Equality Check Between Sets: Write a program to compare two sets, {1, 2, 3, 4} and {4, 3, 2, 1}, and determine if they are equal using the SetEquality class from the collection package.
// import 'package:collection/collection.dart';

// void main(List<String> args) {
//   final Set<int> s1 = {1, 2, 3, 4};
//   final Set<int> s2 = {4, 3, 2, 1};

//   final setEql = SetEquality();
//   final bool isEqual = setEql.equals(s1, s2);
//   print(isEqual);
// }

//? ----------------------------------------------

//! Question no 10: Custom Objects in Sets: Create a Book class with properties title, author, and isbn. Override the hashCode and == operator to make Book objects unique based on their isbn. Write a program to store multiple Book objects in a set and ensure no duplicate books are added.

void main(List<String> args) {
  final Book b1 =
      Book(title: "jarry on day", author: "Jacky", isbn: "123 abf cdg");
  final Book b2 = Book(title: "jarry on day", author: "Jacky", isbn: "456");
  final Book b3 = Book(
      title: "Another book",
      author: "Jane",
      isbn: "123 abf cdg"); // Duplicate ISBN

  //    
  print("Hashcodes==> b1: ${b1.hashCode}, b2: ${b2.hashCode}, b3: ${b3.hashCode}");
 

  final Set<Book> set = {
    b1,
    b2,
    b3
  }; // only contain 2 books because b1 and b3 have the same ISBN
  print(set);
}

class Book {
  final String title;
  final String author;
  final String isbn;

  const Book({required this.title, required this.author, required this.isbn});

  @override
  String toString() => "Book's details:  $title, $author, $isbn ";

  @override
  int get hashCode => isbn.hashCode;

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other is Book && isbn == other.isbn);
  }
}

//? ------------------------------------------------------

//! Finished 24/01/25
