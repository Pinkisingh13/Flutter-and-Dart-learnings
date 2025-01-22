//!22/01/25

//! Collections in dart
//!  Encapsulation with Unmodifiable Collection

//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  Encapsulation with Unmodifiable Collection
// here we are using a Person class that has a name and a list of siblings. We are creating an unmodifiable view of the list of siblings. We are trying to add a new sibling to the list of siblings. Since the list of siblings is unmodifiable, we will get an error.
// So we know now that modiying the unmodifiable list is not possible even we use encapsulation.
import 'dart:collection';

void main(List<String> args) {
  final person1 = Person(name: "Jack", siblings: [
    Person(
      name: "Jill",
    ),
    Person(
      name: "John",
    ),
    Person(
      name: "Jake",
    ),
  ]);
// print(person1.siblings![0].name);
  try {
    person1.siblings?.add(Person(name: "Jen"));
  } catch (e) {
    print("Error: $e");
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;

  Person({required this.name, List<Person>? siblings}) : _siblings = siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings);
}
