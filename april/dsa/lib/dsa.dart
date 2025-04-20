//! 12/04/25
//! All April Dsa

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 12/04/25
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

//! ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 15/04/25
//! Leetcode(136. Single Number)

// void main(){

//   List<int> nums = [4, 1, 2, 1, 2];
//   int ans = nums.reduce((a, b) => a ^ b);
//   print(ans); // Output: 4

// }

//! 🔥 Day 2: Remove duplicates
//! 15/04/25

//! 🧩 Question 1: Remove duplicates
// void main(List<String> args) {
//   List<int> nums = [1, 2, 2, 3, 4, 4, 5];

//! ✅ Method 1:
// print(nums.toSet().toList());

//! ✅ Method 2:
//  List<int> uniqueNums = [];

//   for (int num in nums) {
//     if (!uniqueNums.contains(num)) {
//       uniqueNums.add(num);
//     }
//   }
//   print(uniqueNums);

//! ✅ Method 3:
//   final nums1 = [1, 2, 2, 3, 4, 4, 5].toSet().toList();

//  print(nums1);
// }

//? ------------------------------------------------

//! 🧩 Question 2: Count Elements That Appear Only Once

// void main(List<String> args) {
//   List<int> nums = [1, 2, 2, 3, 4, 4, 5, 1, 6];
//   Map<int,int> m = {};

//   for (var i = 0; i < nums.length; i++) {

//     m[nums[i]] = (m[nums[i]] ?? 0 ) + 1;
//   }

//   print(m.entries.where((element) => element.value == 1,).toList().length);
// }

//? ------------------------------------------------------------------------------

//! 🧩 Question 3: Count Unique/Distinct Element

// void main(List<String> args) {
//   List<int> nums = [1, 2, 2, 3, 4, 4, 5, 1, 6];

//! ✅Method 1:
// print(nums.toSet().toList().length);

//! ✅ Method 2:
// var set = <int>{};
// for (var e in nums) {
//   set.add(e ?? 0);
// }
// print(set.length);
// }

//? ------------------------------------------------------------------------------------------------------------------------

//! 🧩 Question 4: Check if List is Palindrome
// void main(List<String> args) {
//   List<int> nums = [1, 2, 3, 2, 1];

//! ✅ Method 1: Reverse and Compare
// if (nums.reversed.toList().toString() == nums.toString()) {
//   print(true);
//   return;
// }
// print(false);

//! ✅ Method 2:
// for (int i = 0; i < nums.length ~/ 2; i++) {
//   if (nums[i] != nums[nums.length - 1 - i]) {
//     print(false);
//     return;
//   }
// }

// print(true);
// }

//! -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//!16/04/25
//! LEETCODE (1863. Sum of All Subset XOR Totals)

// void main(){
//   List<int> nums = [1,3];
//     int ans = 0;
//     int len = 0;
//     int val=0;
//     List<int> store = [0];

//     for(int n in nums){
//         len = store.length;
//         for(int i = 0;i<len;i++){
//             val = store[i] ^ n;
//             ans += val;
//             store.add(val);
//         }
//     }
//     print(ans);
//   }

//! -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 18/04/25

//! 🧩 Question 1: Find Union of Two Sets
// void main(){
// Set<int> a = {1, 2, 3, 4};
// Set<int> b = {3, 4, 5, 6};

//! ✅ Method 1: union() method
// print(a.union(b));

//! ✅ Method 2:
//  print({...a, ...b});

//! ✅ Method 3:
// final ans = <int>{};
// ans.addAll(a);

// for (var e in b) {
//   if (!ans.contains(e)) {
//    ans.add(e);
// }
// }
// print(ans);

// }

//? ------------------------------------------------------------------------------

//! 🧩 Question 2: Intersection – Common Elements in Both Sets
// import 'dart:math';

// import 'package:collection/collection.dart';
// void main(List<String> args) {
//   Set a = {1, 2, 3};
//   Set b = {3, 4, 5};

//   Set intersection = a.intersection(b);
//   print(intersection);

//   Set commonEle = a.where((element) => b.contains(element)).toSet();

//   print(commonEle);
// }

//? ------------------------------------------------------------------------------

//! 🧩 Question 3: Difference – Elements in One Set but Not in the Other

// void main(List<String> args) {
//   Set a = {1, 2, 3};
// Set b = {3, 4, 5};

// Set diffA = a.difference(b); // {1, 2}
// Set diffB = b.difference(a); // {4, 5}

// print(diffA);
// print(diffB);
// }

//! -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 19/04/25

//! 🧩 LeetCode Question (2563. Count the Number of Fair Pairs)
//! Getting TLE on 47th test case

// void main() {
//   List<int> nums = [1,7,9,2,5];
//   int lower = 11;
//   int upper = 11;
//   int count = 0;
//   int n = nums.length;
//   for (int i = 0; i < n; i++) {
//     for (var j = i + 1; j < n; j++) {
//         if (lower <= (nums[i] + nums[j])  && (nums[i] + nums[j]) <= upper) {

//           count++;

