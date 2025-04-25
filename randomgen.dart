import 'dart:io';
import 'dart:math';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*';
Random _rnd = Random();

void main() {
  print('Enter the strength of the password: weak, medium, or strong');
  String? strength = stdin.readLineSync();

  if (strength == 'weak') {
    print('Generated weak password: ${getRandomString(8)}');
  } else if (strength == 'medium') {
    print('Generated medium password: ${getRandomString(15)}');
  } else if (strength == 'strong') {
    print('Generated strong password: ${getRandomString(25)}');
  } else {
    print('Invalid input. Please enter weak, medium, or strong.');
  }
}

String getRandomString(int length) {
  return String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}