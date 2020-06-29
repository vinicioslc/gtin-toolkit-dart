import 'gtin_types.dart';
import 'package:gtin_toolkit/src/exceptions.dart';

/**
 * Check if include only valid digits.
 */
bool _isValidText(inputGTIN) => inputGTIN.toString().contains(r"[d]{7,}/gmi");

/** 
 * Classify input GTIN and returns it
 */
Map<String, dynamic> classifyGTIN(dynamic inputGTIN) {
  if (!(inputGTIN is String) && !(inputGTIN is int)) {
    throw GTINTypeError();
  }

  if (_isValidText(inputGTIN.toString())) {
    throw NonGTINFormatError();
  }
  Map currentType;

  GTINTypes.forEach((key, value) {
    if (inputGTIN.length == value["digits"]) {
      currentType = value;
    }
  });
  if (currentType == null) {
    throw GTINLengthException(
      message: "Input GTIN don't match any length type [${inputGTIN.length}] .",
    );
  }
  return currentType;
}
