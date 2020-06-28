import 'package:test/test.dart';
import 'package:gtin_toolkit/exceptions.dart';

import 'package:gtin_toolkit/gtin_toolkit.dart';

void main() {
  group("Classifier tests", () {
    test('GTIN Input type must be invalid', () {
      try {
        validateAndGetGTINType(new Future(() => {}));
      } catch (e) {
        expect(e is GTINInputTypeError, true);
      }
    });
    test('GTIN Length must be invalid', () {
      try {
        validateAndGetGTINType("GTIN Length");
      } catch (e) {
        expect(e is GTINLengthException, true);
      }
    });

    test('Will be invalid without digits', () {
      try {
        validateAndGetGTINType("GTIN Error Length");
      } catch (e) {
        expect(e is GTINNotNumberException, true);
      }
    });

    test('Test return from whole correct gtin type', () {
      expect(validateAndGetGTINType("723456726468498793")["name"], 'SSCC');
      expect(validateAndGetGTINType("59845672646849874")["name"], 'GSIN');
      expect(validateAndGetGTINType("05001234567890")["name"], 'GTIN-14');
      expect(validateAndGetGTINType("7896094910553")["name"], 'GTIN-13');
      expect(validateAndGetGTINType("012345678905")["name"], 'GTIN-12');
      expect(validateAndGetGTINType("72345672")["name"], 'GTIN-8');
    });
  });
}
