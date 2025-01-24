//! Video from youtube channel name: "Vandad Nahavandipoor"

//! 13/01/25 and 14/01/25 (Dart Variables and data types)
//! Important Note:  Modification has two type:
//  TYPE 1. Modification of variables value.(Reassigning the value of the variable directly)
//  TYPE 2. Modification of varibles elements value. (Modifying the elements of the variable's value);

//* First way: Define Datatype of the variable
// void main() {
//   String name = "foo";
//   int num1 = 30;
// }

//? --------------------------------------------------------

//* Second way: Without Defining Data Type (const, final, var)
//* when we define variable without explicitly defining the data type dart will identify its datatype with respect to its value.
// void main() {
// ignore: dangling_library_doc_comments
//! Example 1:
//!const:const is a keyword that is reserved. constant value, it is compile time constant.
//Here we are doing TYPE 1 modification
// const name2 = "foo";
// In const Any Type of Modification is not allowed.
//name2 = "hello"; // Error: Constant variables can't be assigned a value.
// print(name2);

// Here we are doing TYPE 2 modification
// const age = [30, 607, 59];
// age.add(90); //Output: It will gives Runtime Error because we are trying to modify the const variable's value's element.
// print(age);

//!Example 2:
//! final: final is a keyword that is reserved. final value, it is runtime constant.
//*Type 1 Modification is not allowed.
// final name = "foo";
// name = "hello"; // Error: The final variable 'name' can only be set once. Try making 'name' non-final.

//* But Type 2 Modification is allowed.
// final List<String> name = ["foo", "boo", "moo"];
// name = ["soo","doo"]; // Error: The final variable 'name' can only be set once. Try making 'name' non-final. We can not reassign the value of the variable.
// name.remove("boo"); //Output: [foo, moo]
// name.add("zoo"); //Output: [foo, moo, zoo]

// So, the conclusion is that we can modify the elements of the final variable(Type 2 Modification) but we can't reassign the value of the variable (Type 1 Modification).

//! Example 3: 
//! var keyword: In Dart, the var keyword is used to declare a variable with type inference, meaning the type of the variable is determined by the assigned value. You cannot use var together with an explicit type declaration like int. Example: var int x = 10 is invalid.
//*Here we are doing TYPE 1 modification
// var address = "Zoo Road, AAlubari, Samakhusi";
// address = "Kathmandu"; //Output: Kathmandu
//* Here we are doing Type 2 Modification.
// var address = ["Zoo Road", "AAlubari", "Samakhusi"];
// address.add("Kathmandu"); //Output: [Zoo Road, AAlubari, Samakhusi, Kathmandu]
// }

//? --------------------------------------------------------

//! Assigning Variables to each other

//* Assigning Variables to var keyword
// void main() {
//   String name = "foo";
// var name2 =   name; //Output: foo : Here we are not declaring the variable with its datatype so dart will identify its datatype with respect to its value.
// var name2 = 23; //Output: 23
//   print(name);
// const name2 = name; //Error: Const variables must be initialized with a constant value.
// final name2 = name; //Output: foo
// }

//? --------------------------------------------------------

//* Assigning Variables to const keyword
// void main() {
// const varible must be initialized with a constant value whether it is assigned directly or assigned another variable's value(final variable, var variable, or datatype variable the value of all of these can not be assign to a constant variable value).It must be a const value.

// final name = "foo";
// const name2 = name; //Error: Const variables must be initialized with a constant value.

// String name3 = "zoo";
// const name4 = name3; //Error: Const variables must be initialized with a constant value.

// var name5 = "moo";
// const name6 = name5; //Error: Const variables must be initialized with a constant value.
// }

//? --------------------------------------------------------

//* Assigning Variables to final keyword
// void main() {
//CONST With FINAL
//   const name = "foo";
//   final name2 = name; //Output: foo
//   print(name2);

// VAR With FINAL
//   var name3 = "zoo";
//   name3 = "doo";
//   final name4 = name3; //Output: zoo
//   print(name4);

//Data Type With FINAL
//   String name5 = "moo";
//   final name6 = name5; //Output: moo
//   print(name6);
//   name5 =
//       "doo"; // reassigning the value of name5 = "doo" does not make any change in the value of name6.
//   print(name6);
// }

//? --------------------------------------------------------

//* Inferring Data Type: Dart infers dataType automatically
// void main() {
// It is not necessary to define the datatype of the variable with var, const and final.
// const int age = 30;
// const myAge = 23;
// print(age);
// print(myAge);
// }

//? --------------------------------------------------------

//* Late Keyword: Late keyword is used to declare a variable that will be initialized later.
//* Late variable will be initialized at the time of first use.
//*It is used to avoid null safety.

// void main() {
// late final name = "foo";

//   late final myName = getName();
//   print("We are here");
//   print(myName); // getName Function will be called here. because first time we are using the value of myName variable here.
// }

// String getName() {
//   String name = "foo";
//   print("Get Name Function");
//   return name;
// }

//? --------------------------------------------------------

//* TYPE PROMOTION: Dart will automatically promote the datatype of the variable if it is required.
//* Type Precision: Dart will automatically promote the datatype of the variable if it is required.
// void main() {
  // final double age = 30; //  here we are doing type promotion to set an int value to a double variable by defining its data type. It is possible becuase double has more precision than int.
  // print(age);

  // final int age2 = 30.0; // here dart shows error because type promotion is not possible in this case because int has less precision than double.
// }
