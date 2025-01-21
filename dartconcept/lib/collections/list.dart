//!21/01/25

//! Collections in dart

//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  LIST
// void main(List<String> args) {
// List<String> names = ['Jack', 'Jill', 'John', 'Jake'];
// print(names);
// for (var name in names) {
//   print(name);
// }
// }

//?------------------------------------------------------

//! Example 2:  REVERSED LIST
// void main(List<String> args) {
//   List<String> names = ['Jack', 'Jill', 'John', 'Jake'];
//   print(names);
//   for (var name in names.reversed) {
//     print(name);
//   }
// }

//?------------------------------------------------------

//! Example 3:  Search item (.contains()) in List
// equality in dart is case sensitive. if we search jill instead of Jill, it will return false.

// void main(List<String> args) {
//   List<String> names = ['Jack', 'Jill', 'John', 'Jake'];
//   print(names);
//   if (names.contains('Jill')) {
//     print('Jill is in the list');
//   } else {
//     print('Jill is not in the list');
//   }
// }

//?------------------------------------------------------

// ! Example 4:  where() in List
// void main(List<String> args) {
//   List<String> names = ['Foo', 'Bar', 'Baz', 'Qux'];
//   print(names);
//   names.where((name) => name.startsWith("B")).forEach(print);
//   names.forEach(print);
// }

//?------------------------------------------------------

//! Example 5:  Access List by index

// void main(List<String> args) {
//   List<String> names = ['Foo', 'Bar', 'Baz', 'Qux'];
//   names.elementAt(0);  //OR // names[0];
// }

//?------------------------------------------------------

//! Example 6:  Sublist() method in List
// void main(List<String> args) {
//   List<String> names = ['Foo', 'Bar', 'Baz', 'Qux'];
//   List<String> l = names.sublist(1, 3);
//   print(names.sublist(1, 3)); // ['Bar', 'Baz']
//   print(l); // ['Bar', 'Baz']

//   names.sublist(1, 3).forEach(print); // Bar, Baz
// }

//?------------------------------------------------------

//! Example 7:  Modify List
// void main(List<String> args) {
//   final List<String> names = ['Foo', 'Bar', 'Baz', 'Qux'];
//   print(names);

//   names[1] = 'Barry';
//   names.add("Bar");
//   print(names);
// }

//?------------------------------------------------------

//! Example 8:  Compare List
// import 'package:collection/collection.dart'; // i am using this to use ListEquality class.

// void main(List<String> args) {

//!Sub-Example 1: Using const keyword
//* When you use the const keyword to declare the lists, Dart treats them as compile-time constants. If two const lists have the same elements in the same order, they are considered identical and share the same memory reference. Therefore, the comparison names == names2 evaluates to true, and the output is "Equal".
//   const List<String> names = ['Foo', 'Bar', 'Baz', 'Qux'];
//   const List<String> names2 = ['Foo', 'Bar', 'Baz', 'Qux'];

// names == names2 ? print('Equal') : print('Not Equal'); // Equal

//?-----------------------------------------
//!Sub-Example 2: Using final keyword

//With the use of FINAL keyword,  each list is created as a separate instance in memory, even if they contain the same elements. In this case, the comparison names == names2 evaluates to false, and the output is "Not Equal".

// Same thing happend if we does not use any keyword like var or final. if we declare variable with  List<String> is will also print "Not Equal" because the reason is same as final keyword.
//  final  List<String> names3 = ['Foo', 'Bar', 'Baz', 'Qux'];
//   final  List<String> names4 = ['Foo', 'Bar', 'Baz', 'Qux'];

//   names3 == names4 ? print('Equal') : print('Not Equal'); // Not Equal

//?--------------------------------------------------------
// !Sub-Example 3: Using ListEquality class
//   final List<String> names = ['Foo', 'Bar', 'Baz', 'Qux'];
//   final List<String> names2 = ['Foo', 'Bar', 'Baz', 'Qux'];

//   final list = ListEquality();
//   list.equals(names, names2) ? print('Equal') : print('Not Equal'); // Equal
// }

//?-----------------------------------------------------------------

// //! Example 9:  Mapping List
// void main(List<String> args) {
//   List<String> names = ['Foo', 'Bar', 'Baz', 'Qux'];
//   names.map((name) => name.toUpperCase()).forEach(print); // FOO, BAR, BAZ, QUX

// }

//?------------------------------------------------------

//! Example 10:  Sum of List elements
// void main(List<String> args) {
//   List<int> sumofNum = [2, 5, 7, 4, 6, 9];

  //! Method 1
  // int sum = 0;
  // sumofNum.map((name) => sum += name).toList(); // (2, 7, 14, 18, 24, 33)
  // print(sum); // 33

  //! Method 2
  // int sum2 = sumofNum.reduce((value, element) => value + element);
  // print(sum2); // 33

  //! Method 3
  // int sum3 = sumofNum.fold(0, (previousValue, element){
    // print('previousValue = $previousValue');
    // print('element = $element');

    // print('$previousValue + $element = ${previousValue + element}');
    // return previousValue + element;
  // });
  //   print(sum3); // 33
// }
