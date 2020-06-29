import 'package:gtin_toolkit/gtin_toolkit.dart' as gtinTool;

void main() {
  // Generating a valid GTIN number with 12 digit length
  String validGtin = gtinTool.generateGTIN(gtinLength: 12);
  // make error replacing two right number with 1
  String invalidGtin = validGtin.padRight(10).padRight(13, '1');

  List<int> validGtinArray = validGtin.split('').map(int.parse).toList();
  List<int> invalidGtinArray = invalidGtin.split('').map(int.parse).toList();

  print('Generated GTIN:');
  print(validGtin);
  print('Generated GTIN Type:');
  print(gtinTool.classifyGTIN(validGtin));

  gtinTool.parseAndValidate(validGtin);
  gtinTool.isValidGTIN(validGtinArray);

  gtinTool.parseAndValidate(invalidGtin);
  gtinTool.isValidGTIN(invalidGtinArray);
}
