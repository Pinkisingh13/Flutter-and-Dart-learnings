//! 14/01/25 (Operators)

//! Arithmetic Operators
// void main(){
//  const a =5;
//  const b = 3;
//  print(a+b); // Output: 8
//  print(a-b); // Output: 2
//  print(a*b); // Output: 15
//  print(a/b); // Output: 1.6666666666666667
//  print(a~/b); // Output: 1
//  print(a%b); // Output: 2
// }

//? ---------------------------------------------------------

//! Unary Prefix Operators
// void main() {
//* Unary Prefix Operators
// int a = 3;
// int a2 = --a; // first decrement then assign
// print(a); // Output: 2
// print(a2); // Output: 2
// print(++a); // Output: 3

//* Unary bitwise complement operator
// int a = 2;
// print(~a); // Output: -3 How:  2 = 0010 => ~0010 = 1101 = -3

//* Unary minus operator
// int a = 2;
// print(-a); // Output: -2

// int a = 2;
// print(-(-a));  // Output: 2
// }

//? ---------------------------------------------------------

//! Unary Postfix Operators
// void main() {
//* Unary Postfix Operators
// int b = 5;
// int c = b++; // first assign then increment
// print(b); // Output: 6
// print(c); // Output: 5
// c = b;
// print(c); // Output: 6
// print(b++); // Output: 6
// print(b); // Output: 7
// }

//? ---------------------------------------------------------
//!  15/01/25
//! Binary infix Operators
// void main() {
//   const a = 5;
//   print(a + 3); // Output: 8
//   print(a - 3); // Output: 2
//   print(a * 3); // Output: 15
//   print(a / 3); // Output: 1.6666666666666667
//   print(a ~/ 3); // Output: 1
//   print(a % 3); // Output: 2
//   print(a == 3); // Output: false
//   print(a != 3); // Output: true
//   print(a > 3); // Output: true
//   print(a < 3); // Output: false
//   print(a >= 3); // Output: true
//   print(a <= 3); // Output: false
// }

//? ---------------------------------------------------------

//! Bitwise infix and Shift Operators
// void main() {
// const a = 5; // 101
// const b = 3; // 011
// & this operator returns 1 if both bits are 1 otherwise 0
// print(a & b); // Output: 1

// | this operator returns 1 if any of the bits is 1 otherwise 0
// print(a | b); // Output: 7

// ^ this operator returns 1 if only one of the bits is 1 otherwise 0
// print(a ^ b); // Output: 6

// ~ this operator returns the complement of the number
// print(~a); // Output: -6

// << this operator shifts the bits to the left
// print(a << 1); // Output: 10

// >> this operator shifts the bits to the right
//   print(a >> 1); // Output: 2
// }

//? ---------------------------------------------------------

//! Type Promotion
// void main() {
// int a = 1;
// double b = 3.5;
// the output will be in double. because the double type is bigger than int
// print(a + b); // Output: 4.5
// }

//? ---------------------------------------------------------

//! Compound Assignment Operators
// void main(){
//   int a = 5;
//   a += 3; // a = a + 3
//   print(a); // Output: 8
//   a -= 3; // a = a - 3
//   print(a); // Output: 5
//   a *= 3; // a = a * 3
//   print(a); // Output: 15
//    print(a /= 3); // Error: A value of type 'double' can't be assigned to a variable of type 'int'.
//   a ~/= 3; // a = a ~/ 3
//   print(a); // Output: 1
//   a %= 3; // a = a % 3
//   print(a); // Output: 1
//   a <<= 1; // a = a << 1
//   print(a); // Output: 2
//   a >>= 1; // a = a >> 1
//   print(a); // Output: 1
//   a &= 3; // a = a & 3
//   print(a); // Output: 1
//   a |= 3; // a = a | 3
//   print(a); // Output: 3
//   a ^= 3; // a = a ^ 3
//   print(a); // Output: 0
// }

