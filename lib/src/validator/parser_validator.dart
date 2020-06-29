import 'package:gtin_toolkit/src/exceptions.dart';
import 'package:gtin_toolkit/src/utils/parse-arrays.dart';
import 'package:gtin_toolkit/src/validator/gtin_validator.dart';

/// This function parses `String` to `List<Int>` before call `isValidGTIN()` and then return if GTIN is valid.
/// rembenber `try {} catch (e) {} ` this function could also throw Exceptions.
bool parseAndValidate(dynamic gtin) {
  List<int> mapped = [];

  if (gtin is List<int>) {
    mapped = gtin;
  } else if (gtin is String) {
    mapped = fromStringToArray(gtin);
  } else if (gtin is int) {
    mapped = fromNumToArray(gtin);
  } else {
    throw GTINTypeError(
        message: "Invalid GTIN Type" + gtin.runtimeType.toString());
  }

  if (mapped.length < 7) {
    throw GTINLengthException(
        message: "Unsuported GTIN Length [${mapped.length}]");
  }

  return isValidGTIN(mapped);
}
