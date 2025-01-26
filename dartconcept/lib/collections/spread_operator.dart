//!22/01/25

//! Collections in dart
//!  Spread Operator with Collections

//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  spread operator with list
// void main(List<String> args) {
//   var names = ['Jack', 'Jill', 'John', 'Jake'];
//   var moreNames = ['Jen', 'Jillie', 'Jackie'];

//! Sub-Eg 1:  wrong way to add two lists
// final allNamesWrong = names;
// allNamesWrong.addAll(moreNames);
// print(names); // [Jack, Jill, John, Jake, Jen, Jillie, Jackie] // it will add moreNames to names because allNamesWrong is a reference to names.

// print(moreNames); // [Jen, Jillie, Jackie]
// print(allNamesWrong); // [Jack, Jill, John, Jake, Jen, Jillie, Jackie]

//! Sub-Eg 2:  right way to add two lists
// var allNamesRight = [...names, ...moreNames];
// print(names); // [Jack, Jill, John, Jake]
// print(moreNames); // [Jen, Jillie, Jackie]
// print(allNamesRight); // [Jack, Jill, John, Jake, Jen, Jillie, Jackie]

//! Sub-Eg 3:  Another way to add two lists
// final allAnotherWay = [...names]..addAll(moreNames);
// print(names); // [Jack, Jill, John, Jake]
// print(moreNames); // [Jen, Jillie, Jackie]
// print(allAnotherWay); // true
// }

//?------------------------------------------------------

//! Example 2:  spread operator with set
// void main(List<String> args) {
//   var names = {'Jack', 'Jill', 'John', 'Jake'};
//   var moreNames = {'Jen', 'Jillie', 'Jackie'};
//   var allNames = {...names, ...moreNames};
//   print(allNames); // {Jack, Jill, John, Jake, Jen, Jillie, Jackie}
// }

//?------------------------------------------------------

//! Example 3:  spread operator with map

// void main(List<String> args) {
//   var names = {'first': 'Jack', 'second': 'Jill'};
//   var moreNames = {'third': 'John', 'fourth': 'Jake'};
//   var allNames = {...names, ...moreNames};
//   print(allNames); // {first: Jack, second: Jill, third: John, fourth: Jake}
// }

//?------------------------------------------------------

//! Example 4: Modify const map using spread operator
// void main(List<String> args) {
//   addToDictionaryWrong(); // Error: Unsupported operation: Cannot add to an unmodifiable map
//   addToDictionaryRight();
// }

void addToDictionaryWrong() {
  const names = {'first': 'Jack', 'second': 'Jill'};
  final allNames = names;

  try {
    allNames.addAll({
      'third': 'John'
    }); // Error: Unsupported operation: Cannot add to an unmodifiable map
    print(names);
    print(allNames); // {first: Jack, second: Jill, third: John, fourth: Jake}
  } catch (e) {
    print("Error: $e");
  }
}

void addToDictionaryRight() {
  const names = {'first': 'Jack', 'second': 'Jill'};

  //How can we able to add to an unmodifiable map?
  // We can use the spread operator to create a new map with the same key-value pairs as the original map and then add new key-value pairs to the new map. This way, we can add new key-value pairs to the map without modifying the original map.
  final allNames = {...names}..addAll({'third': 'John'});
  print(allNames); // {first: Jack, second: Jill, third: John}
}

//!Example 5:  Conditional spread operator
void main(List<String> args) {
  List<int>? list1;
  List<int>? list2 = [4, 5, 6,...?list1];
  print(list2); // [4, 5, 6] // if list1 is null then it will not add  list1 to list2  
}
