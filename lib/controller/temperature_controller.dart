import '../models/temperature_model.dart';

class TemperatureController {
  final TemperatureModel model;

  TemperatureController(this.model);

  num convertFahrenheitToCelcius() => model.toCelcius();

  num convertCelciusToFahrenheit() => model.toFahrenheit();

  num convertCelciusToKelvin() => model.toKelvinFromCelcius();

  num convertKelvinToCelcius() => model.toCelciusFromKelvin();
}
