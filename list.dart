import 'dart:io';

void main() {
  List myNumbers = [];
  int n=1; 
  int sum=0;
  print("Input numbers between 1-10 [type 0 to terminate input] ");
  for (int x = 0; n!=0; x++)
  {
    stdout.write('Number ${x+1}:');
    n = int.parse(stdin.readLineSync()!);
  
    myNumbers.add(n); // insert inputted value at the end of the List sum+=n;
  }
  print(sum);
  for (int x = 0; x<myNumbers.length; x++) {
    print(myNumbers[x]);
  }
}