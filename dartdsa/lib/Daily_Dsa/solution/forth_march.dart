//! Todays daily question is:

//!Maps

//?----------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Question no 1: Given a map of students and their marks, write a function that returns a list of names of students who scored more than 75.

// void main(List<String> args) {
//   final students = {'Alice': 80, 'Bob': 65, 'Charlie': 90, 'David': 70};

//   print(filterList(students));
// }

// List<String> filterList(Map<String, int> map) {
//   // ! first way
//   final List<String> studentNames = [];

//   for (var e in map.entries) {
//     if (e.value > 75) {
//       studentNames.add(e.key);
//     }
//   }
//   // return studentNames;

//   // ! Second Way
//   return map.entries
//       .where(
//         (element) => element.value > 75,
//       )
//       .map((e) => e.key)
//       .toList();
// }

//!Question no 2: Create a function that swaps the keys and values of a given map.

// void main(List<String> args) {
//   final m = {"a": 1, "b": 2, "c": 3};
  
//   print(m);

//   swapKeysAndValues(m);
// }

// void swapKeysAndValues(Map m) {
//   final map = {};
//   m.forEach((key, value) {
//     print(key);
//     map[value]=key;
//   });
//   print(map);
// }
