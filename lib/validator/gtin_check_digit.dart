/**
 * Every inputed GTIN must be in digit -1(remove check digit) format like `1234567` (GTIN-8 Example)
 * @param {String} GTIN18 GTIN Code in 18 Format
 */
int findDigit(List<int> gtin) {
  return ((10 - _multiplyEntries(gtin).reduce(_reduceSum) % 10) % 10);
}

/**
 * Multiply int list starting from right to left 
 * (Starting with even number makes possible validate both GTIN 13, GSIN, GTIN-12 with same algorithm)
 * Following Specs from GS1
 * https://www.gs1.org/services/how-calculate-check-digit-manually 
 * */
List<int> _multiplyEntries(List<int> list) {
  for (int pos = 0; pos < list.length; pos++) {
    final cursor = (list.length - 1) - pos;
    list[cursor] = (list[cursor] * ((pos % 2 == 0) ? 3 : 1));
  }
  return list;
}

/**
 * Sum all results 
 */
int _reduceSum(int prev, int cur) {
  return prev + cur;
}
