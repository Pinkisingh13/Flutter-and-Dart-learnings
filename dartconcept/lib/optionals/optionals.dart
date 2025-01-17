library;

//! Optionality in Dart

//? ---------------------------------------------------------
//!    15/01/25
//! EXAMPLE 1:
//* Optionality in Dart is the ability to have a value or to not have a value. So, either a variable can have a value or it doesn't.
//* In Dart, null is not a datatype, it is a value that represents the absence of a value.
//* If we are not soecifying the dart type we can assign null to it. but in the case of const variables, we can't assign null to it. if we are specifying the data type we have to use the ? oprator to assign null to it.
// void main() {
// const name = "Foo";
// print(name); // Output: Foo
// if i change it:
// const String name = null; // Error: Null value is not allowed
// But we can assign value
//   const String? name = null;
//   print(name);
// }

//? ---------------------------------------------------------

//! EXAMPLE 2:
//* if  you are working with the value null  and you dont have a datatype for dart understand that value to be type dynamic.
// void main() {
//Here Dart does not have understanding now of what null represents really is it a null int or null double or null string.  (That is why someVal is dynamic)
//So, we can tell dart about the type of a value by specifying the datatype explicitly.
// const someVal = null;
// print(someVal); // Output: null // dynamic

// const double? someVal2 = 5;
// print(someVal2); // Output: 5.0 // double
// }

//? ---------------------------------------------------------

//! EXAMPLE 3: Comparing null values
// void main() {
//   int? age = 29;
//   age = null;
//   print(age);
//   if (age == null) {
//     print("Age is null");
//   } else {
//     print("Age is Not null");

//   }
// }

//? ---------------------------------------------------------

//! EXAMPLE 4: Nullable Default Values
// void main() {
//* Nullable values by default are null. So, if we don't assign a value to a nullable variable, it will be null.
//* Optional datatypes in dart for variables  are by default initialize to null.

// In String? name example, it allow to print null value because we are explicitly telling dart that this variable can have a value or null.

// int a;
// print(a);  // Error: The non-nullable local variable 'a' must be assigned before it can be used.

// String? name;
// print(name); // Output: null

// }

//? ---------------------------------------------------------

//! EXAMPLE 5: Null Compund Assignment Operator
// void main() {
//   String? name;
// If name is null, assign "Foo" to it.
//   name ??= "Foo";

//   print(name); // Output: Foo
// }

//? ---------------------------------------------------------

//! EXAMPLE 6: Null Aware Operators

//! Sub-Example 1:
// ?. is used to work with null values. It is used to avoid runtime errors when the left operand is null.
// void main() {
// String? lastName;
// print(lastName?.length); // Output: null

// String? lastName = "Bar";
// print(lastName?.length); // Output: 3
// }

//! Sub-Example 2:
// ?? is used to provide a default value when the left operand is null.
// void main() {
// String? lastName1;
// print(lastName1 ?? "Doe"); // Output: Doe

//Here lastName2 is not null, so it will print the value of lastName2 (Bar).
// String? lastName2 = "Bar";
// print(lastName2 ?? "Doe"); // Output: Bar
// }

//? ---------------------------------------------------------

//!Example 7: Nullabla Collection
// void main() {
// here we are using the ? operator to tell dart that this list can have a value or null.
//IN DART, Both list and its content can be null.
// List<String>? names;
// print(names); // Output: null
// List<String?>? names;
// print(names); // Output: null

// List<String?>? names;
// names?.add("foo"); // Error: The method 'add' was called on null. dart declare it as dead code.
// names!.add(
//     "foo"); //This will work here because we are telling dart that we are sure that names will not be null.
// print(names); // Output: null

// final List<String?>? names2;
// final first = names2?.first; // final variable 'names2' can't be read because it's potentially unassigned at this point.
// print(first); // Output: null

//* In this example we are calling the first method on the names3 list which is empty. And first method can't return null. So, it will throw a runtime error.
// final List<String> names3 = [];
// final bla = names3.first;
// print(bla); // Output: Runtime Error: Unhandled exception:  Bad state: No element

// final List<String?>? names4;
// final String? bla2 = names4?.first; //The final variable 'names4' can't be read because it's potentially unassigned at this point.
// print(bla2 ?? "No Element Found"); // Runtime Error: Unhandled exception:  Bad state: No element

// }

//? ---------------------------------------------------------

//! EXAMPLE 8: Force Unwrapping Using ! Operator
// void main() {
//   final String? name = null;
//   print(name!.length); // The final variable 'name' can't be read because it's potentially unassigned at this point.

// String? name2;
// print(name2!.length); // Output: Unhandled exception: Null check operator used on a null value
// }

//? ---------------------------------------------------------

// //! EXAMPLE 9: Nullable type promotion
//* Using if condition to check if the variable is null or not.
// void main() {
//   final String? name = null;
//   if (name != null) {
//     print(name
//         .length); // NO OUTPUT
//   }
// }

//? ---------------------------------------------------------

//! EXAMPLE 10: Combining null aware operators
// void main() {
//   String? name;

//   void changeName() {
//     name = "Foo";
//   }

//   changeName();

//   print(name); // Output: Foo

//   if (name != null) {
//     print(name.length); // Output: 3
//   }
// }
