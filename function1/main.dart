void main() {
  // printNumber(5);
  // printNumber(8);
  // printNumber(-3);

  // triplePrint("Hallo");
  // triplePrint("World");
  // triplePrint("Hallo Welt!");

  reverseInitials("Catrin", "Sauer");
  reverseInitials("Frida", "Müller");
  reverseInitials("Hedwig", "Laurin");
}

void printNumber(int x) {
  print(x);
}

void triplePrint(String txt) {
  for (int i = 0; i < 3; i++) {
    print(txt);
  }
}

void reverseInitials(String firstName, String lastName) {
  print(
    "${(firstName.substring(firstName.length - 1).toUpperCase())}. ${(lastName.substring(lastName.length - 1).toUpperCase())}",
  );
}
