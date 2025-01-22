//!22/01/25

//! Collections in dart
//! MAPS
//* Maps are collections of key-value pairs. In dart, maps are unordered collections of key-value pairs. Each key in the map should be unique.
//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  Basic map example
// void main(List<String> args) {
//   Map<String, int> countryDialingCode = {
//     'USA': 1,
//     'India': 91,
//   };
//   print(countryDialingCode);
//   print(countryDialingCode['India']);

// }

//?------------------------------------------------------

//! Example 2:  Access all map elements
// void main(List<String> args) {
//   Map<String, int> countryDialingCode = {
//     'USA': 1,
//     'India': 91,
//   };
//   print(countryDialingCode);
//   print(countryDialingCode.keys);
//   print(countryDialingCode.values);
// }

//?------------------------------------------------------

//! Example 3:  Add item to map
// void main(List<String> args) {
//   Map<String, int> countryDialingCode = {
//     'USA': 1,
//     'India': 91,
//   };
//   countryDialingCode['UK'] = 44;
//   countryDialingCode.putIfAbsent('Nepal', () => 977);
//   print(countryDialingCode);
// }

//?------------------------------------------------------

//! Example 4:  .Contains()  method  in map
// void main(List<String> args) {
//   Map<String, int> countryDialingCode = {
//     'USA': 1,
//     'India': 91,
//   };
//   print(countryDialingCode);

//   if (countryDialingCode.containsKey('India')) {
//     print('India is in the map');
//   } else {
//     print('India is not in the map');
//   }
// }