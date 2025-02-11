//!10/02/25

//! Custom Operators

//?-------------------------------------------------------------------------------------------------------------------

//! Example 1: Family Member Operators
// void main() {
//   final momFamily = FamilyMember(name: 
//      "bar",
//   );
//   final dadFamily = FamilyMember(name: "bar");
//  final family = momFamily + dadFamily;
//  print(family);
// }

// class FamilyMember {
//   final String name;
//   FamilyMember({
//     required this.name,
//   });

//   @override
//   String toString() {
//     return "Family member, (name = $name)";
//   }
// }

// class Family {
//   final List<FamilyMember> members;

//   Family({required this.members});

//   @override
//   String toString() {
//     return "Family (members = $members)";
//   }
// }

// extension ToFamily on FamilyMember {
//   Family operator +(FamilyMember other) => Family(members: [this, other]);
// }


//?-------------------------------------------------------------------------------------------------------------------

//! Example no 2: Multiplying an iterable

// void main(List<String> args) {
//   const names = ["foo", "bar", "baz", "jig"];
//   print(names * 2); //This does not work directly in dart but we can do it using using extension.
// }

// extension Times<T> on Iterable<T>{
// Iterable<T> operator * (int times) sync*{
//   for (var i = 0; i < times; i++) {
//     yield* this;
//   }
// }
// } 
//?-------------------------------------------------------------------------------------------------------------------

//! Example no 3: Adding generics

void main(List<String> args) {
  
}

// extension NullableAdd<T extends num> on T?{
//   T? operator + (T? other)
// }