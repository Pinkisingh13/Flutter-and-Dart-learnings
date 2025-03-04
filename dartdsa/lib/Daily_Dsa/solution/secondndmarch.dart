//! Todays daily question is:


//?--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 1️⃣ Lists & Spread Operator

//!Question no 1: Write a function that takes two lists of integers and returns a new list that contains all the unique elements from both lists in sorted order. You must use the spread operator.

// //* Solution:
// void main(List<String> args) {
//   final ans = uniquesItem([3,1,4], [4,2,3,5]);

//   print(ans);
// }

// List<int> uniquesItem (List<int> n1, List<int> n2){

// final List<int> result = {
//   ...n1, ...n2
// }.toList();

// result.sort();

// return result;

// }
//?--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 2️⃣ Maps & Iterables
//! Question  no 2: Given a map of students and their marks, write a function that returns a list of names of students who scored more than 75.

// void main(List<String> args) {
//   final students = {'Alice': 80, 'Bob': 65, 'Charlie': 90, 'David': 70};

//   print(filterList(students));
// }

// List<String> filterList(Map<String, int> map) {

  //! first way
  // final List<String> studentNames = [];
  // for (var e in map.entries) {
  //   if (e.value > 75) {
  //     studentNames.add(e.key);
  //   }
  // }
  // return studentNames;


  //! Second Way
//   return map.entries.where((element) => element.value > 75,).map((e) => e.key).toList();

// }

//?--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 3️⃣ Oops & Mixins

//! Question no 3: Create a mixin called Swimmer that has a method swim(). Then, create two classes Fish and Duck that use this mixin. When calling swim(), it should print: 
//"Fish is swimming" for Fish
//"Duck is swimming" for Duck


void main(List<String> args) {
  final fish = Fish();
  final duck = Duck();

  fish.swim();
  duck.swim();
}
mixin Swimmer {
  void swim(){
    print("$runtimeType is swimming");
  }
}

class Fish with Swimmer{}
class Duck with Swimmer{}