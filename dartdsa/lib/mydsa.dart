//! void main() {   Starting of main Function

//* Q1: Given an integer array nums, return the sum of the 1st and last element of the array.
// List<int>  list = [1,2,3,4];
//  int sum =  list[0] + list[list.length-1];
//   print(sum);

//* Q2: Given two integers X and N, print the value X on the screen N times. Move to the next line after printing, even if N = 0.
//   int x=7; int n = 5;
// for(int i=0; i<n; i++){
//   print('$x');
// }

//* Q3: Print last character of string
//   String thing = "Flower";
//   print(thing[thing.length-1]);
//! }  End of main function

//* Q4: Second largest element
// void main() {
//   List<int> list = [10,20,30,40];
//  int ans = secondMaxNumber(list);
//   print(ans);
// }

// int secondMaxNumber( List<int> list){

//     if (list.length < 2) {
//     return  -1;
//   }
//   int largest = list[0];
//   int secondLargest = -1;

//   for(int n in list){
//     if(n > largest){
//       secondLargest = largest;
//       largest = n;
//     }else if(n > secondLargest && n < largest){
//       secondLargest = n;
//     }

//   }
//   return secondLargest == -1 ? -1 : secondLargest;
// }

//! DSA 10/01/25

//?Q1: Reverse a String
// void main() {
//   String a = "hello";
//* 1st Approach : It is printing each character on new line
// for (int i = a.length-1; i >= 0; i--) {
//   print(a[i]);
// }
//*Second Approach: It is printing in the same line
// String b = "";
// for (var i = a.length - 1; i>= 0; i--) {
//   b += a[i];
// }
// print(b);
//* Third Approach: Built-in Method
// String ans = a.split("").toString();
// String b = "Hello World";
// print(b.split("").toString());
// print(ans);
// }

// //? Q2: Check if a Number is Prime
// import 'dart:math';

// void main() {
//   int number = 2;
// int sqrtNum = 0;

//Find out square root
// for (int i = 1; i <= 36 / 2; i++) {
//   if (i * i == number) {
//     sqrtNum = i;
//   }
// }
//   if (number <= 1) {
//     print("fist check: ");
//     print(false); // Numbers <= 1 are not prime
//     return;
//   }
//   if (number == 2) {
//     print("Second check: Number is $number it is a prime number. ");
//     print(true);
//     return; // 2 is a prime number
//   }
//   if (number % 2 == 0) {
//     print("third check: ");
//     print(false);
//     return; // Even numbers greater than 2 are not prime
//   }
//   for (var i = 3; i <= sqrt(number).toInt(); i += 2) {
//     if (number % i == 0) {
//       print("Number is not prime number");
//       break;
//     }
//   }
//   print("Number is prime number");
// print(sqrtNum);
// }

//! 11/01/2025
//? Q1: Find the Maximum Element in an Array
// import 'dart:math';

// void main() {
//   final list = [-10, -30, -60, -49, -97];

//   if (list.isEmpty) {
//     print("The list is empty.");
//     return;
//   }

// Ensures the algorithm works even if all elements are negative or the list contains a mix of positive and negative numbers.
//   int n = list[0];

//   for (var e in list) {
//     n = max(n, e);
//   }
//   print(n);
// }

//?Q2: Sum of Digits of a Number
// void main() {
//   int n = 12345;
//   int sum = 0;

//   while (n > 0) {
//     sum += n % 10;
//     n = n ~/ 10;
//   }
//   print(sum);
// }

// //? Q3: Implement a Fibonacci Series
// void main() {
//   int n = 5; //0,1,1,2,3,5
//   int ans = 0;
//     int first = 0;
//     int second = 1;
//   for (var i = 0; i < n; i++) {
//     print("Fibonacci of $n is: $first");
//     ans = first + second;
//     first = second;
//     second = ans;
//   }
// }

//? Q4: Check for Palindrome
// void main() {
//* First Approach
// String s ="hello";
// String a = "";
// for (var i = s.length-1; i >= 0; i--) {
//   a +=s[i];
// }
// if (a == s) {
//   print("$s is a palindrome");
// } else {
//   print("$s is not a palindrome");
// }

//* Second Approach
// String s = "appla";
// String ans = s.split("").reversed.join();

