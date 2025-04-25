import 'dart:math';
import 'dart:io';

abstract class User {
  String userNum;
  String name;
  String? email;
  String password = ''; 

  User(this.userNum, this.name, {this.email});

  void displayDetails();

  void changePassword();

  String generateTempPassword() {
    final _random = Random();
    final _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    final _password = String.fromCharCodes(Iterable.generate(
      10, (_) => _chars.codeUnitAt(_random.nextInt(_chars.length))));
    return _password;
  }
}

class Employee extends User {
  Employee(String userNum, String name, {String? email}) : super(userNum, name, email: email);

  @override
  void displayDetails() {
    print('Employee Details:');
    print('Employee Number: $userNum');
    print('Name: $name');
    print('Email: $email');
  }

  @override
  void changePassword() {
    print('Changing Employee Password:');
    print('Enter Current Password:');
    final currentPassword = stdin.readLineSync();
    if (currentPassword == password) {
      print('Enter New Password:');
      final newPassword = stdin.readLineSync();
      password = newPassword!; 
      print('Password Changed Successfully!');
    } else {
      print('Incorrect Current Password!');
    }
  }
}

class Student extends User {
  Student(String userNum, String name, {String? email}) : super(userNum, name, email: email);

  @override
  void displayDetails() {
    print('Student Details:');
    print('Student Number: $userNum');
    print('Name: $name');
    print('Email: $email');
  }

  @override
  void changePassword() {
    print('Changing Student Password:');
    print('Enter Current Password:');
    final currentPassword = stdin.readLineSync();
    if (currentPassword == password) {
      print('Enter New Password:');
      final newPassword = stdin.readLineSync();
      password = newPassword!; 
      print('Password Changed Successfully!');
    } else {
      print('Incorrect Current Password!');
    }
  }
}

void main() {
  print('Choose User Category: 1 - Employee, 2 - Student, 3 - Exit');
  final String? choice = stdin.readLineSync();
  if (choice != null) { 
    switch (int.parse(choice)) {
      case 1:
        print('Your Employee Number:');
        final String userNum = stdin.readLineSync()!; 
        print('Your Employee Name:');
        final String name = stdin.readLineSync()!;
        print('Your Employee Email:');
        final String? email = stdin.readLineSync();
        final Employee employee = Employee(userNum, name, email: email);
        employee.displayDetails();
        employee.password = employee.generateTempPassword();
        print('Temporary Password: ${employee.password}');
        employee.changePassword();
        break;
      case 2:
        print('Your Student Number:');
        final String userNum = stdin.readLineSync()!; 
        print('Your Student Name:');
        final String name = stdin.readLineSync()!; 
        print('Your Student Email:');
        final String? email = stdin.readLineSync();
        final Student student = Student(userNum, name, email: email);
        student.displayDetails();
        student.password = student.generateTempPassword();
        print('Temporary Password: ${student.password}');
        student.changePassword();
        break;
      case 3:
        print('Exiting Program...');
        break;
      default:
        print('Invalid Choice!');
    }
  }
}