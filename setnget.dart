//Custodio, Archie
//WD - 301

import 'dart:io';

void main() {
  Person rP1 = Person();

  stdout.write("What is your first name? ");
  rP1.myFName = stdin.readLineSync()!;

  stdout.write("What is your last name? ");
  rP1.myLName = stdin.readLineSync()!;

  stdout.write("How old are you? ");
  rP1.myAge = int.parse(stdin.readLineSync()!);

  stdout.write("What is your address? ");
  rP1.myAddress = stdin.readLineSync()!;

  print("${rP1.myFName} ${rP1.myLName}, is ${rP1.myAge} years old and currently lives at ${rP1.myAddress}.");
}


class Person {
  String firstName = "";
  String lastName = "";
  int age = 0;
  String address = "";

//SETTERS AND GETTERS

  void set myFName(String firstName) {
    this.firstName = firstName;
  }
    String get myFName {
    return firstName;
  }

  void set myLName(String lastName) {
    this.lastName = lastName;
  }
   String get myLName {
    return lastName;
  }

  void set myAge(int age) {
    this.age = age;
  }
   int get myAge {
    return age;
  }

  void set myAddress(String address) {
    this.address = address;
  }
    String get myAddress {
    return address;
  } 
}