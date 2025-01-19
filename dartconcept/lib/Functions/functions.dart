//! Started on 18/01/25
//! FUNCTIONS

//?-------------------------------------------------------------------

//! Example 1: Anatomy of a Function
// Function is a block of code that performs a specific task. It is used to break the code into smaller parts and make it more organized and manageable.
// void main() {
//   printName(); // Output: John Doe
// }

// void printName() {
//   print("John Doe");
// }

//?-------------------------------------------------------------------

//! Example 2: Omitting Return Type

// void main() {
//   printHello(); // Output: Hello
// }
//Here, we have omitted the return type of the function printHello(). Dart will automatically consider it as void. But it is not a good practice to omit the return type of a function. It is always recommended to specify the return type of a function.
// printHello(){
//   print("Hello");
// }

//?-------------------------------------------------------------------

//! Example 3: Dynamic Return Type
// Functions that does not have return type, returned dynamic type.
//Every function return null by default if it does not have a return type.
// void main() {
//   print(doNothing()); // This will print: null
// }

// doNothing() {}

//?-------------------------------------------------------------------

//! Example 4: No Retrun Value
// void main() {
//   greet();

//You would never invoke the function and then assign the result to a variable.
// final void result = greet(); // this is wrong
// print(result); // Error: This expression has a type of 'void' so its value can't be used
// }

// void greet() {
//   print("Greetings!");
// }

//?-------------------------------------------------------------------

//! Example 5: Named Parameters
// Named parameters are optional parameters that can be passed to a function in any order.
//Name parameters have to have default values. If you don't provide a default value, you will get a compile-time error.

// void main() {
//   //!Sub example 1
// greet("Dart"); // Output: Hello Dart

//   //!Sub example 2
//   greet(); // Output: Hello Null
//   greet(name: null); // Output: Hello Null

//   //!Sub example 3
//   greet(name: "Dart"); // Output: Hello Dart
// }

//!Sub example 1
//Error: The parameter 'name' can't have a value of 'null' because of its type, but the implicit default value is 'null'.
// Try adding either an explicit non-'null' default value or the 'required' modifier
// void greet({String name}) {
//   print("Hello $name");
// }

//!Sub example 2
//Point1: //To fix the error, we need to provide a default value to the name parameter. Either String name = "World" or String? name

// Point2: //If you don't provide a value to the name parameter, it will be null by default.

// void greet({String? name}) {
//   print("Hello $name");
// }

//!Sub example 3
// if it has a default value, we cant give parameter as null.
// void greet({String name = "World"}) {
//   print("Hello $name");
// }

//?-------------------------------------------------------------------
//!Date: 19/01/25
//! Example 6: Default Value for named parameters
// Default parameters are optional parameters that take a default value if no value is provided.
// void main() {
//When we dont pass parameter, it will take default value if we provide.
//   greet(); // Output: Hello World
//   greet(name: "Dart"); // Output: Hello Dart
//   greet(name: null);
// }

// void greet({String? name = "World"}) {
//   print("Hello $name");
// }

//?-------------------------------------------------------------------

//! Example 7: Non optional named parameters with default values

// void main() {
//   greet(); // Output: Hello World
//   greet(name: "Dart"); // Output: Hello Dart
// }

//Here, the name parameter is a non-optional named parameter with a default value. It means that you can't call the greet(name: null) function with providing a null value to the name parameter. If you don't provide a value, it will take the default value "World".
// void greet({String name = "World"}) {
//   print("Hello $name");
// }

//?-------------------------------------------------------------------

//! Example 8: Required Parameters

// void main() {
// greet(); // Error: The named parameter 'name' is required, but there's no corresponding argument.
//   greet(name: "Dart"); // Output: Hello Dart
// }

//Here, the name parameter is a required named parameter. It means that you must provide a value to the name parameter while calling the greet() function.
// void greet({required String name}) {
//   print("Hello $name");
// }

//?-------------------------------------------------------------------

//! Example 9: Optionality of Required Named Parameters

// void main() {
// because function has required parameter, we have to pass some value to it.
// greet(); // Error: The named parameter 'name' is required, but there's no corresponding argument.

// In the above example we can not pass null value to the required parameter because that is not optional parameter. but here we can pass null value to the required parameter because we have used optional ? operator in front of it.
// greet(name: null); // Output: Hello null
// }

