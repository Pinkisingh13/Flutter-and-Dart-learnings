//! 01/03/25

//! Generics

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example 1: Generics Integer and Double

// void main(){
//! Without using generics
// final intVal = eitherIntorDouble(WhatToReturn.int);
// final doubleVal = eitherIntorDouble(WhatToReturn.double);
// print(intVal);
// print(doubleVal);

//! With using generics
// final int intVal = eitherIntorDouble();
// final double doubleVal = eitherIntorDouble();
// print(intVal);
// print(doubleVal);

// }


//! Without using generics
// enum WhatToReturn{
//   int, double
// }

// num eitherIntorDouble (WhatToReturn whatToReturn){

//   switch (whatToReturn) {
//     case WhatToReturn.int: 
//     return 1;
    
//     case WhatToReturn.double: 
//     return 1.0;
//   }
// }


// Instead of using a switch statement, use if statements to check the type of T. This is because Dart's switch statement does not support type checking
//! With Using Generics
// T eitherIntorDouble<T extends num>() {
//   if (T == int) {
//     return 1 as T;
//   } else if (T == double) {
//     return 1.20 as T;
//   } else {
//     throw Exception("Not Supported");
//   }
// }


//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example no 2: Type Matching

void main(List<String> args) {
  final checking = checkType(2, 2.00); 
  print(checking);

}
bool checkType<T>(T first, T second){
 
 if (first == second) { 
   return true;
 }
 return false;
}