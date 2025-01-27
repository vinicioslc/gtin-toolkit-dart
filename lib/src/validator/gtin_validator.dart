import '../math/calc_digit.dart';

/// This function are lightweight (or fast).
/// It receives an Integer List,
/// and compute all math necessary to validate GTIN.
/// Use if your gtin are always in same format.
bool isValidGTIN(List<int> inputGTIN) {
  try {
    final cuttedGTIN = inputGTIN.sublist(0, inputGTIN.length - 1);
    final checkDigit = findCheckDigit(cuttedGTIN);
    return checkDigit == inputGTIN.last;
  } catch (e) {
    print('[GTIN-ERROR] ' + e.toString());
    return false;
  }
}
