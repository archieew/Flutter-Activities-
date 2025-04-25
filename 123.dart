import 'dart:io';

void main() {
  List<String> numbers = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Zero'];
  print('Enter a number between 0 - 9:');
  int number = int.parse(stdin.readLineSync()!);
  String numberinput = numberinputted (numbers,number);
  print('$number in word is $numberinput');
}

String numberinputted( List<String> numbers,int number) {
  if(number<0 || number> numbers.length-1) {
    return 'Returning from user input, Please input a correct value;';
  }
  return numbers[number-1];
}
