class TemperatureModel {
  num value;

  TemperatureModel(this.value);

  num toCelcius() => (value - 32) * 5 / 9;

  num toFahrenheit() => (value * 9 / 5) + 32;

  num toKelvinFromCelcius() => toCelcius() + 273.15;

  num toCelciusFromKelvin() => value == 0 ? 273.15 : value - 273.15;
}
