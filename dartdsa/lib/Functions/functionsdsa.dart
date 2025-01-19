//! 19/01/25

//! Functions Basic, Intermediate, Advanced Questions and Solutions
//?-------------------------------------------------------------------

//! Question 1:  Simple Function Creation:  Write a function called greetUser that takes a String name as an argument and prints "Hello, [name]!"

// void main() {
//   greet("joe");
// }

// void greet(String name) {
//   print("Hello");
// }

//! Question 2: Default Parameter:  Create a function called calculateDiscount that takes a double price and an named optional double discountPercent (default value is 10). The function should return the final price after applying the discount.

// void main() {
//   print(calculateDiscount(100, discountprice: 20));
// }

// double calculateDiscount(double price, {double discountprice = 10.00}) {
//   double discountAmount = (price * discountprice) / 100;
//   double finalPrice = price - discountAmount;
//   return finalPrice;
// }

//! Question 3: Named Parameters: Write a function createUserProfile that takes named parameters: String name, int age, and String city. It should return a formatted string, e.g., "Name: John, Age: 25, City: New York".

// void main() {
//   print(createUserProfile(name: "Joe", age: 40, city: "N"));
// }

// String createUserProfile(
//     {required String name, required int age, required String city}) {
//   return "Name: $name, Age:$age, City: $city";
// }

//! Question 4: Arrow Functions: Create a function squareNumber that takes an integer and returns its square using an arrow function.

// void main() {
//   print(squareNumber(2));
// }
// int squareNumber(int sqr) => sqr *= 2;

//?-------------------------------------------------------------------

//! Intermediate Level Questions

//! Question 5: Anonymous Functions: Use an anonymous function to filter even numbers from a list of integers. For example: Input: [1, 2, 3, 4, 5] → Output: [2, 4]

// void main() {
//   List<int> list = [1, 2, 3, 4];
//   print(filterList(list));
// }

// Function filterList = (List<int> list) {
//   List<int> result = list
//       .where(
//         (element) => element % 2 == 0,
//       )
//       .toList();
//   return result;
// };

//! Question 6:  Higher-Order Functions: Write a function applyOperation that takes two integers and a function (operation) as parameters. Use this function to perform addition, subtraction, multiplication, or division.

//* A higher-order function is a function that:
//* Accepts another function as a parameter.
//* Returns a function as a result (optional).
// void main() {
//   print(applyOperation(5, 2, add));
// }

// int applyOperation(int a, int b, Function(int, int) operation) {
//   return operation(a, b);
// }

// int add(int a, int b) => a + b;
// int minus(int a, int b) => a - b;

//!Question no 7: Recursive Functions: Write a recursive function factorial that calculates the factorial of a given number.

// void main() {
//   print(findFact(5));
// }

// int findFact(int n) {
//   if (n <= 1) {
//     return 1;
//   }
//   return n*findFact(n-1);
// }

// ! Question no 8: Create a function counter that returns a closure. The closure should increment a counter variable and return its current value each time it’s called

// void main(List<String> args) {
//  print(counter(3)());

// }

// Function counter(int count) {
//   return () {
//     count++;
//     return count;
//   };
// }

//! Question 9: Function Overloading (Optional Parameters): Create a function calculateArea that
//! calculates the area of either a rectangle or a circle.
//! For a rectangle, it should accept length and breadth; for a circle, it should accept radius.

// void main(List<String> args) {
//   print(calculateArea(10, 20, null));
// }

// double calculateArea(double? length, double? breadth, double? radius) {
//   return radius != null
//       ? 3.14 * radius * radius
//       : (length != null && breadth != null)
//           ? length * breadth
//           : throw ArgumentError("Invalid arguments");
// }
