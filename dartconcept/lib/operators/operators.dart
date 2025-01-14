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
void main() {
//* Unary Postfix Operators
int b = 5;
int c = b++; // first assign then increment
print(b); // Output: 6
print(c); // Output: 5
c = b;
print(c); // Output: 6
print(b++); // Output: 6
print(b); // Output: 7
}
  //* Binary infix Operators
  //* Compound Assignment Operators