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

//? ----------------------------------------------------------------------------------------------------------------------

//! 15/06/25
//! Question no 1: Leetcode (53. Maximum Subarray)

import 'dart:math' as math;

void main() {
  List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

  int sum = 0;
  int max = 1 << 63;

  for (var i = 0; i < nums.length; i++) {
    sum += nums[i];

    max = math.max(max, sum);

    if (sum < 0) {
      sum = 0;
    }
  }

  print(max);
}
