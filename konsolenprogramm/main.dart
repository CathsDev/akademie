import 'dart:math';
import 'dart:io';

class KeyGenerator {
  int keyLength;

  KeyGenerator({required this.keyLength});

  String generateKey() {
    const keyChars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

    String chars = keyChars;

    final rand = Random.secure();
    return List.generate(
      keyLength,
      (index) => chars[rand.nextInt(chars.length)],
    ).join();
  }
}

void main() {
  stdout.write('Länge: ');
  int? keyLength = int.tryParse(stdin.readLineSync() ?? '');
  if (keyLength == null || keyLength <= 0) {
    print('Ungültige Eingabe!');
    return;
  }

  var generator = KeyGenerator(keyLength: keyLength);

  String key = generator.generateKey();
  print('Key: $key');
}
