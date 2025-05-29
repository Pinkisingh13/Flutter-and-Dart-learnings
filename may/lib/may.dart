//! All May Dsa

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 03/05/25

//! Question 1:  2591. Distribute Money to Maximum Children

// import 'dart:math';

// void main(List<String> args) {
//   int money = 20;
//   int children = 3;

//   if (money < children) {
//     print(-1);
//     return;
//   }

// int remaining = money - children;

// int maxNumberOfChild = min(remaining ~/ 7, children);

// int amtGivenTochild = maxNumberOfChild * 7;

// int remainingAmt = remaining - amtGivenTochild;

//  if ((remainingAmt == 3) && (children - maxNumberOfChild == 1)) {
//     maxNumberOfChild -= 1;
//   }

// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 06/06/25
//! Question no 1: Build Array from Permutation
//* SOLVED in Leetcode

//! Questtion no 2: Leetcode (1185. Day of the Week)

// void main(){
// int day = 6;
// int month = 5;
// int year = 2025;
// String ans = "";
// DateTime dateTime = DateTime.utc(year,month,day);
// switch (dateTime.weekday) {
//   case 1: ans = "Monday";
//     break;
//   case 2: ans = "Tuesday";
//     break;
//   case 3: ans = "Wednesday";
//     break;
//   case 4: ans = "Thursday";
//     break;
//   case 5: ans = "Friday";
//     break;
//   case 6: ans = "Saturday";
//     break;
//   case 7: ans = "Sunday";
//     break;
// }
// print(ans);
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 07/05/25
//! Question no 1: Leetcode
// class ListNode {
//   int val;
//   ListNode? next;
//   ListNode([this.val = 0, this.next]);
// }

// class Solution {
//   ListNode? deleteDuplicates(ListNode? head) {
//     List<int> ans = [];

//     while (head != null) {
//       ans.add(head.val);
//       head = head.next;
//     }
//     print(ans);

//     ans = ans.toSet().toList()..sort();
//     print(ans);

//     ListNode dummy = ListNode(0);

//     ListNode current = dummy;

//     for (var e in ans) {
//       current.next = ListNode(e);
//       current = current.next!;
//     }

//     return dummy.next;
//   }
// }

// void main() {
//   ListNode head = ListNode(1, ListNode(1, ListNode(2)));
//   Solution solution = Solution();
//   print(solution.deleteDuplicates(head)!.val);

//   ListNode? store = solution.deleteDuplicates(head);

//   while (store != null) {
//     print(store.val);
//     store = store.next;
//   }
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 08/05/25
//! Question no 1: Leetcode (21. Merge Two Sorted Lists)

// class ListNode {
//   int val;
//   ListNode? next;
//   ListNode([this.val = 0, this.next]);
// }

// class Solution {
//   ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
//     if (list1 == null && list2 != null) return list2;
//     if (list2 == null && list1 != null) return list1;

//     ListNode dummy = ListNode(0);
//     ListNode current = dummy;

//     while (list1 != null && list2 != null) {
//       if (list1.val <= list2.val) {
//         current.next = list1;
//         list1 = list1.next;
//       } else {
//         current.next = list2;
//         list2 = list2.next;
//       }
//       current = current.next!;
//     }

//     current.next = list1 ?? list2;

//     // print(dummy.next?.val);
//     return dummy.next;
//   }
// }

// void main() {
//   ListNode list1 = ListNode(1, ListNode(2, ListNode(4)));
//   ListNode list2 = ListNode(1, ListNode(3, ListNode(4)));
//   Solution solution = Solution();
//   // print(solution.mergeTwoLists(list1, list2)!);

//   ListNode? result = solution.mergeTwoLists(list1, list2);

//     // Print the merged list
//   while (result != null) {
//     print(result.val);
//     result = result.next;
//   }
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 11/05/25
//! Question no 1: Leetcode (1550. three-consecutive-odds)

// void main(){
//   List<int> arr = [2,6,4,1];

//   int count = 0;

// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 16/05/25
//! Question no 1: Leetcode (3335. Total Characters in String After Transformations I)

// void main() {
//   String s = "abcyy";

//   int t = 2;

//   for (var i = 0; i < t; i++) {
//   final ans = StringBuffer();

//     for (var j = 0; j < s.length; j++) {
//       if (s[j] == 'z') {
//         ans.write("ab");
//       } else {
//         int code = s.codeUnitAt(j);
//         String char = String.fromCharCode(code + 1);
//         ans.write(char);
//       }
//     }
//     s = ans.toString();
//   }

