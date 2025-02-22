//!22/01/25

//! Collections in dart
//!  Collection Comprehension

//! What is Collection Comprehension?
//* Collection comprehension refers to a concise syntax for creating new collections by transforming or filtering existing ones. It is commonly found in modern programming languages, and Dart implements this concept as part of its collection literals.

//! Name for This Syntax: 
//* This approach is a part of Dart's Collection-For and Collection-If Constructs, specifically used for dynamically generating maps, lists, or sets in Dart.
//* Collection-For: Allows iteration within a collection literal (e.g., lists, maps, sets).
//* Collection-If: Allows conditional entries in a collection literal.

//?--------------------------------------------------------------------------------------------------------------------

// //! Example 1:  Collection Comprehension With Set
void main(List<String> args) {
  final string = "abracadabra";

//! Sub-Example 1:
//   var result = "";
//   for (var e in string.split('')) {
//     if (e == 'a' || e == 'b' || e == 'c') {
//       continue;
//     } else {
//       result += e;
//     }
//   }
//   print(result);

//! Sub-Example 2:
  final allExceptAbc = {for (var e in string.split('')) 'abc'.contains(e) ? '' : e}
    ..removeAll([null])
    ..cast<String>();
  print(allExceptAbc); //
}

//?--------------------------------------------------------------------------------------------------------------------

//! Example 2:  Collection Comprehension With List
// void main(List<String> args) {
//   final allNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  //! Sub-Example 1:  Using if condition
  // final evenNumbers = [
  //   for (var e in allNumber)
  //     if (e.isEven) e
  // ];
  // print(evenNumbers); // [2, 4, 6, 8, 10]

  //! Sub-Example 2:  Using where() method
//   final evenNumberFunction = allNumber.where((e) => e.isEven).toList();
//   print(evenNumberFunction); // [2, 4, 6, 8, 10]
// }
