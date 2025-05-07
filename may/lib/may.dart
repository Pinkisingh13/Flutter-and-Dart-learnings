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

// Question no 1:
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    List<int> ans = [];

    while (head != null) {
      ans.add(head.val);
      head = head.next;
    }
    print(ans);

    ans = ans.toSet().toList()..sort();
    print(ans);

    ListNode dummy = ListNode(0);

    ListNode current = dummy;

    for (var e in ans) {
      current.next = ListNode(e);
      current = current.next!;
    }

    return dummy.next;
  }
}

void main() {
  ListNode head = ListNode(1, ListNode(1, ListNode(2)));
  Solution solution = Solution();
  print(solution.deleteDuplicates(head)!.val);

  ListNode? store = solution.deleteDuplicates(head);

  while (store != null) {
    print(store.val);
    store = store.next;
  }
}
