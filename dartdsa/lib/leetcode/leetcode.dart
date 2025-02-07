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

//! 31/01/25 Leetcode (49 Group Anagrams) : Given an array of strings strs, group the anagrams together. You can return the answer in any order.

//! How to Check for Anagrams?
//? Two strings are anagrams if:
// They have the same length.
// They contain the same characters with the same frequency.
// void main(List<String> args) {

//   List<String> w = ["eat","tea","tan","ate","nat","bat"];
//   List<List<String>> l = [];

//  Checking if length == 1
//   if ( w.length == 1) {
//     l.add([w[0]]);
//     print(l);
//     return;
//   }

//  Checking if length of all elements is the same
//   bool len =  w.map((e) => e.length,).every((element) => element == w[0].length,);
//   if (!len) {
//     l.add([]);
//     return;
//   }

//Main logic
//   Map<String, List<String>>  map = {};

//   for (int i = 0; i < w.length; i++) {
//      String sortedWord = String.fromCharCodes(w[i].runes.toList()..sort());
//     print("Sorted Word is $sortedWord");

//     if (map.containsKey(sortedWord)) {
//       map[sortedWord]!.add(w[i]);

//     }else{
//       map[sortedWord] = [w[i]];
//     }
//   }

//  for (var e in map.entries) {
//    l.add(e.value);
//  }

//  print(l);

// }

//?------------------------------------------------------------------------------------------------------

//! Question 1: Leetcode(1790. Check if One String Swap Can Make Strings Equal) 05/02/25

// void main() {
//   String s1 = "bank";
//   String s2 = "kanb";

//   List<int> list = [];

//   for (var i = 0; i < s1.length; i++) {
//     if (s1[i] != s2[i]) {
//       list.add(i);

//   }
//   if (list.length == 2) {
//     print(s1[list[0]] == s2[list[1]] && s1[list[1]] == s2[list[0]]);
//   } else {
//     print(false);
//   }

//   print(list);
// }
// }

//?------------------------------------------------------------------------------------------------------------------------

//! Question no 1: Leetcode (1726. Tuple with same product)
// void main(){
//   List<int> nums = [2,3,4,6];
//   int len = nums.length;
//   Map<int, List<List<int>>> map = {};

//   for (var i = 0; i < len; i++) {
//     for (var j = i+1; j < len; j++) {
//       int p = nums[i] * nums[j];
//       if (!map.containsKey(p)) {
//         map[p] = [];
//       }
//       map[p]!.add([nums[i],nums[j]]);
//     }
//   }

//   int count = 0;
//   for (var pairs in map.values) {
//     int n = pairs.length;
//     if(n>1){
//       count+=(n*(n-1)~/2)*8;
//     }
//   }
//   print(count);
// }

//?----------------------------------------------------------------------------

//! 07/02/25
//! Question no 1: Leetcode today's question(3160)
void main() {
  int limit = 4;

  List<List<int>> queries = [
    [1, 4],
    [2, 5],
    [1, 3],
    [3, 4]
  ];
  Set<int> set = {};
  Map<int, int> map = {};
  List<int> result = [];

  for (var i = 0; i < queries.length; i++) {
    int ball = queries[i][0];
    int newColor = queries[i][1];

    if (map.containsKey(ball)) {
      int oldColor = map[ball]!;

      // First, update the ball's color in the map
      map[ball] = newColor;

      if (!map.containsValue(oldColor)) {
        set.remove(oldColor);
      }
    } else {
      map[ball] = newColor;
    }

    set.add(newColor);

    result.add(set.length);

    // print("After Query $i: Ball $ball -> Color $newColor");
    // print("Map: $map");
    // print("Set: $set");
    // print("----------------");
  }
  print("Final Map: $map");
  print("Final Set (Unique Colors): $set");
  print(result);
}
