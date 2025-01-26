//! 26/01/25
// These Questions is from chatgpt

// ?-----------------------------------------------------

//! Question no 1: Count the frequency of characters in a string using a map.
// void main(List<String> args) {
//   final String s = "abracadabra";

//   final Map<String, int> freq = {};

//   for (var i = 0; i < s.length; i++) {
//     if (freq.containsKey(s[i])) {
//       freq[s[i]] = freq[s[i]]! + 1;
//     } else {
//       freq[s[i]] = 1;
//     }
//   }
//   print(freq);
// print(freq);
// }

//?-----------------------------------------------------------------

//! Question no 2: Create a map of country names and their capitals and allow lookups.

// void main(List<String> args) {
//   final map = {
//     'USA': 'Washington D.C.',
//     'India': 'New Delhi',
//     'UK': 'London',
//     'France': 'Paris',
//     'Germany': 'Berlin',
//   };
// String lookUpCapital(String country) {
//   return map[country] ?? 'Capital not found';
// }

// print(lookUpCapital('India'));
// }

//?--------------------------------------------------------------

//! Extra Question: Create a map of student names and their marks in a subject. Find the student with the highest marks.

// void main(List<String> args) {
//   final Map<String, int> studentMarks = {
//     'Alice': 90,
//     'Bob': 80,
//     'Charlie': 95,
//     'David': 85,
//   };
//   final maxEntry = studentMarks.entries.reduce((value, element) {
//     return element.value > value.value ? element : value;
//   });

//   print(maxEntry);
// }

//! Question no 3: Write a function to sort a map by its keys.

// void main(List<String> args) {
//   final Map<String, int> studentmap = {
//     'David': 85,
//     'Bob': 80,
//     'Alice': 90,
//     'Charlie': 95,
//   };

//   var sortedMap = sortedMapKeys(studentmap);
//   print(sortedMap);
// }

// Map<String, int> sortedMapKeys(Map<String, int> map) {
//   var sortedKeys = map.keys.toList()..sort();
//   return {
//     for (var key in sortedKeys)
//     key: map[key]!,
//   };
// }

//?------------------------------------------------------------------------------------------------------------------------------------------

//! Question no 4: Filter a map to retain only values greater than 50.
// void main(List<String> args) {
//   final Map<String, int> valuesMap = {
//     'first': 85,
//     'second': 23,
//     'third': 50,
//     'forth': 55,
//   };

//   final ans = valuesMap.entries.where(
//     (element) => element.value > 50,
//   );
//   print(ans); //(MapEntry(first: 85), MapEntry(forth: 55))

//   print({for (var e in ans) e.key: e.value}); // {first:85, forth: 55}
// }

//?-----------------------------------------------------------------------------------------------------------------------------------------

//! Question no 5: Merge two maps, giving precedence to the second map in case of conflicts.
//* The spread operator (...) in Dart is a convenient way to merge maps while handling key conflicts. In the case of merging two maps, the spread operator ensures that keys from the second map overwrite conflicting keys from the first map.
//! How the Spread Operator Works:
// The spread operator (...) can unpack all key-value pairs from one map and include them in a new map.
// If two maps have overlapping keys, the order of the spread matters:
// The second map in the spread sequence will overwrite conflicting keys from the earlier map.
// void main(List<String> args) {
//   final Map<String, int> map1 = {
//     'a': 1,
//   'b': 2,
//   'c': 3,
// };

// final Map<String, int> map2 = {
//   'b': 4,
//   'c': 5,
//   'd': 6,
// };

// Merge two maps, giving precedence to the second map in case of conflicts. this happens because we are using spread operator. in this case, the second map will override the first map.
//   final mergedMap = {...map1, ...map2};

//   print(mergedMap); // {a: 1, b: 4, c: 5, d: 6}
// }

//?------------------------------------------------------------------------------------------------------------------------------------------

//! Question no 6: Check if two maps are equal by content.

// import 'package:collection/collection.dart';

// void main(List<String> args) {
//   final Map<String, int> map1 = {
//     'a': 1,
//     'b': 2,
//   };
// final Map<String, int> map2 = {
//   'a': 1,
//   'b': 2,
// };

// print(checkMapEquality(map1, map2));

//! Second Way
// final mapEqual = MapEquality();
// print(mapEqual.equals(map1, map2));
// }

//! Custom function to check map equality
// bool checkMapEquality(Map<String, int> map1, Map<String, int> map2) {
//   if (map1.length != map2.length) {
//     return false;
//   }

//   for (var key in map1.keys) {
//     if (map1[key] != map2[key]) {
//       return false;
//     }
//   }
//   return true;
// }

//?------------------------------------------------------------------------------------------------------------------------------------------

//! Question no 7: Create a map where keys are numbers from 1 to 5, and values are their squares.

// void main(List<String> args) {
//   final Map<int, int> squrMap = {};
//   for (var i = 1; i <= 5; i++) {
//     squrMap[i] = (squrMap[i] ??= i*i);
//   }
//   print(squrMap);
// }

//?------------------------------------------------------------------------------------------------------------------------------------------

//!Question no 8: Remove all entries with null values from a map.

// import 'package:collection/collection.dart';

// void main(List<String> args) {
//   final Map<int, int?> map = {
//     1: 1,
//     2: 2,
//     3: 3,
//   };

//! First Way
// map.updateAll(
//   (key, value) => value = null,
// );
// print(map);

//! Second Way
// for (var i = 1; i <= map.length; i++) {
//   map[i] = null;
// }
// print(map);

//!Third Way
// Map<int, int?> updatedMap = map.map(
//   (key, value) => MapEntry(key, value = null),
// );
// print(updatedMap);

//! Forth way
// final udatedMap = {for (var e in map.entries) e.key: null};
// print(udatedMap);
// }

//?------------------------------------------------------------------------------------------------------------------------------------------

//! Question no 9: Convert a list of pairs into a map.
// void main(List<String> args) {
//   final List<List<String>> pairs = [
//     ['a', '1'],
//     ['b', '2'],
//     ['c', '3'],
//   ];
//   final Map<String, String> map = {};
//   for (var e in pairs) {
// print(e);
//     map[e.first] = e.last;
//   }
//   print(map); // {a: 1, b: 2, c: 3}
// }

//! Question 10: Write a program to invert a map (swap keys and values).

// void main(List<String> args) {
//   final Map<int, int> map = {
//     1: 3,
//     2: 4,
//     3: 5,
//   };

//   final updatedMap = {for (var e in map.entries) e.value: e.key};

//   map.addAll(updatedMap);
//   print(map); //{1: 3, 2: 4, 3: 1, 4: 2, 5: 3} 

//   print(updatedMap); //{3: 1, 4: 2, 5: 3}
// }
