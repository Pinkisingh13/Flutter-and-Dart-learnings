//! Starting Date: 17/01/25
//! LATE KEYWORD

//? ---------------------------------------------------------

//! Example1:
//* Late Variables are initialized when they are first used.

//?not do like this
// late String name1;
// void main() {
//? we should not try to code like this because it is not a good practice to print late variable without initializing it.
// try {
//   print(name1);
// } catch (e) {
//   print(e);
// }

//? We should do it like this: 
// late String? name;
// print(name); // null
// }

//? ---------------------------------------------------------
//!Date 18/01/25
//! Example2: Lazy initializatiion to a function result
//Why we are using late keyword?
// void main() {
// here providerName() function is called only when the name variable is used.
// print("Before calling provideName()");
// late String name = provideName();
// print("After calling provideName()");
// print(name); // this is point where late variable is initialized and call the provideName() function.
// }

// String provideName() {
//   print('provideName() called');
//   return 'Dart';
// }

//? ---------------------------------------------------------
//! Example3: Late variable in Classes
// void main() {
//   print('Before creating Student object');
//   Student student = Student();
//   print('After creating Student object');
//   print(student.details);
// }

//Here, late variable inside a Student class  as properties are not resolved still even at the point of constructor call of that class instance. They really really can only resolve when they are first used.
// class Student {
//   late String details = detailOfStudent();
//   final String name;
//   final int age;

//   Student({this.age = 16, this.name = "John"}) {
//     print('Student() constructor called');
//   }
//   String detailOfStudent() {
//     print('calculation() called');
//     return 'Name: $name, Age: $age';
//   }
// }

//? ---------------------------------------------------------
//! Example4: Late variable Dependency
// void main() {
//   final student = Student();

//* The first time when we use this fullName property, it will call the getfullName() function and initialize the fullName property. After that, it will not call the getfullName() function again. Because late variables    need to initialize only once.

// print(student.fullName); // first time function is called
// print(student.fullName); // retuned the value without calling the function
// print(student.fullName); // retuned the value without calling the function

//* Dependent variable checking
//   print(student.fullName);
//   print(student.firstname);
//   print(student.lastname);
// }

// class Student {
// late String fullName = _getfullName();

// Here, fisrtname and lastname are dependent on fullName. if we remove late keyword from firstName and lastName then it will give an error (The instance member 'fullName' can't be accessed in an initializer.).
//   late String firstname = fullName.split(" ").first;
//   late String lastname = fullName.split(" ").last;
//   String _getfullName() {
//     print('getfullName() called');
//     return 'Foo Bar';
//   }
// }

//? ---------------------------------------------------------
//! Example5: Multiple Assignment of late variable
// void main() {
// Student class property `description` is declare with late variable without using final keyword.
// final student = Student();
// student.description = 'Student description';

// print(student.description);
// student.description = 'Student description2';
// print(student.description); // Here we are allowed to reassign the value of late variable.

// Dog class property `description` is declare with late variable and with final keyword.
// we are not allowed to reassign the value of late final variable. Because final variable can be assigned only once.
//   final dog = Dog();
//   dog.description = 'Dog description1';
//   print(dog.description);

//   try {
//     dog.description = 'Dog description2';
//   } catch (e) {
//     print("Erroe from dog.description: $e"); // Error: LateInitializationError: Field 'description' has already been initialized.
//   }

// }

// class Student {
//   late String description;
// }

// class Dog {
//   late final String description;
// }

//? ---------------------------------------------------------
//! Example6: Avoiding a common pitfall with late Variables
//* Checking how a late variable is dependent on other late final variable.
// void main() {
// final student = Student();

// we should avoid doing this in real code since its against dart's recommendation. instead use nullable values.
// try {
// fullname is depend on firstname and lastname. So if we try to  print fullName without initializing firstname and lastname then it will give an error.
//   print(student.fullName);
// } catch (e) {
//   print("Error: $e");
// }

// student.firstname = 'John';
// student.lastname = 'Doe';
// print(student.fullName); // OUTPUT: John Doe
// }

// class Student {
//   fullname is depend on firstname and lastname.
//   late final String firstname;
//   late final String lastname;
//   late String fullName = " $firstname $lastname";
// }

