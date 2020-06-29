import 'package:test/test.dart';
import 'package:gtin_toolkit/exceptions.dart';
import 'package:gtin_toolkit/gtin_toolkit.dart';

void main() {
  group("Classifier tests", () {
    test('GTIN Input type must be invalid', () {
      try {
        classifyGTIN(new Future(() => {}));
      } catch (e) {
        expect(e is GTINTypeError, true);
      }
    });
    test('GTIN Length must be invalid', () {
      try {
        classifyGTIN("GTIN Length");
      } catch (e) {
        expect(e is GTINLengthException, true);
      }
    });

    test('Will be invalid without digits', () {
      try {
        classifyGTIN("GTIN Error Length");
      } catch (e) {
        expect(e is GTINNotNumberException, true);
      }
    });

    test('Test correct classify for all suported GTIN Types', () {
      expect(classifyGTIN("723456726468498793")["name"], 'SSCC');
      expect(classifyGTIN("59845672646849874")["name"], 'GSIN');
      expect(classifyGTIN("05001234567890")["name"], 'GTIN-14');
      expect(classifyGTIN("7896094910553")["name"], 'GTIN-13');
      expect(classifyGTIN("012345678905")["name"], 'GTIN-12');
      expect(classifyGTIN("72345672")["name"], 'GTIN-8');
    });
  });
}