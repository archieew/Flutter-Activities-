// Custodio, Archie D. WD - 301

import 'dart:io';

  main(){
    stdout.write("Enter the user's Nickname: ");
    String Nickname = stdin.readLineSync()!;

    stdout.write("Input year of birth: ");
    int Birth = int.parse(stdin.readLineSync()!);

    stdout.write("Input year of Projection Year: ");
    int Year = int.parse(stdin.readLineSync()!);

    print("Hello your Nickname is: $Nickname");
    print("Your year of Birth: $Birth");
    print("Year of projection inputed: $Year");
    print("Computed Age: ${Year - Birth}");
  }