//!22/01/25

//! Collections in dart
//! ITERABLES
//* Iterable is a collection of elements that can be accessed sequentially. Iterable is an abstract class in dart. List, Set, and Map are all iterable. Iterable provides a way to iterate over the elements.

//Difference between list and iterable is iterables are lazily evaluated in dart. But List is eagerly evaluated.
//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  Basic iterable example
// void main(List<String> args) {
//   String getName(int i) {
//     print("getName called");
//     return "Name $i";
// }

//Iterables are lazily evaluated in dart.   //Iterable.generate() is a factory method that creates an iterable that generates values on-the-fly. Iterab;es are lazily generated so the function getName() will be called only when the value is accessed.
// Iterable<String> numbers = Iterable.generate(20, (index) => getName(index));
// print(numbers);

//Here this take() method will take the first two elements from the iterable.
//   for (var number in numbers.take(2)) {
//     print(number);
//   }
// }

//?------------------------------------------------------

//! Example 2:  Mix list with iterable

//* In this example i am using iterables of String. So happend that names is a list <String>.

// void main(List<String> args) {
//   List<String> names = ['Jack', 'Jill', 'John', 'Jake'];

  // This is an iterable of String
  //why this is iterable<String> not list<String>?  The reason behind  this that dart says you may be doing some heavy calculation in this map function, so do i really call this map for every element in the list? The answer is no. Dart will call this map function only when you access the value.
  // iterable saves memory and time. and it does not perform necessary calculations until you access the value.
  // Iterable<String> namesIterable = names.map((name) {
  //  return name.toUpperCase();
  // });
  // print(namesIterable);

  //*here it will print only first two elements of the iterable. and it will not call the map function for the rest of the elements. because iterables are lazily evaluated. we are accessing only first two elements. hence, it doen not perform operation for the rest of the elements.
//   for (var name in namesIterable.take(2)) {
//     print(name);
//   }
// }


//?------------------------------------------------------
