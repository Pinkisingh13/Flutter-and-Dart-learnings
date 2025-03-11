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
// void main() {
//   int limit = 4;

//   List<List<int>> queries = [
//     [1, 4],
//     [2, 5],
//     [1, 3],
//     [3, 4]
//   ];
//   Set<int> set = {};
//   Map<int, int> map = {};
//   List<int> result = [];

//   for (var i = 0; i < queries.length; i++) {
//     int ball = queries[i][0];
//     int newColor = queries[i][1];

//     if (map.containsKey(ball)) {
//       int oldColor = map[ball]!;

//? First, update the ball's color in the map
//       map[ball] = newColor;

//       if (!map.containsValue(oldColor)) {
//         set.remove(oldColor);
//       }
//     } else {
//       map[ball] = newColor;
//     }

//     set.add(newColor);

//     result.add(set.length);

//     // print("After Query $i: Ball $ball -> Color $newColor");
//     // print("Map: $map");
//     // print("Set: $set");
//     // print("----------------");
//   }
//   print("Final Map: $map");
//   print("Final Set (Unique Colors): $set");
//   print(result);
// }

//?--------------------------------------------------------------------------------------------------

//! 08/03/25 Leetcode(Contains Duplicate)
// First syntax (var s = <int>{};) → Directly Set<int> banata hai, isliye kam memory use hoti hai.
// Second syntax (Set<int> s1 = {};) → Pehle {} ko Map samjha jata hai, fir Set<int> me convert hota hai, is wajah se extra memory lagti hai.
// void main(){
//   List<int> l = [1,2,2,1];
//   var s = <int>{};
//    Set<int> s1 = {};
//     for(int i=0; i<l.length; i++){
//       if (!s.add(l[i])) {
//         print(true);
//       }

//     }

//     print(false);

// }

//?--------------------------------------------------------------------------------------------------------------------

//!09/02/24 Leetcode(2364 Count Number of Bad Pairs) TLE
// void main() {
//   List<int> l = [4, 1, 3, 3];

//   int count = 0;

//   for (var i = 0; i < l.length; i++) {
//     for (var j = i + 1; j < l.length; j++) {
//       int val = j - i;
//       // print(val);
//       int val2 = l[j] - l[i];
//       // print(val2);
//       if (val != val2) {
//         count++;
//         //  print(count);
//       }
//     }

// print(count);
//   }
// }

//?---------------------------------------------------------------------------------------------------------------------------------------------

//! 21/02/25
//! Quesiton no 1: 1941. Check if All Characters Have Equal Number of Occurrences

// void main(List<String> args) {
//   String s = "aaabb";
//   var m = <String,int>{};

//   for (var i = 0; i < s.length; i++) {
//     if (m.containsKey(s[i])) {
//       m[s[i]] = m[s[i]]! + 1;
//     }else{
//       m[s[i]] = 1;
//     }

//   }

//   final ans = m.values.every((value) => value == m.values.first,);

//   print(m);
//   print(ans);
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 22/02/25
//! Question no 1: 125. Valid Palindrome

// void main(List<String> args) {
//   final String s = "A man, a plan, a canal: Panama";

//   String filterString = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

//   // Check if cleaned string is equal to its reverse
//   final ans = filterString == filterString.split('').reversed.join('');

//   print(ans); // Output: true
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------

//! MATH
//! 23/02/25

//! Question no 1: Three Divisor

// void main() {
//   int n = 12;
//   int count = 0;
//   for (int i = 1; i <= n; i++) {
//     if (n % i == 0) {
//       count++;
//     }
//   }
//   print(count);
//   if (count == 3) {
//     print(true);
//   } else {
//     print(false);
//   }
// }

//?--------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Question no 2: Smallest Even Number: Given a positive integer n, return the smallest positive integer that is a multiple of both 2 and n.

//* Solution===============>
//Problem Understanding: We need to find the smallest number that is divisible by both 2 and n.
// Even Number Case: If n is already even (divisible by 2), then n itself is the smallest multiple of both 2 and n.
// Odd Number Case: If n is odd, then we need to multiply it by 2 to make it even (and thus divisible by 2). So, the smallest multiple is n * 2.
// Ternary Operator: The code uses a ternary operator (n % 2 == 0) ? n : n * 2 as a concise way to express this logic. It checks if n is even. If it is, it returns n; otherwise, it returns n * 2.
// Efficiency: This solution is very efficient because it directly calculates the result without needing to iterate or search. It has a time complexity of O(1).

