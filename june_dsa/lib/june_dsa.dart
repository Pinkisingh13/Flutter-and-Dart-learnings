//! June Leetcode DSA

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 01/06/25 (solved on leetcode)

//? ----------------------------------------------------------------------------------------------------------------------

//! 02/06/25

//! Question no 1: Leetcode(485. Max Consecutive Ones)

// import 'dart:math';

// void main() {
//   List<int> nums = [1, 1, 0, 1, 1, 1];

//! First Way
// int count = 0;
// int count2 = 0;

// for (int i = 0; i < nums.length; i++) {
//  if (nums[i] == 1) {
//    count++;
//    count2 = max(count, count2);
//  }else{
//   count = 0;
//  }
// }
// print(count2);

//! Second Way
//   String s = nums.join();
//   print(s);

//    int count = s.split('0').map((e) => e.length,).fold(0, (previousValue, element) {
//     print("Previous value: $previousValue");
//     print("Element value: $element");
//     return previousValue > element ? previousValue : element;

// });

//    print(count);

// }

//? ----------------------------------------------------------------------------------------------------------------------

//! 07/06/25
//! Question no 1: Plus one

// void main() {
//   List<int> digits = [99];

//   BigInt number = BigInt.parse(digits.join(''));

//   number += BigInt.one;

//  digits = number.toString().split('').map(int.parse).toList();

//  print(digits);

// }

//? ----------------------------------------------------------------------------------------------------------------------

//! 07/06/25
//! Question no 1: Leetcode (2425. Bitwise XOR of All Pairings)

// ! NOTE: Remember the effect of odd vs even counts in XOR:

//!* If a number is XORed even number of times → it disappears (result is 0).

//* If a number is XORed odd number of times → it remains.

// void main() {
//   List<int> nums1 = [2,1,3];
//   List<int> nums2 = [10,2,5,0];
//   int sum = 0;

//   int xor1 = 0;
//   for (var a in nums1) {
//     xor1 ^= a;
//   }

//   int xor2 = 0;
//   for (var b in nums2) {
//     xor2 ^= b;
//   }

//   if (nums2.length % 2 == 1) {
//     sum ^= xor1;
//   }

//   if (nums1.length % 2 == 1) {
//     sum ^= xor2;
//   }

//   print(sum);
// }

//? ----------------------------------------------------------------------------------------------------------------------

//! 12/06/25
//! Question no 1: Leetcode (3423. Maximum Difference Between Adjacent Elements in a Circular Array)

// import 'dart:math' as math;

// void main(){
// List<int> nums = [1,2,4];

// int ans = 0;

// for (var i = 0; i < nums.length-1; i++) {
//   int diff = nums[i] - nums[i+1];

//   ans = math.max(ans, diff.abs());
// }

// int firstLastCheck = nums.first - nums.last;
// ans = math.max(ans,firstLastCheck.abs());

// print(ans);
// }

//? ----------------------------------------------------------------------------------------------------------------------

//! 14/06/25
//! Question no 1: Leetcode (448. Find All Numbers Disappeared in an Array)

// void main(){
//   List<int> nums = [1,1];
//     List<int> ans= [];
//     Set<int> set = nums.toSet();

//     for (var i = 1; i <= nums.length; i++) {
//       if (!set.contains(i)) {
//         ans.add(i);
//       }
//     }
//     print(ans);
// }

//! ----------------------------------------------------------------------------------------------------------------------

//! 15/06/25
//! Question no 1: Leetcode (53. Maximum Subarray)

// import 'dart:math' as math;
// void main() {
//   List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

//   int sum = 0;
//   int max = 1 << 63;

//   for (var i = 0; i < nums.length; i++) {
//     sum += nums[i];

//     max = math.max(max, sum);

//     if (sum < 0) {
//       sum = 0;
//     }
//   }

//   print(max);
// }

//! ----------------------------------------------------------------------------------------------------------------------

//! 16/06/25
//! Question no 1: Leetcode (2016. Maximum Difference Between Increasing Elements)

// void main() {
//   List<int> nums = [7, 1, 5, 4];

//! BRUTE FORCE
// int max = -1;
// for (var i = 0; i < nums.length - 1; i++) {
//   for (var j = i + 1; j < nums.length; j++) {
//     if (nums[j] > nums[i]) {
//       if (nums[j] - nums[i] > max) {
//         max = nums[j] - nums[i];
//       }
//     }
//   }
// }

// print(max);

//! OPTIMIZED  WAY

//   int minVal = nums[0];
//   int max = -1;

//   for (int i = 1; i < nums.length; i++) {
//     if (nums[i] > minVal) {
//       if (nums[i] - minVal > max) {
//         max = nums[i] - minVal;
//       }
//     } else {
//       minVal = nums[i];
//     }
//   }

//   print(max);
// }

//! ----------------------------------------------------------------------------------------------------------------------

//! 16/06/25
//! Question no 1: Leetcode (349. Intersection of Two Arrays)
// void main(List<String> args) {
//   List<int> nums1 = [1, 2, 2, 1];
//   List<int> nums2 = [2, 2];

//! Using set
// Set<int> newNums1 = nums1.toSet();
// Set<int> newNum2 = nums2.toSet();
// print(newNums1.intersection(newNum2).toList());

// ! Second way
//   List<int> largeList = [];
//   List<int> smallList = [];
//   List<int> ans = [];

