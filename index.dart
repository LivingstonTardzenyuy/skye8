// Step 2: Basic Function Creation
int addNumbers(int a, int b) {
  return a + b;
}

// Step 3: Function with Conditional Statements
void checkEvenOdd(int num) {
  if (num % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
}

// Step 4: Function with Default Parameters
void greetPerson(String name, [String greeting = "Hello"]) {
  print("$greeting, $name!");
}

// Step 5: Function with Variable Number of Arguments
double findAverage(List<double> numbers) {
  double sum = 0;
  numbers.forEach((number) => sum += number);
  return sum / numbers.length;
}

void main() {
  // Testing the functions
  int sum = addNumbers(5, 10);
  print(sum); // Output: 15
  
  checkEvenOdd(7); // Output: Odd
  
  greetPerson("John"); // Output: Hello, John!
  greetPerson("John", "Hi"); // Output: Hi, John!
  
  double average = findAverage([4, 8, 12]);
  print(average); // Output: 8.0
}