//? ---------------------------------------------------------
//! Example7: Initializing late variable
// Late  final variable allow initialization only once and not more.
// void main() {
//   late final bool isTeenager;
//   const age = 12;
//   if (age >= 13 && age <= 20) {
//     isTeenager = true;
//   } else if (age < 13) {
//     isTeenager = false;
//   }

//   try {
//     isTeenager = false; // at this point it will give an error because late final variable can be initialized only once.
//     print("isTeenager: $isTeenager");
//   } catch (e) {
//     print("Error: $e");
//   }
// }

//? ---------------------------------------------------------

//! Example 8: Assigning late variables to non late variables
// Assigning a late variable to a non-late variable is will resolve the late variable immediately.
//This happen because a non-late variable always needed its value immediatel after assignment.

// void main() {
//! Sub Example 1:
// print("late fullName() is being called");
// late final String fullName = getFullName();
//* Here, fullName is resolved immediately after assigning it to resolvedFullName.
// final resolvedFullName = fullName;
// print("After calling fullName()");
// print("fullName: $resolvedFullName");

//! Sub Example 2:
// print("late fullName() is being called");
// late final String fullName = getFullName();
// late final String fullName2 = fullName;
// print("After calling fullName()");
// print("fullName2: $fullName2"); // Here, fullName is resolved  when fullName2 is used.
// }

// String getFullName(){
//   print('getFullName() called');
//   return 'John Doe';
// }

//? ---------------------------------------------------------

//! Example 9: Avoiding Constructor Initialization of late variables
//* late instance variables should not be initialized in the constructor Otherwise, they won't be lazy.
// void main() {

  //!Wrong way of initializing late variable in constructor
  // final johnDoe = Person(name: 'John Doe');
  // final janeDoe = Person(name: 'Jane Doe');

  // when we create an instance of WrongImplimentationOfFamily class, it will call  the constructor and because of that getMemberCount() function is called. So, late variable memberCount is not lazy initialized.
  // final doeFamily = WrongImplimentationOfFamily(members: [johnDoe, janeDoe]); // getMemberCount() called
  // print(doeFamily); //Instance of 'WrongImplimentationOfFamily'
  // print('Member count: ${doeFamily.memberCount}'); // 2


//!Right way of not initializing late variable in constructor
  // final johnSmith = Person(name: 'John Smith');
  // final janeSmith = Person(name: 'Jane Smith');

  // when we create an instance of RightImplimentationOfFamily class, it will call  the constructor and because of that getMemberCount() function is called. So, late variable memberCount is not lazy initialized.
  // final smithFamily = RightImplimentationOfFamily(members: [johnSmith, janeSmith]); //'RightImplimentationOfFamily() constructor called' 
  // print(smithFamily); //Instance of 'RightImplimentationOfFamily'
  // print('Member count: ${smithFamily.memberCount}'); // here memberCount is lazy initialized. // getMemberCount() called // 2

// }

// class Person {
//   final String name;

//   Person({
//     required this.name,
//   }) {
//     print('Person() constructor called');
//   }
// }

// class WrongImplimentationOfFamily {
//   final Iterable<Person> members;
//   late int memberCount;

// here getMemberCount() function is called when the constructor is called. So, late variable memberCount is not lazy initialized.
// So, never initialize late variable in the constructor.Because it will call immediately when the constructor is called.
//   WrongImplimentationOfFamily({
//     required this.members,
//   }) {
//     memberCount = getMemberCount();
//   }

//   int getMemberCount() {
//     print('getMemberCount() called');
//     return members.length;
//   }
// }

// class RightImplimentationOfFamily {
//   final Iterable<Person> members;

// This is how we should use late variables if we assign them to a return value of a function inside constructor they  are going to be immediately resolved  and that's really really bad. if you are not using them that is  the really bad practice.
//   late int memberCount = getMemberCount();
//   RightImplimentationOfFamily({
//     required this.members,
//   }) {
//     print('RightImplimentationOfFamily() constructor called');
//   }

//   int getMemberCount() {
//     print('getMemberCount() called');
//     return members.length;
//   }
// }


//! Finished Date: 18/01/25


