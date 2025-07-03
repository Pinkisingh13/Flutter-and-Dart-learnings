// ! 03/07/25
//! Question number 1: Find duplicates

void main(List<String> args) {
  List<int> n = [1, 2, 2, 34, 4, 7, 6, 7, 8, 2, 1];

  // ! First Method
  List<int> ans = [];
  List<int> s = [];

  for (var e in n) {
    if (s.contains(e)) {
      if (!ans.contains(e)) {
        ans.add(e);
      }
    } else {
      s.add(e);
    }
  }

  print(ans);
  print(s);

  //! Second Method:
  Set<int> seen = {};
  Set<int> duplicates = {};

  for (var e in n) {
    if (!seen.add(e)) {
      duplicates.add(e);
    }
  }

  print(duplicates.toList()); // Output: [1, 2, 7]
}
