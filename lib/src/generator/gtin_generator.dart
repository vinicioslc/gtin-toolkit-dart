import 'dart:math';

import 'package:gtin_toolkit/src/math/calc_digit.dart';

/// Generate any type of gtin and adds check digit `gtinLength` is the desired size with check digit
String generateGTIN({gtinLength: 14}) {
  final Random random = new Random();
  // if length == 8 will generate 7 digit
  final int min = pow(10, gtinLength - 2);
  final int max = pow(10, gtinLength - 1);

  final list = (min + random.nextInt(100000)).toString().split('');

  final List<int> generated = list.map(int.parse).toList();
  final generatedWithDigit =
      generated.join('') + findCheckDigit(generated).toString();

  return generatedWithDigit;
}