//   print(s.length);
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 17/05/25
//! Question no 1: Leetcode(75. Sort Colors)

// void main() {
//   List<int> nums = [2, 0, 2, 1, 1, 0];

//   int zero = 0;
//   int one = 0;
//   int two = 0;
//   for (int e in nums) {
//     if (e == 0) {
//       zero++;
//     } else if (e == 1) {
//       one++;
//     } else {
//       two++;
//     }
//   }

//   for (int i = 0; i < nums.length; i++) {
//     if (zero > 0) {
//       nums[i] = 0;
//       zero--;
//     } else if (one > 0) {
//       nums[i] = 1;
//       one--;
//     } else if (two > 0) {
//       nums[i] = 2;
//       two--;
//     }
//   }

//   print(nums);
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 19/05/25
//! Question no 1: Leetcode(3024. Type of Triangle)

// void main(List<String> args) {
//   List<int> nums = [8, 4, 2];
//  print(checkTriangle(nums));
// }

// String checkTriangle(List<int> nums){
//   int a = nums[0];
//   int b = nums[1];
//   int c = nums[2];

//   if ((a+b) <= c || (a+c) <= b || (b+c) <= a) {
//     return "none";
//   }else if(a == b && b == c){
//    return "equilateral";
//   }else if(a == b || b == c || a == c){
//    return "isosceles";
//   }
//   return "scalene";
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! 20/05/25
//! Question no 1: Leetcode (3355. Zero Array Transformation I)

// void main(){
//   List<int> nums = [1,0,1];
//   List<List<int>> queries = [[0,2]];

// print(canTransformToZeroArray(nums, queries));
// }

// bool canTransformToZeroArray(List<int> nums, List<List<int>> queries) {
//   int n = nums.length;
//   List<int> coverage = List.filled(n + 1, 0);

//  Step 1: Mark the coverage using prefix sum technique
//   for (var query in queries) {
//     int li = query[0];
//     int ri = query[1];

//     coverage[li] += 1;
//     if (ri + 1 < n) {
//       coverage[ri + 1] -= 1;
//     }
//   }

// Step 2: Build the actual coverage count
//   for (int i = 1; i < n; i++) {
//     coverage[i] += coverage[i - 1];
//   }

// Step 3: Check if each element in nums can become zero
//   for (int i = 0; i < n; i++) {
//     if (nums[i] > coverage[i]) {
//       return false;
//     }
//   }

//   return true;
// }

//! Question no 2: Leetcode(205. Isomorphic Strings)

// void main(List<String> args) {
//   String s = "foo";
//   String t = "bar";

//   print(isIsomorphic(s, t));
// }

// bool isIsomorphic(String s, String t) {
//   final map = <String, String>{};

//   for (var i = 0; i < s.length; i++) {
//     if (map.containsKey(s[i])) {
//       if (map[s[i]] != t[i]) {
//         return false;
//       }
//     } else {
//       if (map.containsValue(t[i])) {
//         return false;
//       }
//       map[s[i]] = t[i];
//     }
//   print(map);
//   }
//   return true;
// }


//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 21/05/25
//! Question no 1: Leetcode (73. Set Matrix Zeroes)

// void main(){
//   List<List<int>> m =  [[0,1,2,0],[3,4,5,2],[1,3,1,5]];
//     Set<int> rows = {};
//     Set<int> cols = {};
//     for (int i = 0; i < m.length; i++) {
//       for (int j = 0; j < m[i].length; j++) {
//         if (m[i][j] == 0) {
//           rows.add(i);
//           cols.add(j);
//         }
//       }
//     }

//     print("rows: $rows");
//     print("cols: $cols");

//  for (int i in rows) {
//     for (int j = 0; j < m[0].length; j++) {
//       m[i][j] = 0;
//     }
//   }

//   for (int j in cols) {
//     for (int i = 0; i < m.length; i++) {
//       m[i][j] = 0;
//     }
//   }

//   print(m);
// }

//?-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 22/04/25
//! Question no 1: Leetcode (771. Jewels and Stones)

// void main(){
//   String jewels = "aA";
//   String stones = "aAAbbbb";

//? ONE WAY
// int count = 0;
// for (var i = 0; i < stones.length; i++) {
//   if (jewels.contains(stones[i])) {
//     count++;
//   }
// }
// print(count);

