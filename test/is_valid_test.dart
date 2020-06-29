import 'package:test/test.dart';
import 'package:gtin_toolkit/gtin_toolkit.dart';

void main() {
  group("Validate and Invalidate GTIN's correctly:", () {
    test("Valid GTIN's", () {
      expect(
        isValidGTIN([0, 5, 0, 0, 1, 2, 8, 4, 8, 5, 3, 4, 5, 6, 7, 8, 9, 3]),
        true,
      );
      expect(
        isValidGTIN([0, 5, 0, 0, 1, 2, 8, 4, 8, 5, 3, 4, 5, 3, 7, 8, 9, 6]),
        true,
      );
      expect(
        isValidGTIN([0, 5, 0, 0, 1, 2, 8, 4, 3, 4, 5, 3, 7, 8, 9, 8, 4, 5]),
        true,
      );
    });
    test("Invalid GTIN's", () {
      expect(
        isValidGTIN([0, 5, 0, 0, 1, 2, 8, 4, 8, 5, 3, 4, 5, 6, 7, 8, 9, 5]),
        false,
      );
      expect(
        isValidGTIN([0, 5, 0, 0, 1, 2, 8, 4, 8, 5, 3, 4, 5, 3, 7, 8, 9, 5]),
        false,
      );
      expect(
        isValidGTIN([0, 5, 0, 0, 1, 2, 8, 4, 3, 4, 5, 3, 7, 8, 9, 8, 4, 3]),
        false,
      );
    });
  });
}
