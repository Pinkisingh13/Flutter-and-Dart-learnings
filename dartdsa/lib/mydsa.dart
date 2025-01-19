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

