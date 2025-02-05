void main() {
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  List<String> fruits = ["Apple", "Banana", "Cherry"];
  for (String fruit in fruits) {
    print(fruit);
  }


  
  Map<String, int> marks = {"Math": 90, "Science": 85};
  marks.forEach((key, value) {
    print("$key: $value");
  });
}
