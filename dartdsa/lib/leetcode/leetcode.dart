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

//   // Row
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

//?----------------------------------------------------------------------------------------------------------------------------------