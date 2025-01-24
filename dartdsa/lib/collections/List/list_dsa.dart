//! 24/01/25
//! List Dsa Questions and Solutions
//?--------------------------------------------------------------------------------------------------------------------

//! Question 1:  Write a program to find the second largest element in a list.
void main(List<String> args) {
  final list = [5,5,3];

findSecondLargest(list);
}

void findSecondLargest(List<int> list) {
  int secondLargest = 0;
  int largest = 0;

  for (var i = 0; i < list.length; i++) {
    if (list[i] > largest) {
      secondLargest = largest;
      largest = list[i];
    }else if (list[i] > secondLargest && list[i] < largest) {
      secondLargest = list[i];
    }
  }
  print(secondLargest);
}
