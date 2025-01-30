//** Other Solutions are in the mydsa.dart file */

//**Leetcode Profile: https://leetcode.com/u/pinkisingh13/ */

//! 23/01/25
//? Q1: 1267 Count Servers that Communicate (Question of the day)
// Time Complexity: // O(M+N)
// void main() {
//   List<List<int>> grid = [
//     [1, 1, 0, 0],
//     [0, 0, 1, 0],
//     [0, 0, 1, 0],
//     [0, 0, 0, 1]
//   ];
//   int m = grid.length; //row
//   int n = grid[0].length; //column
//   int serverCount = 0;

//   List<int> rowCount = List.filled(m, 0);
//   List<int> colCount = List.filled(n, 0);

// Row
//   for (int i = 0; i < m; i++) {
//     for (var j = 0; j < n; j++) {
//       if (grid[i][j] == 1) {
//         rowCount[i]++;
//         colCount[j]++;
//       }
//     }
//   }

//   print("RowCount ==> $rowCount");
//   print("ColCount ==> $colCount");

//   for (var i = 0; i < m; i++) {
//     for (var j = 0; j < n; j++) {
//       if (grid[i][j] == 1) {
//         if (rowCount[i] > 1 || colCount[j] > 1) {
//           serverCount++;
//         }
//       }
//     }
//   }
//   print("Number of communicating servers: $serverCount");
// }

//?----------------------------------------------------------

//? 11. Container With Most Water
//? https://leetcode.com/problems/container-with-most-water/
//? Time Complexity: O(n)
//? Space Complexity: O(1)

// import 'dart:math';

// void main() {
//   List<int> height = [1, 8, 6, 2, 5, 4, 8, 3, 7];
//   int maxWater = 0;
//   int left = 0, right = height.length - 1;

// if (height.length < 2) print(0);

//   while (left < right) {
//     int width = right - left;
//     int minHeight = min(height[left], height[right]);
//     int areaOfWater = width * minHeight;
//     maxWater = max(maxWater, areaOfWater);
//     height[left] < height[right] ? left++ : right--;
//   }
//   print(maxWater);
// }

//?------------------------------------------------------------------------------------------------------------------------------------

//! 25/01/25
//! Question no 1: Pascal's Triangle(Leetcode)

// void main(List<String> args) {
//   int n = 5;
//   List<List<int>> list = [];
//   for (int i = 1; i <= n; i++) {
//     if (i == 1) {
//       list.add([1]);
//       continue;
//     } else if (i == 2) {
//       list.add([1, 1]);
//       continue;
//     } else {
//       List<int> row = [];
//       row.add(1);
//       List<int> prevRowFirst = list[i - 2];
//       print("prevRowFirst.length ${prevRowFirst.length-1}");
//       for (int j = 0; j < prevRowFirst.length - 1; j++) {
//         row.add(prevRowFirst[j] + prevRowFirst[j + 1]);
//       }
//       row.add(1);
//       list.add(row);
//     }
//   }
//   print(list);
// }
//else if ke time pe list aisa dikhtha hao: [[1], [1,1]] 1st and 2nd row
// ab 3rd row m 1 element hoga 1 and last element hoga 1. and middle element sum hoga previous row ke 2 elements ka.

//?--------------------------------------------------------------------------------

//!26/01/25 (Leetcode contest Question)
//! Question no 1: Count Partitions with Even Sum Difference:
//!you are given an integer array nums of length n. A partition is defined as an index i where 0 <= i < n - 1, splitting the array into two non-empty subarrays such that: Left subarray contains indices [0, i]. Right subarray contains indices [i + 1, n - 1]. Return the number of partitions where the difference between the sum of the left and right subarrays is even.
// void main(List<String> args) {
//   List<int> nums = [10, 10, 3, 7, 6];
//   int leftSum = 0;
//   int totalSum =
//       nums.fold(0, (previousValue, element) => previousValue += element);
//   int count = 0;
//   for (var i = 0; i < nums.length - 1; i++) {
//     leftSum += nums[i];
//     int rightSum = totalSum - leftSum;
//     int difference = (leftSum - rightSum).abs();
//     if (difference % 2 == 0) {
//       count++;
//     }
//   }
//   print(count);
// }

// ?----------------------------------------------------------------------------------------------------------------------------------

//! 27/01/25 (Leetcode: 1 Two Sum)
//*Pattern Summary: This approach demonstrates the "lookup while iterating" pattern:
//* Store partial results in a hash map as you iterate through the list.
//*  Check the current element against the partial results to find a solution.

// void main(List<String> args) {
//   final List<int> nums = [3, 2, 4];
//   final int target = 6;

//   Map<int, int> map = {};

//   for (var i = 0; i < nums.length; i++) {
//     int result = target - nums[i];

//     if (map.containsKey(result)) {
//       print([map[result]!, i]);
//     }

//     map[nums[i]] = i;
//     print(map);
//   }

// }

//! 28/01/25 (Leetcode: Pascal's Triangle II)
//? Given an integer rowIndex, return the rowIndexth row of the Pascal's triangle.

// void main(List<String> args) {
//   int rowIndex = 3;
//   List<int> row = [1];
//   if (rowIndex == 0) print(row);
//   if (rowIndex == 1) print([1, 1]);

//   if (rowIndex > 1) {
//     for (var i = 1; i <= rowIndex; i++) {
//       List<int> newList = [];
//       newList.add(1);
//       for (var j = 1; j < row.length; j++) {
//         newList.add(row[j - 1] + row[j]);
//         print(newList);
//       }
//       newList.add(1);
//       row = newList;
//     }

//   }
//   print(row);
// }

//! 28/01/25 (Leetcode: 268 Missing Number)
//? Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
// void main(List<String> args) {
//   List<int> l = [3, 0, 1];

//!First way
//   int ans = 0;
//   for (var i = 0; i < l.length; i++) {
//     if (!l.contains(l.length - i)) {
//       ans = l.length - i;
//       print(ans);
//     }
//   }

//!Second way
//   int res = l.length;
//   for (int i = 0; i <= l.length - 1; i++) {
//     print(res += (i - l[i]));
//   }
// print(res);
// }

//?-----------------------------------------------------------------------------------------------------------------------------

//! 29/01/25 (Leetcode: 242 Valid Anagram)

//? this is giving time limit exceeded
// main(List<String> args) {
//   String s = "anagram";
//   String t = "nagaram";
//   if (s.length != t.length) {
//     print(false);
//   }

//   List<String> sList = s.split('');
//   List<String> tList = t.split('');
//   print(sList);
//   print(tList);

//   for (var i = 0; i < s.length; i++) {
//     if (!tList.contains(sList[i])) {
//       print(false);
//     }
//     tList.remove(sList[i]);
//   }
//   print(true);
// }

//! Second way
// void main(List<String> args) {
//   String s = "anagram";
//   String t = "nagaram";
//   Map<String, int> map = {};
//   for (var i = 0; i < s.length; i++) {
//     map[s[i]] = (map[s[i]] ?? 0) + 1;
//     map[t[i]] = (map[t[i]] ?? 0) - 1;
//   }
//   print(map);
//   print(map.values.every((element) => element == 0,));
// }

//?----------------------------------------------------------------------------------------------------------


