import 'dart:math';

import 'package:gtin_toolkit/src/math/calc_digit.dart';

/// Generate any type of gtin and adds check digit `gtinLength` is the desired size with check digit
String generateGTIN({gtinLength = 14}) {
  final Random random = Random();
  // if length == 8 will generate 7 digit
  final int min = pow(10, gtinLength - 2);
  final int max = 100000;

  final list = (min + random.nextInt(max)).toString().split('');

  final List<int> generated = list.map(int.parse).toList();
  final generatedWithDigit =
      generated.join('') + findCheckDigit(generated).toString();

  return generatedWithDigit;
}