//   if (nums1.length >= nums2.length) {
//     largeList = nums1;
//     smallList = nums2;
//   } else {
//     largeList = nums2;
//     smallList = nums1;
//   }

//   for (var i = 0; i < largeList.length; i++) {
//     if (smallList.contains(largeList[i]) && !ans.contains(largeList[i])) {
//       ans.add(largeList[i]);
//     }
//   }

//   print(ans);
// }

//? --------------------------------------------------------------------------------------------

//! Question no 2: Leetcode(169. Majority Element)
// void main() {
//   List<int> nums = [3, 2, 3];

//   Map<int, int> m = {};

//   for (int i = 0; i < nums.length; i++) {
//     m[nums[i]] = (m[nums[i]] ?? 0) + 1;
//   }

//   for (var e in m.entries) {
//     if (e.value > (nums.length / 2)) {
//       print(e.key);
//       return;
//     }
//     print(-1);
//   }

//   print(m);
// }

//! ----------------------------------------------------------------------------------------------------------------------

//! Question no 1: Leetcode (2966. Divide Array Into Arrays With Max Difference)

// import 'dart:math';

// void main() {
//   List<int> nums = [2, 4, 2, 2, 5, 2];
//   int k = 2;

//   nums.sort();

//   print(nums);

//   List<List<int>> result = [];

//   for (var i = 0; i < nums.length; i += 3) {
//     if (i + 2 >= nums.length || nums[i + 2] - nums[i] > k) {
//       print([]);
//       return;
//     }
//     int a = nums[i];
//     int b = nums[i + 1];
//     int c = nums[i + 2];

//     result.add([a, b, c]);
//   }

//   print(result);
// }

//! ----------------------------------------------------------------------------------------------------------------------

//! Question no 1: Leetcode (2294. Partition Array Such That Maximum Difference Is K)

// void main() {
//   List<int> nums = [3, 6, 1, 2, 5];
//   int k = 2;
//   int count = 0;
//   nums.sort();
//   print(nums);

//   for (var i = 0; i < nums.length; i += k) {
//     if (nums[i] - nums[i + 1] <= k) {
//       count++;
//     }
//   }
// }

//! ----------------------------------------------------------------------------------------------------------------------

//! Question no 1: Leetcode(2138. Divide a String Into Groups of Size k)

// import 'dart:math';

// void main() {
//   String s = "abcdefghij";
//   int k = 3;
//   String fill = 'x';

//   List<String> ans = [];

//   for (var i = 0; i < s.length; i += 3) {
//     String t = s.substring(i, min(i + k, s.length));
//     print(t);
//     if (t.length < k) {
//       t = t + fill * (k - t.length);
//     }

//     ans.add(t);
//   }

//   print("ans==> $ans");
// }

//! ----------------------------------------------------------------------------------------------------------------------

// ! Question no 1: Leetcode(74. Search a 2D Matrix)

// matrix.length;         // Number of rows
//matrix[0].length;      // Number of columns in the first row

// void main() {
//   List<List<int>> matrix = [
//     [1, 3, 5, 7],
//     [10, 11, 16, 20],
//     [23, 30, 34, 60],
//   ];

//   int target = 3;

//   int low = 0;
//   int high = matrix.length * matrix[0].length - 1;

//   while (low <= high) {
//     int mid = (low + high) ~/ 2;
//     print(mid);

//     int row = mid ~/ matrix[0].length;

//     print("row: $row");
//     int col = mid % matrix[0].length;

//     print("col: $col");

//     if (matrix[row][col] == target) {
//       print(true);
//       return;
//     }

//     if (matrix[row][col] > target) {
//       high = mid - 1;
//     } else {
//       low = mid + 1;
//     }
//   }
// }

//! ----------------------------------------------------------------------------------------------------------------------

// ! Question no 1: Leetcode(2099. Find Subsequence of Length K With the Largest Sum)

// void main() {
//   List<int> nums = [2, 1, 3, 3];

//   int k = 2;

//   List<List<int>> indexedNums = [];
//   for (int i = 0; i < nums.length; i++) {
//     indexedNums.add([nums[i], i]); // [value, index]
//   }

//   print("indexedNums Before Sorting: $indexedNums" );

//   indexedNums.sort((a, b) => b[0].compareTo(a[0]));
//   print("indexedNums After Sorting: $indexedNums" );

//   List<List<int>> topK = indexedNums.sublist(0, k);

//   print("TopK element Before Sorting: $topK");

//   topK.sort((a, b) => a[1].compareTo(b[1]));
//   print("TopK element After Sorting: $topK");

//   List<int> result = [];
//   for (var pair in topK) {
//     result.add(pair[0]);
//   }

//   print(result);
// }


//! ----------------------------------------------------------------------------------------------------------------------

// ! Question no 1: Leetcode(594. Longest Harmonious Subsequence)

void main(){
  List<int> nums = [1,3,2,2,5,2,3,7];

  var map = <int,int>{};
 
  for(int i =0; i<nums.length;i++){
  map[nums[i]] = (map[nums[i]] ?? 0) + 1;
  }
  
final maxLen = map.keys.fold(0, (maxSoFar, key){
if (map.containsKey(key+1)) {
  return (map[key]! + map[key + 1]!) > maxSoFar
        ? (map[key]! + map[key + 1]!)
        : maxSoFar;
}
return maxSoFar;
});

  print(maxLen);
}