// if (ans == s) {
//   print("$s is a palindrome");
// } else {
//   print("$s is not a palindrome");
// }
// }

//? Q5: Merge Two Sorted Arrays
// void main() {
//* First Approach
// List list = [1, 2, 3];
// List list2 = [4, 5, 6];
// int n = list.length - 1 ~/ 2;
// List mergeList = [];
// int i = 0;
// int j = 0;

//   while (i < list.length && j < list2.length) {
//   if (list[i] < list2[j]) {
//     mergeList.add(list[i]);
//     i++;
//   } else {
//     mergeList.add(list2[j]);
//     j++;
//   }
// }

// while (i < list.length) {
//   mergeList.add(list[i]);
//   i++;
// }
// while (j < list2.length) {
//   mergeList.add(list2[j]);
//   j++;
// }
// print(mergeList);

//* Second Approach
//   List list1 = [1, 2, 3, 0, 0, 0];
//   List list2 = [2, 5, 6];

//   int m = 3; //6
// int n = list2.length;
//   for (var i = m; i < list1.length; i++) {
//     list1[i] = list2[i - m];
//   }
//   list1.sort();
//   print(list1);
// }

//? Q6: Find Duplicates in an Array
// void main() {
//   List list = [4, 3, 2, 7, 8, 2, 3, 1]; //Output: [2,3]
//   int n = list.length;
//   Set ans = {}; //
//   List ansList = [];

//   for (var i = 0; i < n; i++) {
//     if (!ans.contains(list[i])) {
//       ans.add(list[i]);
//     }else {
//       ansList.add(list[i]);
//     }
//   }
//   print(ansList);
// }

//! 12/01/2025
//? Q7: Find the First Non-Repeating Character
// void main() {
//   final s = "roll";
//   Map<String, int> map = {};
//   for (var char in s.split("")) {
//     map[char] = (map[char] ?? 0) + 1;
//     print(map);
//   }

//   for (var char in s.split("")) {
//     if (map[char] == 1) {
//       print("First Non-Repeating Character is: $char");
//       return;
//     }
//   }
//   print("Repeating chracter found");
// }

//? Q8: Sort an Array
// void main() {
//   List<int> array = [64, 34, 25, 12, 22, 11, 90];

// Perform Insertion Sort
//    for (int i = 1; i < array.length; i++) {
//     int key = array[i];
//     int j = i - 1;

// Move elements that are greater than `key` to one position ahead
//     while (j >= 0 && array[j] > key) {
//       array[j + 1] = array[j];
//       j = j - 1;
//     }

// Place the key at its correct position
//     array[j + 1] = key;
//   }

//   print("Sorted array (Insertion Sort): $array");
// }

//! 13/01/25

//? Q1: 136. Singl Number ====> LEETCODE
// void main() {
//   List nums = [1,2,1,2,4];
//   int count = 0;
//   for (var num in nums) {
//     count = count ^ num;
//   }
//   print(count);
// }

//! 14/01/25
//? Q1: 58. Length of Last Word
// void main() {
//   String s = "luffy is still joyboy";
//   String result = "";

// print(len);
//   for (var e in s.trim().split(" ")) {
//     if (e.isNotEmpty) {
//       result = e;

//     }
//   }
//   print(result.length);
// }

//? Q2: Search Insert Position
// void main() {
//* First Approach
// List<int> nums = [1, 3, 5, 6];
// int target = 4;
// int count = -1;

// if (nums.contains(target)) {
//   print(nums.indexOf(target));
//   return;
// }

// for (var i = 0; i < nums.length; i++) {
//   if (nums[i] > target) {
//     count = i;
//     break;
//   }
// }

// if (count == -1) {
//   count = nums.length;
// }
// print(count);

//*Second Approach
//   List<int> nums = [1, 3, 5, 6];
//   int target = 4;
//   int right = nums.length - 1;
//   print(right);
//   int left = 0;

//   while (right >= left) {
//     int mid = left + (right - left) ~/ 2;

//     print(mid); // 1 //secon : 2

//     if (nums[mid] == target) {
//       print(mid);
//       break;
//     } else if (nums[mid] < target) {
//       left = mid + 1; // 1 iteration left = 1+1=2
//     } else {
//       right = mid - 1; // 2 iteration right = 2-1 =1
//     }
//   }
//   print(left);
// }

