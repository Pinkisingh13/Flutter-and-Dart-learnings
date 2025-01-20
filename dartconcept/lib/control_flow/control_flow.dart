//! Started on: 20/01/25
//! Control Flow in Dart
//? ---------------------------------------------------------

//! EXAMPLE 1: If-Else Statement
// void main() {
//  const yourName = "Foo";
//  const myName = "Bar";
//   if (yourName == myName) {
//     print("We have the same name");
//   } else {
//     print("We have different names");
//   }
// }

//? ---------------------------------------------------------

//! EXAMPLE 2: Classic For-Loops

// void main() {
//   const names = ["Foo", "Bar", "Baz"];
// for (var i = 0; i < names.length; i++) {
//   print(names[i]);
// }
//   for (var i = names.length - 1; i >= 0; i--) {
//     print(names[i]);
//   }
// }

//? ---------------------------------------------------------

//! EXAMPLE 3: Modern For-Loops

// void main() {
//   const names = ["Foo", "Bar", "Baz", 'Qux'];

//!Sub-Example 1: for-in loop
// for (var name in names) {
//   print(name);
// }

//!Sub-Example 2: Continue Keyword
//continue keyword is used to skip the current iteration and move to the next iteration.

// for (var name in names) {
// if (!name.startsWith('B')) {
//   print(name);
// }

// if(name.startsWith('B')){
//   continue;
// }else{
//   print(name);
// }

//Here, if condition will be met at the last index where array length is finish but in condition body we are giving continue keyword so what will happen? It will come out of the loop because Qux is the last element in the array. Continue keyword doenot mean that it will force the loop to continue.
//   if (name == 'Qux') {
//     continue;
//   }else{
//     print(name);
//   }

// }

//!Sub-Example 3: Break Keyword
//break keyword is used to terminate the loop if at any point the condition is met.
// for (var name in names) {
//   if (name.startsWith('B')) {
//     break;
//   } else {
//     print(name); //Output: Foo
//   }
// }

//!Sub-Example 4: Backward in Modern loop
// for (var name in names.reversed) {
//   print(name);
// }

//!Sub-Example 5: create with range in Modern loop
// for (int i in Iterable<int>.generate((names.length))) {
//   print(names[i]);
// }
// }

//? ---------------------------------------------------------

//! EXAMPLE 4: While Loops

// void main() {
//   List<String> names = ["Foo", "Bar", "Baz", "Qux"];

//!Sub-Example 1: While Loop - Right  Increment behaviour
// var i = 0;
// while (i < names.length) {
// print(names[i++]);
//    //*Similar
//   print(names[i]);
//   i++;
// }

//! Sub-Example 2: While Loop - Wrong Increment behaviour
// var i = -1;
// Here we are incrementing the value of i before the Condition statement. So, the value of i will be 0 in the first iteration and then it will check the condition that value of i < names.length, that it print the value of names[0] which is Foo. In the next iteration, the value of i will be 1 and it will print the value of names[1] which is Bar. So, the output will be Foo, Bar, Baz, Qux.
// while (++i < names.length) {
//   print(names[i]);
// }

//! Sub-Example 3: While Loop - Reverse Element in While Loop
//   var i = names.length;
//   while (--i >= 0) {
//     print(names[i]);
// }

//? -----------------

//   var i = names.length-1;
//   while (i >= 0) {
//     print(names[i]);
//     i--;
// }

//? -----------------

// var i = names.length - 1;
// while (i >= 0) {
//   print(names[i--]);
// }

//! Sub-Example 4: Execution of index not at the begining of the loop ===> Do-While Loop
// var i = 0;
// do {
//   print(names[i++]);
// } while (i < names.length);

//? -----------------

//! Do While Loop- Break and Continue Keyword
// var i = 0;
// do {
//   print(names[i++]);

//   if (i == 2) {
//     break;
//   }
// } while (i < names.length);

//   //? -----------------

//   var i = 0;
//   do {
//     final name = names[i++];
//     if (name == "Baz") {
//       continue;
//     }
//     print(name);

//   } while (i < names.length);
// }

//? ---------------------------------------------------------

//! EXAMPLE 5: Switch Case Statement

// void main() {
//   const String name = "Foo";
//   switchDescribe(name);
// }

// void switchDescribe<T>(T value) {
//   switch (T) {
//     case String:
//       print("It's a String");
//       break;
//     case int :
//       print("It's an Integer");
//       break;
//     default:
//       print("It's something else");
//   }
// }

//? ---------------------------------------------------------

// //! EXAMPLE 6: For Loop Over Map
// void main(){
//   const Map<String, int> ages = {
//     "Foo": 29,
//     "Bar": 30,
//     "Baz": 31,
//   };

//   for (var entry in ages.entries) {
//     print("${entry.key} is ${entry.value} years old");
//   }
// }

//? ---------------------------------------------------------

//! EXAMPLE 7: Switching Over Integer Values
// ask  user for their age and if they say 10 years old, then output is "You are 10 years old great" and if they say 20 years old, then output is "You are 20 years old still very young" and if they say 30 years old, then output is "You are an adult! " and if they say 40 years old, then output is "You are old" and if they say 50 years old, then output is "You are 50 years old".

// import 'dart:io';

// void main(List<String> args) {
//   do {
//     stdout.write("Enter your age or type 'exit': ");
//     final inputAge = stdin.readLineSync()!;

//     if (inputAge == "exit") {
//       break;
//     } else if (inputAge.isEmpty) {
//       stdout.write("Plexitease enter a valid age");
//       continue;
//     }

//     final age = int.parse(inputAge);
//     switch (age) {
//       case 10:
//         print("You are 10 years old great");
//         break;
//       case 20:
//         print("You are 20 years old still very young");
//         break;
//       case 30:
//         print("You are an adult!");
//         break;
//       case 40:
//         print("You are old");
//         break;
//       case 50:
//         print("You are 50 years old");
//         break;
//       default:
//         print("You are $age years old");
//     }
//   } while (true);
// }

//? ---------------------------------------------------------

//! EXAMPLE 8: Switching Over String Values

// import 'dart:io';

// void main(List<String> args) {
//   do {
//     stdout.write("Enter your name or type 'exit': ");
//     final inputName = stdin.readLineSync()!;
//     if (inputName == "exit") {
//       break;
//     } else if ((inputName.isEmpty) || (inputName == " ")) {
//       stdout.write("Please enter a valid name");
//       continue;
//     }
//     switch (inputName.toLowerCase()) {
//       case "Foo":
//       case "Bar":
//         print("Hello ${inputName.toLowerCase()}");
//         break;
//       case "Baz":
//         print("Hello Baz");
//         break;
//       default:
//         print("Hello Stranger");
//     }
//   } while (true);
// }

//? ---------------------------------------------------------
//!Finished on: 20/01/25