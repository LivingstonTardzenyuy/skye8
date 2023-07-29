class Car {
  String make;
  String model;
  int year;
  double mileage;

  Car(this.make, this.model, this.year, this.mileage);

  void drive() {
    print("Car is being driven");
  }

  void getMileage() {
    print("Current mileage: $mileage");
  }

  void displayInfo() {
    print("$make $model ($year) - $mileage miles");
  }
}

class ElectricCar extends Car {
  double batteryCapacity;
  double chargeLevel;

  ElectricCar(String make, String model, int year, double mileage,
      this.batteryCapacity, this.chargeLevel)
      : super(make, model, year, mileage);

  void charge() {
    chargeLevel = 100.0;
    print("Car has been fully charged");
  }

  void displayBatteryStatus() {
    print("Battery level: $chargeLevel%");
  }
}

void testDrive(Car car) {
  car.drive();
}

void main() {
  Car car1 = Car("Ford", "Mustang", 2021, 10000);
  car1.displayInfo();
  car1.drive();
  car1.getMileage();

  ElectricCar electricCar1 =
      ElectricCar("Tesla", "Model S", 2022, 5000, 100, 80);
  electricCar1.displayInfo();
  electricCar1.charge();
  electricCar1.displayBatteryStatus();

  testDrive(car1);
  testDrive(electricCar1);
}
