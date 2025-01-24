//!22/01/25

//! Collections in dart
//!  Synchronus Generating

//?--------------------------------------------------------------------------------------------------------------------

//! Example 1:  Synchronus Generating
void main(List<String> args) {
  var names = getName();
  print(names); // (Jack, Jill, John, Jake, Dolly, Pinku, Jackie, Jillie)
}

  Iterable<String> templateNames() sync* {
    yield 'Dolly';
    yield 'Pinku';
    yield 'Jackie';
    yield 'Jillie';
  }

  Iterable<String> getName() sync* {
    yield 'Jack';
    yield 'Jill';
    yield 'John';
    yield 'Jake';
    yield* templateNames();
  }