//!19/02/25

//! Extension

//?-------------------------------------------------------------------------------------------------------------------

//!Example 1: Intro of Extension/Extending String

// void main(List<String> args) {
//   final value = 4;
//   final timesFour = value.timesFour;
//   print(timesFour);

//   // Extension on String
//   print('Hello'.reversed);

// }

// extension on int{
// int get timesFour => this*4;
// }

// extension on String{
//   String get reversed => split("").reversed.join();
// }

//?-------------------------------------------------------------------------------------------------------------------

//!Example 2: Sum of iterables
// void main(List<String> args) {
//   Iterable<num> nums = [1, 2, 3, 4];
//   Iterable<double> numDoubles = [1.00, 2.00, 3.00, 4.00];
//   Iterable<String> str = ["hello", "World"];
//   print(nums.sum);
//   print(numDoubles.sum);
//   print(str.concatenated);
// }

// extension ConcatenateString on Iterable<String> {
//   String get concatenated => join(",");
// }

// extension SomoftheNum<T extends num> on Iterable<T> {
//   T get sum => reduce((value, element) => value + element as T);
// }

//?-------------------------------------------------------------------------------------------------------------------

//! Example 3: Range on int
// void main(List<String> args) {
//   // 1.to() -> Iterable[1,2,3,4,5,6,7,8,9,10]
//   // 1.to(10, inclusive: false) -> Iterable[1,2,3,4,5,6,7,8,9]

//   print(1.to(10));
//   print(10.to(10));
//   print(10.to(10,inclusive: false));

// }

// extension on int {
//   Iterable<int> to(int end, {bool inclusive = true}) => end > this
//       ? [for (var i = this; i < end; i++) i, if (inclusive) end]
//       : [for (var i = this; i > end; i--) i, if (inclusive) end];
// }

//?-------------------------------------------------------------------------------------------------------------------

//! Example no 4: Finding duplicate values in Iterables

// void main(List<String> args) {
// print([1,2,3].duplicate);
// print([1,2,3,1].duplicate);
// print(["Foo", "Bar"].duplicate);
// print(["Foo", "Bar", "foo"].duplicate);

  
// }

// extension on Iterable{

//  bool get duplicate => toSet().length != length ;
// }

//?---------------------------------------------------------------------------------------------------------------------------------------------------

//! Example 5: Finding and Mapping keys and values on map
void main(List<String> args) {
  
}