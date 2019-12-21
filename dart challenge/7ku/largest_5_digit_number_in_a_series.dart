// 7ku Largest 5 digit number in a series

void main() {
  int solution(String str) {
    int largest = 0;
    for (int i = 0; i < str.length - 4; i++) {
      int currentNum = int.tryParse(str.substring(i, i + 5));
      largest = currentNum > largest ? currentNum : largest;
    }

    return (largest);
  }

  print(solution('525253843923234'));
}
