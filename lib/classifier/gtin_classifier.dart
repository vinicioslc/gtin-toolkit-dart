import 'gtin_types.dart';
import 'package:gtin_toolkit/exceptions.dart';

bool _isValidText(inputGTIN) => inputGTIN.toString().contains(r"[d]{7,}/gmi");

Map<String, dynamic> classifyGTIN(dynamic inputGTIN) {
  if (!(inputGTIN is String) && !(inputGTIN is int)) {
    throw GTINTypeError();
  }

  if (_isValidText(inputGTIN.toString())) {
    throw GTINNotNumberException();
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
