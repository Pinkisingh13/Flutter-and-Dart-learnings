//! June Leetcode DSA

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//! 01/06/25 (slved on leetcode)

//? ----------------------------------------------------------------------------------------------------------------------

//! 02/06/25

//! Question no 1: Leetcode(485. Max Consecutive Ones)

import 'dart:math';

void main() {
  List<int> nums = [1, 1, 0, 1, 1, 1];


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
  String s = nums.join();
  print(s);

   int count = s.split('0').map((e) => e.length,).fold(0, (previousValue, element) { 
    print("Previous value: $previousValue");
    print("Element value: $element");
    return previousValue > element ? previousValue : element;

});

   print(count);


}