// }

//?--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 23/04/25
//! Question no 1: Leetcode (977. Squares of a Sorted Array)
// void main() {
  // List<int> nums = [-4, -1, 0, 3, 10];

  // Time Complexity O )  || Space Complexity : O(N)
  // for (var i = 0; i < nums.length; i++) {
  //   nums[i] = nums[i] * nums[i];
  // }
  // nums.sort();
  // print(nums);

  //! Second Way:
  // for (var i = 0; i < nums.length; i++) {
  //   nums[i] = nums[i] * nums[i];
  // }
  // print(nums);

  // for (var i = 1; i < nums.length; i++) {
  //   for (var j = 1; j < nums.length-i; j++) {
  //   if (nums[j] < nums[j - 1]) {
  //     int temp = nums[j];
  //     nums[j] = nums[j - 1];
  //     nums[j-1] = temp;
  //   }
  //   }
  // }

  // print(nums);
// }


//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 24/05/25
//! Question no 1 : Leetcode (28. Find the Index of the First Occurrence in a String)

// void main(){
//   String haystack = "sadbutsad";
//   String needle = "leeto";

//   print(haystack.indexOf(needle));
// }

//?--------------------------------------------------------------

//! Question no 2:  Leetcode(392. Is Subsequence)

// void main(List<String> args) {
//   String s = "acb";
//   String t = "ahbgdc";

//   int i =0;
//   int j = 0;

//   while ((i < s.length) && (j < t.length)) {
//     if (s[i] == t[j]) {
//       i++; 
//       j++;
//     }else{
//       j++;
//     }
//   }

//  print(i == s.length);

// }


//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 25/05/25
//! Question no 1: Leetcode (Find The Original Array of Prefix Xor)

// void main(List<String> args) {
//   List<int> pref = [5,2,0,3,1];
//     for(int i = pref.length-1;i>=1;i--){
//      pref[i] ^= pref[i-1];
//     } 
//    print(pref); 
// }

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 26/05/25
//! Question no 1:  Leetcode(387. First Unique Character in a String)
//! Submit the previous solved dsa

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//!27/05/25

//! Question no 1: Leetcode (2894. Divisible and Non-divisible Sums Difference) Todays problem

//! BRUTE FORCE
// void main(){
//   int n = 10;
//   int m = 3;

//   List<int> nonDivList = [];
//   List<int> divisibleList = [];
//   int sumOfDivisible = 0;
//   int sumOfNonDivisible = 0;

//   for (var i = 1; i <=n; i++) {
//      if (i % m !=  0) {
//       nonDivList.add(i);
//      }else{
//       divisibleList.add(i); 
//      }
//   }
//   for (var e in nonDivList) {
//     sumOfNonDivisible+=e;
//   }
//   for (var e in divisibleList) {
//     sumOfDivisible+=e;
//   }

//  print(sumOfNonDivisible - sumOfDivisible);


//   print("nList is $nonDivList and mlist is $divisibleList");


// }


//! Optimized way
// void main(){
//   int n = 10;
//   int m = 3;

//   int sumOfDivisible = 0;
//   int sumOfNonDivisible = 0;
 
//  for (var i = 1; i <= n; i++) {
//    if (i % m ==  0) {
//      sumOfDivisible+=i;
//    }else{
//     sumOfNonDivisible+=i;
//    }
//  }

//  print(sumOfNonDivisible - sumOfDivisible);

// }


//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//!28/05/25
//! Question no 1: Leetcode =>  442. Find All Duplicates in an Array

// void main(){
//  List<int> nums = [4,3,2,7,8,2,3,1];

 //! First Way: Time Limit Exceeded
//  List<int> ans = []; 
//  for (var i = 0; i < nums.length-1; i++) {
//   for (var j = i+1; j < nums.length; j++) {
//     if (nums[i] == nums[j]) {
//       ans.add(nums[i]);
//     }
//   }
//  }
//  print(ans);

// }


//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//!29/05/25
//! Question no 1: Leetcode =>  Contains Duplicate 2
//! Solved on leetcode

//?------------------------------------------------------------------------------------------

//! Question no 2: Leetcode: 441. Arranging Coins

void main(){
  int n = 5;
  int sum = 0;
  for (var i = 1; i <= n; i++) {
    sum+=i;
    if (sum > n) {
      print(i-1);
    }else if(sum == n){
      print(i);
    }
  }
  print(0);
}