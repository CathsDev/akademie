void main() {
  // printNumber(5);
  // printNumber(8);
  // printNumber(-3);

  triplePrint("Hallo");
  triplePrint("World");
  triplePrint("Hallo Welt!");
}

void printNumber(int x) {
  print(x);
}

void triplePrint(String txt) {
  for (int i = 0; i < 3; i++) {
    print(txt);
  }
}
