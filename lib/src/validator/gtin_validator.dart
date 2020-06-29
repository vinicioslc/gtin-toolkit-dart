import '../math/calc_digit.dart';

/**
 * This function are de lightweight (or fast) from this library it receives an Integer List,
 * and  compute all math necessary to validate GTIN
 * Use if your gtin are always in same format.
 */
bool isValidGTIN(List<int> inputGTIN) {
  try {
    final List<int> cuttedGTIN = inputGTIN.sublist(0, inputGTIN.length - 1);
    final int check = findCheckDigit(cuttedGTIN);
    return check == inputGTIN.last;
  } catch (e) {
    print('[GTIN-ERROR] ' + e.toString());
    return false;
  }
}
