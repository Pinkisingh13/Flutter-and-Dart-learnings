//!22/01/25

//! Collections in dart
//! Unmodifiable Map view

//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  Unmodifiable Map example
import 'dart:collection';

//Here we are creating an unmodifiable view of a Map. so we can not add or remove items from the map.
// to create an unmodifiable view of a map, we need to import dart:collection library.
//UnmodifiableMapView is a class that creates an unmodifiable view of a map.
void main(List<String> args) {
  Map<String, String> persons = {
    'name': 'Jack',
    'city': 'New York',
    'country': 'USA'
  };
 var unmodifiablePersons = UnmodifiableMapView(persons);
  try {
    unmodifiablePersons["age"] = "20"; // Can not add item to unmodifiable map
    unmodifiablePersons.addAll({"city": "New Jersey"}); // Can not add item to unmodifiable map
  } catch (e) {
    print("Error: $e");
  }
}
