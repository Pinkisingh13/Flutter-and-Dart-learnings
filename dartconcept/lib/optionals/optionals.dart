library;

//! Optionality in Dart

//? ---------------------------------------------------------
//! 15/01/25
//! EXAMPLE 1:
//* Optionality in Dart is the ability to have a value or to not have a value. So, either a variable can have a value or it doesn't.
//* In Dart, null is not a datatype, it is a value that represents the absence of a value.
//* If we are not specifying the dart type we can assign null to it. but in the case of const variables, we can't assign null to it. if we are specifying the data type we have to use the ? oprator to assign null to it.
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
//   print(age);  // null
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
//* The ??= operator assigns a value to a variable only if that variable is currently null.
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
// ?. means that if the operand is null, the expression evaluates to null. Otherwise, it evaluates to the value of the operand.
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
//! 17/01/25
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
//   String? lastname;
//   void changeName() {
//     lastname = "Dhar";
//   }

//   changeName();
//   print(lastname);

//   if (lastname?.contains("Deol") ?? false) {
//     print("Lastname contains Deol");
//   }
// }

//? ---------------------------------------------------------

//! EXAMPLE 11: Extending Optional Types

// void main() {
//* Optionals with Functions
// String? getFullName() {
//   return null; // This function returns null, as indicated by the nullable type String?.
// }

// String getFullNameOptional() {
//   return "Foo Bar"; // This function always returns a non-null value.
// }

// Using ?? to provide a fallback value if getFullName() returns null.
// String fullName = getFullName() ?? getFullNameOptional();
// print(fullName); // Prints "Foo Bar" because getFullName() is null.

//* Optionals with Objects
// String? getFullName() {
//   return "foo bar"; // This function returns a non-null string.
// }

// Calling getFullName and storing the result in the obj variable.
// final obj = getFullName(); // obj has type String? (nullable String).

// Calling the describe extension method on obj.
// The describe extension can handle null values because it is defined on Object?.
// obj.describe;
// }

// The `extension` keyword is used to add new functionality to existing types or classes.
// Here, we extend the Object? type to add a custom `describe` method.
// extension Describe on Object? {
// The `describe` getter checks if `this` (the object) is null.
// If `this` is null, it prints "This object is null".
// Otherwise, it prints the runtime type and value of `this`.
//   void get describe =>
//       this == null ? print("This object is null") : print("$runtimeType: $this");
// }

//? ---------------------------------------------------------

//! EXAMPLE 12: Unwrapping Multiple Optionals
// void main() {
//   String ans = getfullName("john",null);
//   print(ans);
// }

// String getfullName(
//   String? firstName,
//   String? lastName,
// ) {

//   return withAll(
//         [firstName, lastName],
//         (names) => names.join(" "),
//       ) ??
//       "No Name";
// }

// Given a list of any value that can be  containing options like an actual string a list of strings, ao this will work with a list of optional strings, it will work with a list of optionl ints.
// T? withAll<T>(List<T?> optionals, T Function(List<T>) callback) =>
//     optionals.any((e) => e == null) ? null : callback(optionals.cast());

//? ---------------------------------------------------------
//! EXAMPLE 13: Optional FlatMap
// Flatmap is a function in rust and swift that allows you to drill down within  an optional  and grab its value and map it to another data type perhaps completely to another data type  or a different value of the same data type should that optional not be null but if it is null then no flatmap  does not do anything it just returns null.

// Flatmap is unwrapping and mapping an optional value.
// void main(){
// String? firstName = "John";
// String? lastName = "Doe";

// final fullName = firstName.flatMap((fName) => lastName.flatMap((lName) => "$fName $lName"),) ?? "Either first name or last name is null";

// print(fullName); // Output: John Doe
// }

// extension FlatMap<T> on T?{
//   R? flatMap<R>(R Function(T) callback){
//     final shadow = this;
//     return shadow == null ? null : callback(shadow);
//   }
// }

//? ---------------------------------------------------------
//! 17/01/25
//! EXAMPLE 14: Default Value for Optionals
// void main() {
//   print(fullName(null, "Doe")); // Output: John Doe
// }
// String fullName(String? firstName, String? lastName) {
//   return "${firstName.orDefault} ${lastName.orDefault}";

// }
// extension DefaultValues<T> on T? {
//   T get orDefault {
//     final shadow = this;
//    if (shadow != null) {
//       return shadow;
//     }
//     switch(T){
//       case const (int):
//         return 0 as T;
//       case const (double):
//         return 0.0 as T;
//       case const (String):
//         return "X" as T;
//       case const (bool):
//         return false as T;
//       default:
//         throw Exception("Type not supported");
//     }
//   }
// }
