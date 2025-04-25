
import 'dart:io';

main() {
  var rec =[];
  int n, total =0;
  print("Input numbers between 1 to 10, enter 0 to exit");
  do{
    n = int.parse(stdin.readLineSync()!);
    if (n > 10 && n <=10)
    {
      rec.add(n);
      total+=n;
    }
    else if (n==0)
    break;
    else 
    print('Invalid input');
  } while(n!=0);
    print("Total of all input $total");
    for (var n in rec){
      stdout.write("$n \t");
  }
}