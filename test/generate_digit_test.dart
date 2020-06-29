import "package:gtin_toolkit/gtin_toolkit.dart";
import "package:test/test.dart";

import "package:gtin_toolkit/src/math/calc_digit.dart";

void main() {
  group("Calculate check digit correctly", () {
    test("Correct size", () {
      expect(generateGTIN(gtinLength: 18).length, 18);
      expect(generateGTIN(gtinLength: 17).length, 17);
      expect(generateGTIN(gtinLength: 14).length, 14);
      expect(generateGTIN(gtinLength: 13).length, 13);
      expect(generateGTIN(gtinLength: 12).length, 12);
      expect(generateGTIN(gtinLength: 8).length, 8);
    });
    test("Is generating valid GTIN's", () {
      expect(parseAndValidate(generateGTIN(gtinLength: 18)), true);
      expect(parseAndValidate(generateGTIN(gtinLength: 17)), true);
      expect(parseAndValidate(generateGTIN(gtinLength: 14)), true);
      expect(parseAndValidate(generateGTIN(gtinLength: 13)), true);
      expect(parseAndValidate(generateGTIN(gtinLength: 12)), true);
      expect(parseAndValidate(generateGTIN(gtinLength: 8)), true);
    });
  });
}
