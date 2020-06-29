import 'package:gtin_toolkit/validator.dart';
import 'package:test/test.dart';

void main() {
  group("Parse and validate", () {
    test('SSCC', () {
      expect(parseAndValidate('050012848534567893'), true);
    });
    test('GSIN', () {
      expect(parseAndValidate('59845672646849874'), true);
    });
    test('GTIN-14', () {
      expect(parseAndValidate('05001234567890'), true);
    });
    test('GTIN-13', () {
      expect(parseAndValidate([7, 8, 9, 6, 0, 9, 4, 9, 1, 0, 5, 5, 3]), true);
    });
    test('GTIN-12', () {
      expect(parseAndValidate([5, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]), true);
    });
    test('GTIN-8', () {
      expect(
          parseAndValidate([0, 5, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), true);
    });
  });
}
