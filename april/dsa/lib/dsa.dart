//! 12/04/25
//! All April Dsa

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//!   12/04/25
//! Question no 1: Leetcode(1400. Construct K Palindrome Strings)

// void main(List<String> args) {
//   String s = "annabelle";
//   int k = 2;
//   Map<String, int> map = <String, int>{};

//   if(s.length < k){
//     return;
//   }

//   for (var i = 0; i < s.length; i++) {
    
//       map[s[i]] = (map[s[i]] ?? 0) + 1;
    
//   }

//   int oddCount = map.values.where((count) => count % 2 != 0).length;

//   print(oddCount);

//   if (oddCount <= k) {
//     print(true);
//   } else {
//     print(false);
//   }
//   print(map);
// }