import 'package:gtin_toolkit/gtin_toolkit.dart' as gtinTool;
import 'package:test/test.dart';

void main() {
  test('All methods are being exported correctly', () {
    // Generating a valid GTIN number with 12 digit length
    String validGtin = gtinTool.generateGTIN(gtinLength: 12);
    // make error replacing two right number with 1
    String invalidGtin = validGtin.padRight(10).padRight(13, '1');

    List<int> validGtinArray = validGtin.split('').map(int.parse).toList();
    List<int> invalidGtinArray = invalidGtin.split('').map(int.parse).toList();

    expect(gtinTool.parseAndValidate(validGtin), true); // => true
    expect(gtinTool.parseAndValidate(invalidGtin), false); // => false

    expect(gtinTool.isValidGTIN(validGtinArray), true); // => true
    expect(gtinTool.isValidGTIN(invalidGtinArray), false); // => false

    expect(gtinTool.generateGTIN().length, 14); // => true default length
    expect(gtinTool.classifyGTIN(validGtin)['name'], 'GTIN-12');

    expect(true, true);
  });
}
