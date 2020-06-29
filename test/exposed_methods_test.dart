import 'package:gtin_toolkit/gtin_toolkit.dart' as gtinTool;
import 'package:test/test.dart';

void main() {
  test('All methods are being exported correctly', () {
    String validGtin = '83636560160125';
    String invalidGtin = '83636560160122';
    List<int> validGtinArray = validGtin.split('').map(int.parse).toList();
    List<int> invalidGtinArray = invalidGtin.split('').map(int.parse).toList();

    expect(gtinTool.parseAndValidate(validGtin), true); // => true
    expect(gtinTool.parseAndValidate(invalidGtin), false); // => false

    expect(gtinTool.isValidGTIN(validGtinArray), true); // => true
    expect(gtinTool.isValidGTIN(invalidGtinArray), false); // => false

    expect(true, true);
  });
}
