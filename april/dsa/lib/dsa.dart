//! 12/04/25
//! All April Dsa

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//!   12/04/25
//! Question no 1: Leetcode(1400. Construct K Palindrome Strings)

// void main(List<String> args) {
//   String s = "annabelle";
//   int k = 2;
//   Map<String, int> map = <String, int>{};

//   if(s.length < k){
//     return;
//   }

//   for (var i = 0; i < s.length; i++) {
    
//       map[s[i]] = (map[s[i]] ?? 0) + 1;
    
//   }

//   int oddCount = map.values.where((count) => count % 2 != 0).length;

//   print(oddCount);

//   if (oddCount <= k) {
//     print(true);
//   } else {
//     print(false);
//   }
//   print(map);
// }
 

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 🔥 Day 1: Lists Basics

//! 🧩 Question 1: Reverse a List
// void main(){
//   List<int> l = [1,2,3,4];

//! One way
  // List<int> ans =  List.filled(l.length, 0);

  // for (var i = l.length-1; i>=0; i--) {
  //   ans[l.length - 1 - i] = l[i];
  // }
  // print(ans);


//! Two way
//  print(l.reversed.toList()); 

//  //! third way
//  final ans = [
//   ...l.reversed
//  ];
//  print(ans);

// }

//? ------------------------------------------------

//! 🧩 Question 2: Find Second Largest Element
// void main(List<String> args) {
//   List<int> l = [87,98,74,100];
//   int largest = l[0];
//   int secondLargest = -1;

//   for (var i = 1; i <= l.length-1; i++) {
//    if (l[i] > largest) {
//      secondLargest = largest;
//      largest = l[i];
//    }else if(l[i] < largest && l[i] > secondLargest){
//     secondLargest = l[i];
//    }
//   }
//     //  print("largest=> $largest");
//      print("second largest=> $secondLargest");
// }


//? ------------------------------------------------

//! 🧩 Question 3: Rotate a List

// void main(List<String> args) {
//   List<int> l = [1, 2, 3, 4, 5];
//   int k = 2;

//! ✅ Method 1: Dart Slicing (Clean)
  // k = k%l.length; // to handle k > length
  // print(k);
  // print(l.sublist(l.length-k));
  // print(l.sublist(0, l.length-k));
  // List<int> rotate = l.sublist(l.length-k) + l.sublist(0, l.length-k);

  // print(rotate);

//! ✅ Method 2: Rotate Using Loop

//  for (int i = 0; i < k; i++) {
//     int last = l.removeLast();
//     l.insert(0, last);
//     print(l);
//   }

//   print(l); // Output: [4, 5, 1, 2, 3]

// }