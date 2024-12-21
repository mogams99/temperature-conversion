import 'dart:io';
import '../controller/temperature_controller.dart';
import '../models/temperature_model.dart';
import '../utils/input_handler.dart';

class TemperatureView {
  void displayMenu() {
    print('--- Temperature Conversion ---');
    print('1. Fahrenheit to Celsius');
    print('2. Celsius to Fahrenheit');
    print('3. Celsius to Kelvin');
    print('4. Kelvin to Celsius');
    print('5. Exit');
    stdout.write('Choose an option (1-5): ');
  }

  void handlerUserInput() {
    while (true) {
      displayMenu();

      int? choice = getIntegerInput();

      if (choice == 5) {
        print('Exiting...');
        break;
      }

      stdout.write('Enter the temperature: ');
      num? temperature = getNumberInput();
      if (temperature == null) {
        print('Invalid input. Please enter a number.');
        continue;
      }

      var model = TemperatureModel(temperature);
      var controller = TemperatureController(model);

      switch (choice) {
        case 1:
          print(
              'Temperature in Celsius: ${controller.convertFahrenheitToCelcius()}');
          break;
        case 2:
          print(
              'Temperature in Fahrenheit: ${controller.convertCelciusToFahrenheit()}');
          break;
        case 3:
          print(
              'Temperature in Kelvin: ${controller.convertCelciusToKelvin()}');
          break;
        case 4:
          print(
              'Temperature in Celsius: ${controller.convertKelvinToCelcius()}');
          break;
        default:
          print('Invalid choice. Please choose a number between 1 and 5.');
      }
      print('');
    }
  }
}
