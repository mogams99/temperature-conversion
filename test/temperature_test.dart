import 'package:temperature_conversion/models/temperature_model.dart';
import 'package:temperature_conversion/controller/temperature_controller.dart';
import 'package:test/test.dart';

void main() {
  group('TemperatureModel Tests', () {
    test('Fahrenheit to Celsius', () {
      var model = TemperatureModel(32);
      expect(model.toCelcius(), 0);
    });

    test('Celsius to Kelvin', () {
      var model = TemperatureModel(0);
      expect(model.toCelciusFromKelvin(), 273.15);
    });
  });

  group('TemperatureController Tests', () {
    test('Fahrenheit to Celsius', () {
      var model = TemperatureModel(32);
      var controller = TemperatureController(model);
      expect(controller.convertFahrenheitToCelcius(), 0);
    });
  });
}
