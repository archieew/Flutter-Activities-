import 'dart:io';
import 'dart:math';

void main() {
  print("Enter your student number");
  int snum = int.parse(stdin.readLineSync()!);
  print("Please register your user name");
  String uname = stdin.readLineSync()!;
  registerUser(uname,snum);
}

registerUser(String un, int num) {
  print("Hello $un with student number $num"); 
  String pass = genDefPassword(10);
  print("Your nominated password is: $pass");
  File f = File("regisration.csv"); 
  f.writeAsStringSync("$num, $un,$pass \n", mode: FileMode.writeOnlyAppend);
 } 

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*';
Random _rnd = Random();

String genDefPassword(int length)
{
  String defaultpass = String.fromCharCodes(Iterable.generate(length, (_) =>
  _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  return defaultpass;
}