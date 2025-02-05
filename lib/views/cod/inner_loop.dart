void main() {
  List<List<int>> maths = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  for (int i = 0; i < maths.length; i++) {
    for (int j = 0; j < maths[i].length; j++) {
      print(maths[i][j]);
    }
  }
}
