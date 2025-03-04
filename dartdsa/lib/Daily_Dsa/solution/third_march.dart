
//! Todays daily question is:

//!Sets

//?----------------------------------------------------------------------------------------------------------------------------------------------------------------


//! Question no 1: Given a list of numbers, return a list containing only the unique elements (removing duplicates) while maintaining the order.

//*Solution:
// void main(List<String> args) {
//   List<int> nums = [0,0,1,1,1,2,2,3,3,4];

//   List<int> uniqueList = [];
//   Set<int> seen = {};

//   for (var num in nums) {
//     if (!seen.contains(num)) {
//       uniqueList.add(num);
//       seen.add(num);
//     }
//   }
//   print(uniqueList);
// }


//! Question no 2: Find the intersection of two sets in Dart.

// void main(List<String> args) {
//   Set<int> set1 = {1, 2, 3, 4, 5};  
// Set<int> set2 = {3, 4, 5, 6, 7};  


// O(min(n, m)) more effiecient
// print(set1.intersection(set2));


// O(n*m) less efficient
// print(set1.where((element) => set2.contains(element),).toSet());
// }