//Here, the name parameter is a required named parameter with optional ? operator in front of it. It means that you can provide a null value to the name parameter while calling the greet() function.
// void greet({required String? name}) {
//   print("Hello $name");
// }

//?-------------------------------------------------------------------

//! Example 10: Ordering of  Named Parameters
// void main() {
// greet(msg: "Hello", name: "Dart"); // Output: Hello Dart
// greet(name: "Dart", msg: "Hello"); // Output: Hello Dart
// greet(name: "Dart"); // Output: null Dart
// greet(msg: "Hello"); // Output: Hello null
// greet(); // Output: null null
// }

// void greet({String? name, String? msg}) {
//   print("$msg $name");
// }

//?-------------------------------------------------------------------

//! Example 11: Positional Parameters
// Positional parameters are required parameters that are passed to a function in a specific order.
// void main() {
// These are invalid codes
// greet(); // Error: Too few positional arguments: 1 required, 0 given
// greet("Dart"); // Error: Too few positional arguments: 2 required, 0 given.

// These are valid codes
//   greet("x", "Hello"); // Output: Hello x
// }

// Positional parameters are enclosed in square brackets [].
// Order of the parameters is important in positional parameters.
// Positional parameters do not have default values.
// positional parameters are by default required parameters. So, we dont need to use required keyword.
// void greet(String name, String msg) {
//   print("$msg $name");
// }

//?-------------------------------------------------------------------

//! Example 12: Optional Positional Parameters
// void main() {
// greet1(); // Output: Hello World
// greet1("Dart"); // Output: Hello Dart
// greet1("Dart", "Hi"); // Output: Hi Dart

//   greet2(); // Output: null null
//   greet2(null, null);
//   greet2("Dart"); // Output: null Dart
//   greet2("Dart", "Hi"); // Output: Hi Dart

// }

//!Sub example 1
// Here, the name parameter is not optional positional parameter but with a default value. It means that you can call the greet() function without providing any value to the name parameter. If you don't provide a value, it will take the default value "World".
// void greet1([String name = "World", String msg = "Hello"]) {
//   print("$msg $name");
// }

//!Sub example 2
// Here, the name parameter is an optional positional parameter without a default value. It means that you can call the greet() function without providing any value to the name parameter. If you don't provide a value, it will be null by default.
// void greet2([String? name, String? msg]) {
//   print("$msg $name");
// }

//?-------------------------------------------------------------------

//! Example 13: Mixing Positional and Named Parameters
// void main() {
//   greet("Dart"); // Output: Dart Hello
//   greet("Dart", msg: "Hi"); // Output: Dart Hi
//   greet("Dart", msg: null); // Output: Dart null
// }

// void greet(String name, {String? msg = "Hello"}) {
//   print(" $name, $msg");
// }

//?-------------------------------------------------------------------

//! Example 14: Return Keyword
// void main() {
//   print(sum(2, 2)); // Output: 4
//   print(sum()); // Output: 8

  //here it will take second parameter as default value in this case it will be 4.
//   print(sum(3)); // Output: 7
// }

// int sum([int a = 4, int b = 4]) {
//   int result = a + b;
//   return result;
// }


//?-------------------------------------------------------------------

//! Example 15: Functions as First-Class Citizens
// Dart supports functions as first-class citizens, which means that functions can be assigned to variables, passed as arguments to other functions, and returned from other functions.

// void main() {
//   print(minus(5, 3)); // Output: 2

//   print(perform(5, 3, minus)); // Output: 2
  
// }

// int perform(int a, int b ,int Function(int,int) minus)=> minus(a, b);
// int minus(int a, int b) => a - b;


//?-------------------------------------------------------------------

//! Example 16: Returning Function from Function
// void main() {
  //!sub example 1
// print(perform()(3,5)); // Output: 8


//!sub example 2
// print(perform()(3,5)); // Output: 8

//!sub example 3
// Function add = perform(3,5);
// print(add()); // Output: 8
//        //!or
// print(perform(3,5)()); // Output: 8
// }

//!Sub example 1: 
// Function perform(){
//   return add;
// }
// int add(int a, int b) =>  a + b;

//!Sub example 2:
// Function perform() => (int a, int b) => a + b;

//!Sub example 3:
// Function perform(int a, int b) => () => a + b; 

//?-------------------------------------------------------------------
//!Finished on 19/01/25