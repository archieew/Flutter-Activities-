//Custodio, Archie D.
// WD - 301
import 'dart:math';
import 'dart:io';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*';
Random _rnd = Random();

void main() {
  print("Choose your password strength (weak, medium, strong): ");
  String strength = stdin.readLineSync() ?? "";
  
  passwordGenerator(strength.toLowerCase());
}

void passwordGenerator(String strength) {
  int length;
  
  if (strength == 'weak') {
    length = 8;
  } else if (strength == 'medium') {
    length = 15;
  } else if (strength == 'strong') {
    length = 25;
  } else {
    print("Invalid input! Choose only from 'weak', 'medium', or 'strong'.");
    return;
  }
  
  String password = shuffleGenerator(length);
  
  print("Password Generated: $password");
}

String shuffleGenerator(int length) {
  return String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}
