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

void main(List<String> args) {
  List<int> nums = [8, 4, 2];
 print(checkTriangle(nums));
}


String checkTriangle(List<int> nums){
  int a = nums[0];
  int b = nums[1];
  int c = nums[2];

  if ((a+b) <= c || (a+c) <= b || (b+c) <= a) {
    return "none";
  }else if(a == b && b == c){
   return "equilateral";
  }else if(a == b || b == c || a == c){
   return "isosceles";
  }
  return "scalene";
}