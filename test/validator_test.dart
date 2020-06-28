import 'package:test/test.dart';

import 'package:gtin_toolkit/gtin_toolkit.dart';

void main() {
  group("Classifier tests", () {
    expect(checkDigit([0, 5, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), 3);
  });
}
