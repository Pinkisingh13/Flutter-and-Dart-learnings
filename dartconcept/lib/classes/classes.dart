//! 27/01/25

//! Classes in Dart
//?--------------------------------------------------------------------------------------------------------------

//! Example 1: Simple Classes
//* classes are like blueprints of information there are blueprints of logic and you basically create this logic in one place and  reuse it in many different other place this blue print itself like the main logic it is called classes and copies of these logic  blueprints are called instances so you have always an one class that does something and then you can have  many instances of that class. if anyone make changes  in instances whoever basically took that the copy of the blueprint makes changes to theor copy it won't be reflected on your copy and vice-versa. if you change your blueprint and then that instance copy won't be affected only the next copy that you make of your blueprint then will have you chnages in it again it's the same thing is true in classes.
//* However sometimes you can create classes in  dart and many other programming language where your chnages will actually be available immediately to the instances.
void main(List<String> args) {
  final person1 = Person("Foo", 25);
  print(person1.name);
}

// every class needs a constructor where it has properties and methods.
// Constructor is a special function usually with name of the class itself and whose job is to create an instance of the class.

class Person {
  final String name;
  final int age;
  Person(
    this.name,
      this.age) {
      print('Person constructor');
    }
  
}
