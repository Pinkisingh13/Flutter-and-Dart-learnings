//!22/01/25

//! Collections in dart
//!  Extending List base class to  create Safer List

//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  Extending List base class to  create Safer List
import 'dart:collection';

void main(List<String> args) {
  var saferList = SaferList(absentValue: "Not_found", defaultValue: "Default", val: ["Jack", "Jill"]);
  print(saferList);
  print(saferList[0]); // Jack
  print(saferList[1]); // Jill
  print(saferList[2]); // Not_found
  saferList.length = 5;
  print(saferList.length); // 5
  print(saferList); // [Jack, Jill, Default, Default, Default]

  saferList.length = 0;
  print(saferList.length); // 0
  print(saferList.first); // []
  print(saferList.last); // []
}

class SaferList<T> extends ListBase<T> {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SaferList(
      {required this.absentValue, required this.defaultValue, List<T>? val})
      : _list = val ?? [];

  @override
  int get length => _list.length;

  @override
  set length(int value) {
    if (value <= _list.length) {
      _list.length = value;
    } else {
      _list.addAll(List.filled(value - _list.length, defaultValue));
    }
    _list.length = value;
  }

  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, T value) {
    _list[index] = value;
  }

  @override
  String toString() {
    return _list.toString();
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;
  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
