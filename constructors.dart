//Custodio, Archie
//WD - 301

import 'dart:io';

void main() {
  Dog b1 = Dog.mastiff("Neapolitan Mastiff", "Large", "Black");
  Dog b2 = Dog.maltese("Maltese", "Small", "White");
  Dog b3 = Dog.chowchow("Chow Chow", "Medium", "Brown");

  stdout.write("Dog type [mastiff | maltese | chowchow]: ");
  String? type = stdin.readLineSync()!.toLowerCase();

  if (type == "mastiff")
    print("Breed: ${b1.dog}\nSize: ${b1.size}\nAge: ${b1.age}\nColor: ${b1.color}");
  else if (type == "maltese")
    print("Breed: ${b2.dog}\nSize: ${b2.size}\nAge: ${b2.age}\nColor: ${b2.color}");
  else if (type == "chowchow")
    print("Breed: ${b3.dog}\nSize: ${b3.size}\nAge: ${b3.age}\nColor: ${b3.color}");
}

class Dog {
  String dog = "";
  String size = "";
  int age = 0;
  String color = "";

  Dog.mastiff(String dog, String size, String color) {
    this.dog = dog;
    this.size = size;
    this.age = 5;
    this.color = color;
  }

  Dog.maltese(String dog, String size, String color) {
    this.dog = dog;
    this.size = size;
    this.age = 2;
    this.color = color;
  }

  Dog.chowchow(String dog, String size, String color) {
    this.dog = dog;
    this.size = size;
    this.age = 3;
    this.color = color;
  }
}
