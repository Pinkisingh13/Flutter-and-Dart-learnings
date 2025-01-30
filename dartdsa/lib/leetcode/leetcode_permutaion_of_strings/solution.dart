//! 30/01/25 (Leetcode: Permutation of Two Strings (567))

import 'package:collection/collection.dart';

void main(List<String> args) {
  String s1 = "ab";
  String s2 = "eidbaooo";
  if (s1.length > s2.length) {
    print(false);
    return;
  }

  final equal = MapEquality().equals;

  Map<String, int> s1Map = {};
  Map<String, int> s2Map = {};

  // Step 1: Create frequency map for s1 and the first window in s2
  for (var i = 0; i < s1.length; i++) {
    s1Map[s1[i]] = (s1Map[s1[i]] ?? 0) + 1;
    s2Map[s2[i]] = ((s2Map[s2[i]] ?? 0) + 1);
  }


// Step 2: Check if the first window matches
    if (equal(s1Map,s2Map)) {
      print(true);
      return;
    }

// Step 3: Sliding window
  for (var i = s1.length; i < s2.length; i++) {
    s2Map[s2[i]] = (s2Map[s2[i]] ?? 0) + 1;
    
    int leftIndex = i - s1.length;
    if (s2Map[s2[leftIndex]] == 1) {
      s2Map.remove(s2[leftIndex]);
    } else {
      s2Map[s2[leftIndex]] = s2Map[s2[leftIndex]]! - 1;
    }

    // Compare maps
    if (equal(s1Map,s2Map)) {
      print(true);
      return;
    }
  }
  print(false);
}