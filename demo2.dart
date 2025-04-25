//main(){
//var myList = [1,5,15];
//for (int i = 0; i <myList.length; i++){
//print(myList[i]);
//}


//var num = [1,5,10,45,18];
//for(int i=0;i<num.length;i++)
//print('Element[$i] = ${num[i]}');
//}

  import 'dart:io';

  main(){
    stdout.write("Enter the user's Name: ");
    String name = stdin.readLineSync()!;
    print("Hello, $name.. Begin your mobile app dev journey");
    stdout.write("Key in your PIN codes:");
    int pin = int.parse(stdin.readLineSync()!);
    int pinch;
    int ctr=0;//add counter control

    do {
    ctr++;//increament
    pinch = int.parse(stdin.readLineSync()!);
    if(pin == pinch)
    print("Access Granted!!");
    else
    print("Invalid PIN code");
    }while(ctr<3);
    }
  