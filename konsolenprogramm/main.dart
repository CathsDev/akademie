class KeyGenerator {}

void main() {
  List.generate(26, (index) => print(String.fromCharCode(index + 65)));
}
