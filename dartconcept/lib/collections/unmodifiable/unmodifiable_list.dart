//!22/01/25

//! Collections in dart
//! Unmodifiable List view

// Dart provides a way to create an unmodifiable view of a list. This is useful when you want to prevent the list from being modified. Dart provides an UnmodifiableListView class that creates an unmodifiable view of a list.
//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  Unmodifiable list example
import 'dart:collection';

//here we are creating an unmodifiable view of a list. so we can not add or remove items from the list.
// to create an unmodifiable view of a list, we need to import dart:collection library.
//UnmodifiableListView is a class that creates an unmodifiable view of a list.
void main(List<String> args) {
  List<String> names = ['Jack', 'Jill', 'John', 'Jake'];

  //! UnmodifiableListView()
  var unmodifiableNames = UnmodifiableListView(names);
  print(unmodifiableNames);

  //! List.unmodifiable()
  final namesUnmodifiable = List.unmodifiable(names); 
  print(namesUnmodifiable);

// ! modify original list
  names[3] = "priya";
  print(unmodifiableNames);
  print(namesUnmodifiable);
  //!Cheking error
  try {
    unmodifiableNames.add('Jen'); // Can not add item to unmodifiable list
  } catch (e) {
    print("Error: $e");
  }
}