// void main(List<String> args) {
//   int n = 5;
//   int smallestMultiple = (n & 1 == 0) ? n : n*2;

//     print(smallestMultiple);
// }

//?--------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Question no 3: 1979. Find Greatest Common Divisor of Array

//* 📌 Euclidean Algorithm: The Euclidean Algorithm is based on the principle:

//* GCD of two numbers a and b (where a > b) is the same as GCD of b and a % b.
//* Repeat the process until the remainder is 0. The last non-zero remainder is the GCD.

//* Stop when b = 0. Then, GCD(a, 0) = a.

// void main(List<String> args) {
//   List<int> nums = [7,5,6,8,3];
//   nums.sort();
//   print(nums);
//   int smallestNumber = nums.first;
//   int largestNumber = nums.last;

//   print( calculateGcd(smallestNumber, largestNumber));

// }

// int calculateGcd(int a, int b){
//   if (b == 0) {
//     return a;
//   }

//   return calculateGcd(b, a%b);
// }

//?--------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Leetcode (283. Move Zeroes)
// void main(List<String> args) {
//   List<int> nums = [0,1,0,3,12];

//   int i =0;

//   for (var j = 0; j < nums.length; j++) {
//     if (nums[j] != 0) {
//       int temp = nums[i];
//       nums[i] = nums[j];
//       nums[j] = temp;
//       i++;
//     }
//   }
// print(nums);
// }

//?--------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 28/02/25
//! Add Digits
// void main(List<String> args) {
//   int num = 38;
//   if (num == 0) print(0);
//   int sum = 0;
//   while (num > 0){
//     int number = num % 10;
//     num = num ~/ 10;
//     sum+=number;

//     if (sum > 9 && num == 0) {
//       num = sum;
//       sum =0;
//     }
//    print(sum);
//   }
// }

//*======================================================================================================================================================================================================================================================================================================*//

//! March Month

//! 02/03/24
//! 2570. Merge Two 2D Arrays by Summing Values

// import 'dart:core';

// void main(List<String> args) {
//   final List<List<int>> nums1 = [
//     [1, 2],
//     [2, 3],
//     [4, 5]
//   ];

//   final List<List<int>> nums2 = [
//     [1, 4],
//     [3, 2],
//     [4, 1]
//   ];

//    final map = <int, int>{};

//   // Store nums1 values in the map
//   for (var i = 0; i < nums1.length; i++) {
//     map[nums1[i][0]] = nums1[i][1];
//   }

//   // Merge nums2 into the map
//   for (var i = 0; i < nums2.length; i++) {
//     if (map.containsKey(nums2[i][0])) {
//       // If ID exists, sum values
//       map[nums2[i][0]] = map[nums2[i][0]]! + nums2[i][1];
//     } else {
//       // If ID does not exist, add it
//       map[nums2[i][0]] = nums2[i][1];
//     }
//   }

//   // Convert map to a sorted list of lists
//   final result = map.entries.map((e) => [e.key, e.value]).toList();
//   result.sort((a, b) => a[0].compareTo(b[0])); // Ensure sorting by ID

//   print(result);
// }

//?----------------------------------------------------------------------------------------------------------------------

//! 03/03/25
//! Partition Array According to Given Pivot

// void main() {
//   List<int> nums = [9, 12, 5, 10, 14, 3, 10];
//   int pivot = 10;

//   List<int> lessThan = [];
//   List<int> equalTo = [];
//   List<int> greaterThan = [];

//   for (var i = 0; i < nums.length; i++) {
//     if (nums[i] < pivot) {
//       lessThan.add(nums[i]);
//     } else if (nums[i] > pivot) {
//       greaterThan.add(nums[i]);
//     } else {
//       equalTo.add(nums[i]);
//     }
//   }

//   print(lessThan);
//   print(greaterThan);

//   List<int> ans = [...lessThan, ...equalTo, ...greaterThan];

//   print(ans);
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------

//! 04/03/25
//! Leetcode(1780. Check if Number is a Sum of Powers of Three)

// void main(List<String> args) {
//   int n = 12;
//   // int base = -1;
//   final List<int> base = [];
//   print(n);
//   while (n != 0) {
//     int r = n % 3;
//     base.add(r);

//     n = n ~/ 3;
//   }
//  print(base.every((element) => element < 2,));

// }

//?----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 05/03/25
//! Leetcode ( 1480. Running Sum of 1d Array)

// void main(List<String> args) {
//  final  List<int> nums = [3,1,2,10,1];

