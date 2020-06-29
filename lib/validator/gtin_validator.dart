import 'gtin_check_digit.dart';

bool isValidGTIN(
  List<num> inputGTIN, {
  is_array: false,
}) {
  try {
    final cuttedGTIN = inputGTIN.sublist(0, inputGTIN.length - 1);
    final check = checkDigit(cuttedGTIN);
    return check == inputGTIN.last;
  } catch (e) {
    print('[GTIN-ERROR]' + e.toString());
    return false;
  }
}
