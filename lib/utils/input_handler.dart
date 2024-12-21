import 'dart:io';

int? getIntegerInput() {
  var input = stdin.readLineSync();
  return int.tryParse(input ?? '');
}

num? getNumberInput() {
  var input = stdin.readLineSync();
  return num.tryParse(input ?? '');
}