// for (var i = 1; i < nums.length; i++) {
//   nums[i] += nums[i-1];
// }
// print(nums);

// }
//?----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 06/03/25
//! 2965. Find Missing and Repeated Values //!Pending

// void main(){
// List<List<int>> grid = [[1,3],[2,2]];

// final List<int> l = [
//     for (var row in grid)
//     for (var i in row)
//         i
// ];
// print(l);

// }

//! 07/03/25
//! Leetcode (2523. Closest Prime Numbers in Range)
// void main(List<String> args) {

//     int left = 10, right = 19;
//      // Step 1: Compute primes up to 'right' using Sieve of Eratosthenes
//     List<bool> isPrime = List.filled(right + 1, true);
//     isPrime[0] = isPrime[1] = false;

//     for (int i = 2; i * i <= right; i++) {
//       if (isPrime[i]) {
//         for (int j = i * i; j <= right; j += i) {
//           isPrime[j] = false;
//         }
//       }
//     }

//     // Step 2: Extract prime numbers in the given range [left, right]
//     List<int> primes = [];
//     for (int i = left; i <= right; i++) {
//       if (isPrime[i]) {
//         primes.add(i);
//       }
//     }

//     // Step 3: Find the closest prime pair
//     if (primes.length < 2){
//         print([-1,-1]);
//         return;
//     } // No valid pair

//     int minDiff = right - left + 1; // Maximum possible difference
//     List<int> closestPair = [-1, -1];

//     for (int i = 1; i < primes.length; i++) {
//       int diff = primes[i] - primes[i - 1];
//       if (diff < minDiff) {
//         minDiff = diff;
//         closestPair = [primes[i - 1], primes[i]];
//       }
//     }

// print(closestPair);
// }

//! 08/03/25
//? LEEtcode (1920. Build Array from Permutation)

// void main(List<String> args) {
//   List<int> nums = [0,2,1,5,3,4];
//   List<int> ans = [];
//   for (var i = 0; i < nums.length; i++) {
//     ans.add(nums[nums[i]]);
//   }
//   print(ans);
// }

//! 09/10/25
//! Leetcode 709
// void main(){
// String s = "Heloo";
// print(s.toLowerCase());
// }

// //! Second Question : Leetcode 412
// void main(List<String> args) {
//   List<String> ans = [];

//   int n = 15;
//   for (var i = 1; i <= n; i++) {
//     if (i%3 == 0 && i%5 == 0) {
//       ans.add("FizzBuzz");
//     }else if(i%3 == 0){
//          ans.add("Fizz");
//     }else if(i%5 == 0){
//        ans.add("Buzz");
//     }else{
//       ans.add("$i");
//     }
//   }
//   print(ans);
// }

//! Third Queestion
//! Leetcode 2525
// void main(List<String> args) {
//   int l = 1000, w = 35, h = 700, mass = 300;

//   bool isBulky =  l*w*h >= 1000000000 || l >= 10000 || w >= 10000 || h >= 10000;

//   bool isHeavy = mass>= 100;

//        if (isBulky && isHeavy) print("Both");

//     if (isBulky) print("Bulky");

//     if (isHeavy) print("Heavy");

//     return print("Neither");
// }

//! 11/03/2025
//! Leetcode (1358. Number of Substrings Containing All Three Characters)

// void main(List<String> args) {
// String s = "abcabc";
// Map<String,int> map = {};
// for (var i = 0; i < s.length; i++) {
//  for (var j = i+1; j <= s.length; j++) {
//     print(s.substring(i,j));
//    final String substringS = s.substring(i,j);
//     if (substringS.contains('a') && substringS.contains('b') && substringS.contains('c')) {

//       map[substringS] = (map[substringS] ?? 0) + 1;
//     }
//  }
// }
// int count = 0;
// for (var e in map.entries) {
//   count+=e.value;
// }

// print(count);
// print(map);

// }

void main(List<String> args) {
  String s = "abcabc";
  int left = 0;
  int count = 0;

  // Map to track character frequency
  Map<String, int> map = {'a': 0, 'b': 0, 'c': 0};

  for (var right = 0; right < s.length; right++) {
    map[s[right]] = (map[s[right]] ?? 0) + 1;
     print(map);

    while (map['a']! > 0 && map['b']! > 0 && map['c']! > 0) {
      count += s.length - right; 
      map[s[left]] = map[s[left]]! - 1; 
      left++; 
    }
  }
  print(map);
  print(count);
}
