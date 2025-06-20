void main() {
  // print(sum(1, 2, 3));
  // print(sum(12, 2, 33));
  // print(sum(81, 22, 53));

  print(countLength("Hallo Welt!"));
  print(countLength("Erstelle eine Funktion"));
  print(
    countLength(
      "Erstelle eine Funktion, die einen Text als Parameter entgegennimmt und die Anzahl der Zeichen dieses Textes zurückgibt",
    ),
  );
}

int sum(int x, int y, int z) {
  return x + y + z;
}

int countLength(String txt) {
  return txt.length;
}
