//! Asynchronous Programming in dart
//! 13/04/25

//?------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example 1 : Future
// Future arepieces of functionality that will complete their work in the future.
// When we call the normal functions the application stops executing the caller function. As in this case the function that is calling getName() function is main function so,execution will literally stop in that function until getName() returns. So only the we can go to line no: 3  and again it will call getName() and return a value then it will continue after that.

//How ever if you call this function that returns  a future the execution of the caller function will just continue. it does not really care when the future ends unless she ask you ask the application to wait for the results. taht is done using async and await syntax

//! Normal Function
//  void main(List<String> args) {
//  final name1 = getName();
//  final name2 = getName();

//  print(name1);
//  print(name2);
// }

// String getName() {
// return "Foo Bar";
// }

//! Future Function
void main(List<String> args) async {
  print(await getName());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
}

Future<String> getName() async => "Foo Bar";
Future<String> getAddress() => Future.value("123 Main St");

Future<String> getPhoneNumber() => 

Future<String>.delayed(
      Duration(seconds: 2),
      () => "555-555-5555",
    );

Future<String> getCity() async {
  Future.delayed(
    Duration( seconds: 1 ),
  );
  return "New York";
}


//? ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//! Example 2: Future Error Handling
