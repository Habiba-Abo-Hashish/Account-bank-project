abstract class Vehicle {
  String type;
  Vehicle(this.type);
  void fuelEfficiency();
}

mixin Drivable {
  void drive() {
    print('Vehicle has been driven');
  }
}

enum VehicleType { car, bike }

class Car extends Vehicle with Drivable {
  Car(String type) : super(type);

  @override
  void fuelEfficiency() {
    print('The fuel is gone');
  }
}

void main() {
  Car myCar = Car('car');
  myCar.drive();
  myCar.fuelEfficiency();
  print("Vehicle type: ${myCar.type}");
}
