//! Starting Date: 10/04/25
//! EXCEPTION AND ERRORS

//? ---------------------------------------------------------------------------------------------------------

//! Example 1: Intro

//* Exception and error has one main big difference is exceptions are meant to be caught whereas errors are not meant to be caught. so an exception is something that you as a programmer can not plan for such as for instance getting data from user and passing it to a class that does something and then that class can not accept for instance that value however an error is when something is clearly  documented as being acceptable from values for instance 0 to 100, but then you pass the value of 3000 to it then that would be an error because it's a programmer error  that caused the problem or error basically. so just know that distinction between exception and errors and try not to catch your errors that's pretty much the only thing you really need to know as the biggest distinction between these two.

//? ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example 2: Throwing in class constructor

// void main(){
// tryCreatingPerson(age: 20);
// tryCreatingPerson(age: -1);
// tryCreatingPerson(age: 70);
// tryCreatingPerson(age: 145);
// tryCreatingPerson(age:  100);
// }

// void tryCreatingPerson({int age =0}){
// try {
//   print(Person(age: age).age);
// } catch (e) {
//   print(e);
// }
// print("--------------------------");
// }
// class Person {
//   final int age;
//   Person({ required this.age}){
//     if (age < 0) {
//       throw Exception("Age must be positive");
//     }else if(age > 140){
//     throw "Age must be less than 140";
//     }
//   }
// }

//? ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example 3: Custom Exception Class
// void main(List<String> args) {
// tryCreatingPerson(age: 20);
// tryCreatingPerson(age: -1);
// tryCreatingPerson(age: 70);
// tryCreatingPerson(age: 145);
// tryCreatingPerson(age:  100);
// }

// class InvalidAgeException implements Exception{
//  final int age;
//  final String message;

//  InvalidAgeException(this.age, this.message);

//  @override
//   String toString() {
//   return "InvaligAgeException, $age, $message";
//   }
// }
// class Person {
//   final int age;
//   Person({ required this.age}){
//     if (age < 0) {
//       throw InvalidAgeException( age,"Age must be positive");
//     }else if(age > 140){
//     throw  InvalidAgeException(age, "Age must be less than 140");
//     }
//   }
// }
// void tryCreatingPerson({int age =0}){
// try {
//   print(Person(age: age).age);
// } on InvalidAgeException catch (e, stackTrace) {
//   print(e.runtimeType);
//   print(stackTrace);
//   print(e);
// }
// print("--------------------------");
// }

//? ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example 4: ReThrow
// void main(List<String> args) {
//   try {
// tryCreatingPerson(age: 20);
// tryCreatingPerson(age: -1);
// tryCreatingPerson(age: 145);

//   } catch (e, stackTrace) {
//     print(e);
//     print(stackTrace);
//   }
// }

// class InvalidAgeException implements Exception{
//  final int age;
//  final String message;

//  InvalidAgeException(this.age, this.message);

//  @override
//   String toString() {
//   return "InvaligAgeException, $age, $message";
//   }
// }
// class Person {
//   final int age;
//   Person({ required this.age}){
//     if (age < 0) {
//       throw InvalidAgeException( age,"Age must be positive");
//     }else if(age > 140){
//     throw  InvalidAgeException(age, "Age must be less than 140");
//     }
//   }
// }
// void tryCreatingPerson({int age =0}){
// try {
//   print(Person(age: age).age);
// } on InvalidAgeException {
//   rethrow;
// } catch (e, stackTrace) {
//   print(e.runtimeType);
//   print(stackTrace);
//   print(e);
// }
// print("--------------------------");
// }

//? ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example 5: Finally keyword
// void main(List<String> args) async{

//   final db = Database();

//   try {
//     await db.open();
//     await db.getData();
//   } on DatabaseNotOpenException{
//     print("We forgot to open the database");
//   }finally{
//     print("Finalling closing the database");
//    await db.close();
//   }
//   }

// class Database {
//   bool _isdbOpen = false;

//   Future<void> open() {
//     return Future.delayed(Duration(seconds: 1), () {
//       _isdbOpen = true;
//       print("Database opened");
//     });
//   }

//   Future<String> getData(){
//     if (!_isdbOpen) {
//       throw DatabaseNotOpenException();
//     }
//     return  Future.delayed(Duration(seconds: 1), () {
//      return "Data";
//     });
//   }

//   Future<void> close(){
//     return  Future.delayed(Duration(seconds: 1), () {
//       _isdbOpen= false;
//       print("Databse closed");
//     });
//   }

// }

// class DatabaseNotOpenException implements Exception  {
//   @override
//   String toString() => "Database not opened exception";
// }

//? ---------------------------------------------------------------------------------------------------------------------------------------------------------------------


//! Example 6: Custom throws annotation

// void main(List<String> args) {
//   try {
//     print("Dog aged 11 is going to run..");
//     Dog(isTired: false, age: 11).run();
//   } catch (e) {
//     print(e);
//   }
// }

// class Throws<T> {
//   final  List<T> exceptions;
//  const Throws(this.exceptions);


// }

// class DogIsTooOldException implements Exception{
//   const DogIsTooOldException();
// }
// class DogIsTiredException implements Exception{
//   const DogIsTiredException();
// }

// class Animal  {
//   final int age;
//  const  Animal({required this.age});


// @Throws([UnimplementedError])
// void run()=> throw UnimplementedError();


// }
// class Dog extends Animal {
//   final bool isTired;
//  const Dog({required this.isTired, required super.age});

// @Throws([DogIsTooOldException(), DogIsTiredException()])
// @override 
// void run() {
//   if (age > 10) {
//     throw const DogIsTooOldException();
//   }else if(isTired){
//   throw const DogIsTiredException();
//   }else{
//     print("Dog is running");
//   }
//     super.run();
//   }
// }

//? ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example 7: Throwing Errors

void main(List<String> args) {
  final person =  Person(age: 10);
  final person1 =  Person(age: -1);
  print("person : $person and person1: $person1");

  try {
    /// errors are not created to be caught, so if you get an error make sure that you change your prohrammer in order to avoid that error and exception however are meant to be caught.
    person1.age = -2;
    print(person1);
  } catch (e) {
    print(e);
  }finally{
    print(person1);
  }
}


class Person {
  int _age;
  Person({required int age}) : _age = age;

  int get age => _age;

  set age(int value){
   if (value < 0) {
     throw ArgumentError("Age can not be negative");
   }
   _age = value;
  }
  

  @override
  String toString() => 'Person(age: $age)';
}