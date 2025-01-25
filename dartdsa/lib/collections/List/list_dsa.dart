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

void main(List<String> args) {
  List<int> list = [1, 2, 3, 4, 5];
  int k = 2;

  // rotateList(list, k);

  rotateByK(list, k);
}

// void rotateList(List<int> list, int k) {
//   k = k % list.length;
//   if (k == 0) {
//     print(list);
//   }

//   List<int> lastPart = list.sublist(list.length - k);
//   List<int> firstPart = list.sublist(0, list.length - k);

//   print([...lastPart, ...firstPart]);
// }

void rotateByK(List<int> list, int k) {
  for (int i = 0; i < k; i++) {
    int lastElement = list.removeLast();
    list.insert(0, lastElement);
  }
  print(list);
}