//         }
//     }
//   }
//   print(count);
// }

//! Leetcode (58. Length of Last Word)

// void main(List<String> args) {
// String  s = "   fly me   to   the moon  ";

// print(s.trim().split(" ").last.length);
// }

//! -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 🧩 Question 1: Find the Most Frequent Element in a List

// void main(List<String> args) {
//   List<int> nums = [1, 3, 2, 1, 4, 1, 3, 3, 3];

  //! ✅ Method 1:
  //   final map = <int, int>{};

  //   for (var i = 0; i < nums.length; i++) {
  //     map[nums[i]] =  (map[nums[i]] ?? 0) + 1;
  //   }
  //    int mostFrequent = map.entries.reduce((a, b) => a.value > b.value ? a : b).key;

  //   print("Most Frequent Element: $mostFrequent");

  //! ✅ Method 2:
//   int maxFreq = 0;
//   int mostFreqElement = nums[0];

//   final map = <int, int>{};
//   for (var i = 0; i < nums.length; i++) {
//   map[nums[i]] = (map[nums[i]] ?? 0) + 1;
// }

//   map.forEach((key, value) {
//     if (value > maxFreq) {
//       maxFreq = value;
//       mostFreqElement = key;
//     }
//   });

//   print("Most Frequent: $mostFreqElement ($maxFreq times)");
// }

//? --------------------------------------------------------------------------------------------------------------------
//! 🧩 Question 2: Print All Elements with Frequency > 1

// void main(List<String> args) {
// List<int> nums = [5, 1, 2, 1, 3, 2, 4, 5, 2];

//   final map = <int, int>{};

//   for (var i = 0; i < nums.length; i++) {
//     map[nums[i]] =  (map[nums[i]] ?? 0) + 1;
//   }

//! ✅ Method 1: 
//  print(map.entries.where((element) => element.value > 1,));

//!  ✅ Method 2:
// for (var entry in map.entries) {
//   if (entry.value > 1) {
//     print("${entry.key} → ${entry.value} times");
//   }
// }
// }

//? --------------------------------------------------------------------------------------------------------------------
//! 🧩 Question 3: Count All Characters in a String

// void main(List<String> args) {
//   String s = "flutter";
//   final map = <String, int>{};

// for (var i = 0; i < s.length; i++) {
 
//     map[s[i]] = (map[s[i]] ?? 0) + 1;
  
// }
// print(map);
// }

//! -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 20/04/25

//! 🧩 Question 1: Sort Elements by Frequency (High → Low)

// import 'package:fast_immutable_collections/fast_immutable_collections.dart';

// void main(List<String> args) {
//   List<int> nums = [1, 3, 1, 3, 2, 1, 4, 4, 4, 4];

//   print(nums.sortedReversed());

  // nums.sort((b, a) =>  a.compareTo(b),);
  // print(nums);




// Approach get the highest fruency of a number and add the number with the same frequency in the ans list.
 
 // Step 1: Frequency Map
//   final map = <int, int>{};
//   for (var i = 0; i < nums.length; i++) {
//     map[nums[i]] = (map[nums[i]] ?? 0) +1;
//   }
  
//   // Step 2: Sort Map Entries by value (frequency) descending
//    List<int> ans = [];
//     final sortedEntries = map.entries.toList()
//     ..sort((a, b) => b.value.compareTo(a.value));
//   print(sortedEntries);


//     // Step 3: Print nicely
//   for (var entry in sortedEntries) {
//     for (var i = 0; i < entry.value; i++) {
//       ans.add(entry.key);
//     }
//     print(ans);
//     print("${entry.key} → ${entry.value} times");
//   }
// }



//! 🧩 Question 2:  Top K Frequent Elements

// import 'package:fast_immutable_collections/fast_immutable_collections.dart';

// void main(List<String> args) {
//   List<String> words = ["apple", "banana", "apple", "orange", "banana", "apple"];
//   int k = 2;
  
//   // Step 1: Frequency Map
//   final map = <String, int>{};
//   for (var word in words) {
//     map[word] = (map[word] ?? 0) + 1;
//   }


//   // Step 2: Sort by frequency
//   final sortedEntries = map.entries.toList()
//     ..sort((a, b) => b.value.compareTo(a.value));
//   print(sortedEntries.take(k));

  
//   // Step 3: Extract only the keys
//   List<String> topK = sortedEntries.take(k).map((e) => e.key).toList();
//   print(topK); // ✅ Output: [apple, banana]

// }

//! Using Generic Function
void main(List<String> args) {
    List<String> words = ["apple", "banana", "apple", "orange", "banana", "apple"];
  int k = 2;
 print(topKElement(words, k));
}
  List<T> topKElement<T>(List<T> items, int k){
  final map = <T, int>{};

   for (var item in items) {
     map[item] = (map[item] ?? 0) +1;
   }
  final sortedEntries =  map.entries
   .toList()
   ..sort((a, b) => b.value.compareTo(a.value));

   return sortedEntries
   .take(2)
   .map((e) => e.key,)
   .toList();

  }