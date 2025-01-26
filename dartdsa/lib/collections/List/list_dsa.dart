//! 24/01/25
//! List Dsa Questions and Solutions
//?--------------------------------------------------------------------------------------------------------------------

//! Question 1:  Write a program to find the second largest element in a list.
// void main(List<String> args) {
//   final list = [5,5,3];

// findSecondLargest(list);
// }

// void findSecondLargest(List<int> list) {
//   int secondLargest = 0;
//   int largest = 0;

//   for (var i = 0; i < list.length; i++) {
//     if (list[i] > largest) {
//       secondLargest = largest;
//       largest = list[i];
//     }else if (list[i] > secondLargest && list[i] < largest) {
//       secondLargest = list[i];
//     }
//   }
//   print(secondLargest);
// }

//?------------------------------------------------------------------------------------

//! Question no 2:  Reverse a list without using reversed property.

// void main(List<String> args) {
// List<int> l = [1, 2, 3, 4, 5];
//! Creating a list to store reverse list
// final list = [for (var i = l.length - 1; i >= 0; i--) l[i]];
// print(list);

//! Without Creating a list (in-place reverse)
//   int left = 0, right = l.length - 1;
//   while (left < right) {
//     int temp = l[left];
//     l[left] = l[right];
//     l[right] = temp;

// move the pointer
//     left++;
//     right--;
//   }
//   print(l);
// }

//? ----------------------------------------------------------------------------------

//! Question no 3: Find the frequency of each element in a list of integers.

// void main(List<String> args) {
//   List<int> list = [1, 2, 2, 3, 3, 3];
//   Map<int, int> mapFreq = {};

//   for (var i = 0; i < list.length; i++) {
//     if (mapFreq.keys.contains(list[i])) {
//       mapFreq[list[i]] = mapFreq[list[i]]! + 1;
//     } else {
//     mapFreq[list[i]] = 1;
//     }
//   }
//   print(mapFreq);
// }

//?--------------------------------------------------------------------------

//! Question no 4: Combine two lists and remove duplicates from the resulting list.

// import 'package:collection/collection.dart';

// void main(List<String> args) {
// List<int> l1 = [1, 2, 3];
// List<int> l2 = [3, 4, 5, 2];

//! First way
// List<int> l3 = [...l1, ...l2].toSet().toList();
// print(l3);

//! Second way
// final Set<int> setL1 = l1.toSet();
// final Set<int> setL2 = l2.toSet();
// final Set<int> uniquesList = setL1.union(setL2);
// print(uniquesList.toList());

// }

//?-----------------------------------------------------------

//! Question no 5: Write a function to rotate a list to the right by `k` positions.

// void main(List<String> args) {
//   List<int> list = [1, 2, 3, 4, 5];
//   int k = 2;

// rotateList(list, k);

// rotateByK(list, k);
// }

//! First way
// void rotateList(List<int> list, int k) {
//   k = k % list.length;
//   if (k == 0) {
//     print(list);
//   }

//   List<int> lastPart = list.sublist(list.length - k);
//   List<int> firstPart = list.sublist(0, list.length - k);

//   print([...lastPart, ...firstPart]);
// }

//! Second way

// void rotateByK(List<int> list, int k) {
//   int i = 0;
//   while (i < k) {
//     int lastElement = list.removeLast();
//     list.insert(0, lastElement);

//     i++;
//   }

//   print(list);
// }

//! Question no 6:Create a list of even numbers from 1 to 100
// void main(List<String> args) {
//   List<int> numbers = List.generate(100, (index) => index + 1);

// Second way
//   final list = [
//     for (var n in numbers)
//       if (n.isEven) n
//   ];
//   print(list);

//  First Way
//   final evenNumberFunction = numbers.where((e) => e.isEven).toList();
//   print(evenNumberFunction);
// }

//! Question no 7: Remove all null or empty strings from a list of strings.
// void main(List<String> args) {
//   List<String?> list = ['a', 'b', '', 'c', null, 'd'];

//! First Way
// for (var i = 0; i < list.length; i++) {
//   if (list[i] == "" || list[i] == null) {
//     list.removeAt(i);
//   }
// }
// print(list);

//! Second Way
//     list.removeWhere(
//       (element) => element == "" || element == null,
//     );

//   print(list);
// }

//?--------------------------------------------------------------------

//! Question no 8:  Convert a list of strings to uppercase

// void main(List<String> args) {
//   final List<String> list = ["apple", "banana", "papaya", "litchi"];

//   final uppercaseList = list.map((str) => str.toUpperCase());
//   print(uppercaseList);
// }

//?--------------------------------------------------------------------

//! Question no 9: . Check if a given list is a palindrome.
// import 'package:collection/collection.dart';

// void main(List<String> args) {
//   final List<int> list = [1, 2, 3, 2, 1];

//! First Way
// final List<int> list2 = List.filled(list.length, 0);
// for (var i = list.length - 1, j = 0; i >= 0; i--, j++) {
//   list2[j] = list[i];
// }

// if (list.equals(list2)) {
//   print(true);
// } else {
//   print(false);
// }

//! Second Way
// final reversedList = list.reversed.toList();
// list.equals(reversedList) ? print(true) : print(false);
// }

//?--------------------------------------------------------------------

//! Question no 10: Use the `retainWhere` method to keep only elements divisible by 3.

// void main(List<String> args) {
  // final List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // final List<int> oddList = list.where((element) => element % 2 != 0).toList();
  // print(oddList);
// }


//! Finished on 26/01/25