import 'gtin_types.dart';
import 'package:gtin_toolkit/src/exceptions.dart';

/// RegEx to check for numbers
final _numbersOnlyRegex = RegExp(r"\d{7,}");

/// Check if include only valid digits.
bool _isValidText(String inputGTIN) => _numbersOnlyRegex.hasMatch(inputGTIN);

/// Classify input GTIN and returns it
GTINType? classifyGTIN(String inputGTIN) {
  if (!_isValidText(inputGTIN)) {
    throw NonGTINFormatError();
  }

  final type = GTINTypes[inputGTIN.length];

  if (type == null) {
    throw GTINLengthException(
      message: "Input GTIN don't match any length type [${inputGTIN.length}] .",
    );
  }

  return type;
}
