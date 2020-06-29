import 'package:test/test.dart';

import 'package:gtin_toolkit/src/math/calc_digit.dart';

void main() {
  group("Calculate check digit correctly", () {
    test('SSCC', () {
      expect(
          findCheckDigit([0, 5, 0, 0, 1, 2, 8, 4, 8, 5, 3, 4, 5, 6, 7, 8, 9]),
          3);
    });
    test('GSIN', () {
      expect(
          findCheckDigit([5, 9, 8, 4, 5, 6, 7, 2, 6, 4, 6, 8, 4, 9, 8, 7]), 4);
    });
    test('GTIN-14', () {
      expect(findCheckDigit([0, 5, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]), 0);
    });
    test('GTIN-13', () {
      expect(findCheckDigit([7, 8, 9, 6, 0, 9, 4, 9, 1, 0, 5, 5]), 3);
    });
    test('GTIN-12', () {
      expect(findCheckDigit([5, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8]), 9);
    });
    test('GTIN-8', () {
      expect(findCheckDigit([2, 3, 4, 5, 6, 7, 8]), 5);
    });
  });
}
