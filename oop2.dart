
int addNumbers(int a, int b) {
  return a + b;
}

void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
}

void greetPerson(String name, {String greeting = "Hello"}) {
  print("$greeting, $name!");
}

double findAverage(List<double> numbers) {
  double sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}


class Car {
  late String make;
  late String model;
  late int year;
  late double mileage;

  void displayInfo() {
    print("Car: $make $model, Year: $year, Mileage: $mileage");
  }
}

class ElectricCar extends Car {
  double batteryCapacity;
  double chargeLevel;

  ElectricCar(String make, String model, int year, double mileage, this.batteryCapacity, this.chargeLevel);

  void charge() {
    print("Charging the electric car");
  }

  void displayBatteryStatus() {
    print("Battery Capacity: $batteryCapacity kWh, Charge Level: $chargeLevel%");
  }
}

void main() {
  print(addNumbers(3, 5));

  checkEvenOdd(7); 
  checkEvenOdd(10); 

  greetPerson("John"); 
  greetPerson("Alice", greeting: "Hi");

  print(findAverage([1, 2, 3, 4, 5])); 
  print(findAverage([10, 20, 30])); 

  Car myCar = Car("Toyota", "Camry", 2022, 5000.0);
  myCar.displayInfo(); 
  myCar.drive(); 
  myCar.getMileage(); 

  ElectricCar myElectricCar = ElectricCar("Tesla", "Model S", 2023, 1000.0, 85.0, 60.0);
  myElectricCar.displayInfo(); 
  myElectricCar.drive(); 
  myElectricCar.getMileage(); 
  myElectricCar.charge();
  myElectricCar.displayBatteryStatus(); 

  testDrive(myCar); 
  testDrive(myElectricCar); 
}