//! 15/01/25
//? Q1: Plus One
// void main() {
//   List<int> digits = [9,9,9];
//     int n = digits.length-1;
//     for(int i=n; i>=0; i--){
//       if(digits[i] < 9){
//           digits[i]++;
//           print(digits);
//       }
//       digits[i] = 0;
//     }
//     digits.insert(0,1);
//     print(digits);
// }

//! 16/01/25

//* Q1: 28. Find the Index of the First Occurrence in a String
// void main() {
//   String s = "hello";
//   String needle = "ll";
// for (var i = 0; i < s.length; i++) {
//   if (s.startsWith(needle)) {
//     print(i);
//     break;
//   } else if (s.contains(needle)) {
//    print(s.indexOf(needle));
//   }
// }
// print(-1);
// }

// Q2.2425. Bitwise XOR of All Pairings

// void main() {
//   List<int> nums1 = [2, 1, 3];
//   List<int> nums2 = [10, 2, 5, 0];

//   //! First Approach
//   int xor = 0;
//   for (int i = 0; i < nums1.length; i++) {
//     for (int j = 0; j < nums2.length; j++) {
//       xor ^= nums1[i] ^ nums2[j];
//     }
//   }
//   print(xor);

//! Second Approach
// int xor = 0;

//* XOR all elements in nums1
// if (nums2.length % 2 != 0) {
//   for (var num in nums1) {
//     xor ^= num;
//   }
// }

//* XOR all elements in nums2
// if (nums1.length % 2 != 0) {
//   for (var num in nums2) {
//     xor ^= num;
//   }
// }

// print(xor);
// }

//!18/01/25
//? Reverse a List
// void main() {
//   List<int> list = [1, 2, 3, 4, 5];
//   Stack stack = Stack();
//   for (var i = list.length - 1; i >= 0; i--) {
//     stack.push(list[i]);
//   }
//   print(stack);
// }

// class Stack<E> {
//   Stack() : list = <E>[];
//   final List<E> list;

//push
//   void push(E element) => list.add(element);

//pop
//   E pop() => list.removeLast();

//   @override
//   String toString() => list.toString();
// }

//! 20/01/25
//! Leetcode Question of the day(2661)
//? Q1: First Completely Painted Row or Column
// void main() {
//   List<int> arr = [1, 3, 4, 2];
//   List<List<int>> mat = [
//     [1, 4],
//     [2, 3],
//   ];
//   int m = mat.length; // Number of rows
//     int n = mat[0].length; // Number of columns

// Flatten the matrix into a list of positions
//     List<List<int>> positions = List.generate(m * n, (_) => [0, 0]);
//     for (int row = 0, index = 0; row < m; row++) {
//       for (int col = 0; col < n; col++, index++) {
//         positions[mat[row][col] - 1] = [row, col];
//       }
//     }

// Row and column painting counters
//     List<int> paintedRow = List.filled(m, 0);
//     List<int> paintedCol = List.filled(n, 0);

// Iterate through `arr` to determine the first complete row/column
//     for (int i = 0; i < arr.length; i++) {
//       int num = arr[i];
//       List<int> indices = positions[num - 1]; // Get the actual indices from precomputed positions
//       int row = indices[0];
//       int col = indices[1];

// Increment painting counters for the corresponding row and column
//       paintedRow[row]++;
//       paintedCol[col]++;

// Check if the current row or column is fully painted
//       if (paintedRow[row] == n || paintedCol[col] == m) {
//         print(i); // Print the index in `arr` that completes a row/column
//       }
//     }

//     print(-1);
// }

//! 22/01/25
//? Q1: 7. Reverse Integer (Leetcode ==> Medium)
// import 'dart:math';

// void main() {
//   int x = 123;

//    // Track reversed
//   int rev = 0;

//  // Track positive/negative sign
//   int sign = x < 0 ? -1 : 1;

//   // Make x absolute for easier processing
//   x = x.abs();

//   while (x > 0) {
//     int digit = x % 10;
//     x ~/= 10.floor();

//     if (rev > (pow(2, 31)-1) ~/ 10) {
//       print(0);
//     }

//     rev = rev * 10 + digit;
//   }

//   print(rev * sign);
// }

