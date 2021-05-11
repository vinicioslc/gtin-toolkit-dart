import 'dart:math';

import 'package:gtin_toolkit/src/math/calc_digit.dart';

/// Generate any type of gtin and adds check digit `gtinLength` is the desired size with check digit
String generateGTIN({int gtinLength = 14}) {
  final random = Random();
  // if length == 8 will generate 7 digit
  final min = pow(10, gtinLength - 2) as int;
  final max = 100000;

  final list = (min + random.nextInt(max)).toString().split('');

  final List<int> generated = list.map(int.parse).toList();
  return generated.join('') + findCheckDigit(generated).toString();
}
