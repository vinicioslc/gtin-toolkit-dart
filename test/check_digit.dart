import 'package:test/test.dart';

import 'package:gtin_toolkit/gtin_toolkit.dart';

void main() {
  test("Calculate check digit correct", () {
    expect(checkDigit([0, 5, 0, 0, 1, 2, 8, 4, 8, 5, 3, 4, 5, 6, 7, 8, 9]), 3);
    expect(checkDigit([0, 5, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]), 0);
    expect(checkDigit([5, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8]), 9);
    expect(checkDigit([2, 3, 4, 5, 6, 7, 8]), 5);
  });
}