//! 23/01/25
//? Q1: 1267 Count Servers that Communicate
// Time Complexity:   // O(M+N)
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

//?-----------------------------=-------------------------

//!Question no 1: Check If Two Strings Are Permutations of Each Other: Given two strings, determine if one is a permutation of the other (i.e., contains the exact same characters but in any order).

// void main(List<String> args) {
//   String s1 = "abc";
//   String s2 = "bca";

//  Map<String, int> map = {};

//  for (var i = 0; i < s2.length; i++) {
//    map[s2[i]] = (map[s2[i]] ?? 0) + 1;
//    map[s1[i]] = (map[s1[i]] ?? 0) - 1;
//  }

//  print(map.values.every((element) => element == 0,));
// }

//! Optimized Way

// void main(List<String> args) {
//   String s1 = "test";
//   String s2 = "text";

//  if (s1.length != s2.length) print(false);

//   List<int> charCount = List.filled(26, 0) ;

//   for (var i = 0; i < s1.length; i++) {
//     print("code unit $i : ${s1.codeUnitAt(i)}");
//     print('a'.codeUnitAt(0)); //97
//     charCount[s1.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
//     charCount[s2.codeUnitAt(i) - 'a'.codeUnitAt(0)]--;
//   }

//   print(charCount.every((element) => element==0,));
//     print("charCount==> $charCount");
// }

//?----------------------------------------------
//
// //! 31/01/25
// //! 2. Group Anagrams Together : Given a list of words, group all the anagrams together.

// //! How to Check for Anagrams?
// //? Two strings are anagrams if:
//  They have the same length.
// They contain the same characters with the same frequency.
// void main(List<String> args) {

//   List<String> w = ["eat","tea","tan","ate","nat","bat"];
//   List<List<String>> l = [];

// Checking if length == 1
//   if ( w.length == 1) {
//     l.add([w[0]]);
//     print(l);
//     return;
//   }

// Checking if length of all elements is the same
//   bool len =  w.map((e) => e.length,).every((element) => element == w[0].length,);
//   if (!len) {
//     l.add([]);
//     return;
//   }

//  Main logic
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

//?----------------------------------------------

//! 01/02/25
//! 📝 3. Find the First Unique Character in a String
// Problem: Given a string, return the index of the first non-repeating character. If it doesn't exist, return -1.

// void main(List<String> args) {
//   String s = "leetcode";
//   Map<String,int> map = {};
//   for (var i = 0; i < s.length; i++) {

//     if (map.containsKey(s[i])) {
//      map[s[i]] =  map[s[i]]!+1;

//     }else{
//      map[s[i]] = 1;
//     }
//   }

//  final ans =  map.entries.firstWhere((element) => element.value == 1,
//  orElse: () => MapEntry("", -1),
//  );

//   print(ans.key.isNotEmpty ? s.indexOf(ans.key) : -1);
//   print(map);
// }

// ?------------------------------------------------------------

//! 01/02/25
//! 3151. Special Array I
// void main(List<String> args) {
//   List<int> nums = [2, 1, 4];

//   for (var i = 0; i < nums.length - 1; i++) {
//     if (nums[i].isEven && nums[i + 1].isEven) {
//       print(false);
//     }
//     if (nums[i].isOdd && nums[i + 1].isOdd) {
//       print(false);
//     }
//   }
//   print(true);

// }

// ?------------------------------------------------------------

//!04/02/25
//! Question no 1: Find the Most Frequent Character in a String given a string, return the character that appears most frequently.

// void main(List<String> args) {
//   String s = "abcbba";
//   Map<String, int> map = {};

//  for (var i = 0; i < s.length; i++) {
//     if (map.containsKey(s[i])) {
//       map[s[i]] = map[s[i]]! + 1;
//     } else {
//       map[s[i]] = (map[s[i]] ?? 0) + 1;
//     }
//   }

//   final ans = map.entries.reduce((v, e) => v.value >= e.value ? v : e);
//   print(map);
//   print(ans.key);
// }

//?----------------------------------------------------------------------
//! 06/02/25
//! Question no 1: Check If Two Strings Are Isomorphic:  Two strings s and t are isomorphic if the characters in s can be replaced to get t.(Each character must map to exactly one other character.)
void main(List<String> args) {
  
}

//?--------------------------------------------------------------------

