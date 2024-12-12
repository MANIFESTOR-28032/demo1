import 'dart:io';

class Home {
  int number;
  String address;
  int floors;
  int numOfRooms;
  double area;

  Home(this.number, this.address, this.floors, this.numOfRooms, this.area);

  void displayInfo() {
    print('Uy raqami: $number');
    print('Manzil: $address');
    print('Qavatlar soni: $floors');
    print('Xonalar soni: $numOfRooms');
    print('Maydoni: $area m²');

    if (numOfRooms >= 10) {
      print('Juda katta xonadon');
    } else if (numOfRooms >= 4) {
      print('Katta uy');
    } else {
      print('O\'rtacha kattalikdagi uy');
    }
  }
}

void main() {
  print('Uy raqamini kiriting:');
  int number = int.parse(stdin.readLineSync()!);

  print('Manzilni kiriting:');
  String address = stdin.readLineSync()!;

  print('Qavatlar sonini kiriting:');
  int floors = int.parse(stdin.readLineSync()!);

  print('Xonalar sonini kiriting:');
  int numOfRooms = int.parse(stdin.readLineSync()!);

  print('Maydonini (m²) kiriting:');
  double area = double.parse(stdin.readLineSync()!);

  Home myHome = Home(number, address, floors, numOfRooms, area);

  myHome.displayInfo();
}
