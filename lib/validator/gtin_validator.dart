import 'gtin_check_digit.dart';

bool isValidGTIN(List<int> inputGTIN) {
  try {
    final List<int> cuttedGTIN = inputGTIN.sublist(0, inputGTIN.length - 1);
    final int check = findDigit(cuttedGTIN);
    return check == inputGTIN.last;
  } catch (e) {
    print('[GTIN-ERROR] ' + e.toString());
    return false;
  }
}
