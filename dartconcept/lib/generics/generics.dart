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

// void main(List<String> args) {
//   print(doTypesMatch(1, 2));
//   print(doTypesMatch(1, 2.2));
//   print(doTypesMatch(1, "Bar"));
//   print(doTypesMatch("Foo", "Bar"));
// }

// bool doTypesMatch<L, R>(L first, R second)=> L==R;

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example no 3: Constrained Generic types Definitions

// void main(List<String> args) {
//   const momAndDad = {
//     'mom': Person(),
//     "dad": Person(),
//   };
//   const brotherAndSisterAndMyFish = {
//     'Brother': Person(),
//     "Sister": Person(),
//     "Fishy": Fish()
//   };

//   final allValue = [
//     momAndDad,
//     brotherAndSisterAndMyFish,
//   ];
  
//   describe(allValue);
//   // print(allValue);
// }

// typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

// void describe(Iterable<BreathingThings> values) {
// for (var v in values) {
//   for (var keyAndValue in v.entries) {

//     print("Will call breathe() on ${keyAndValue.key}");
//     keyAndValue.value.breathe();
//   }
// }
// }

// mixin CanBreathe {
//   void breathe();
// }

// class Person with CanBreathe {
//   const Person();
//   @override
//   void breathe() {
//     print("Person is breathing...");
//   }
// }

// class Fish with CanBreathe {
//   const Fish();
//   @override
//   void breathe() {
//     print("Fish is breathing...");
//   }
// }


