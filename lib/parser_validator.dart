import 'package:gtin_toolkit/exceptions.dart';
import 'package:gtin_toolkit/gtin_toolkit.dart';
import 'package:gtin_toolkit/utils/parse-arrays.dart';

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
