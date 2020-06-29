/**
 * Every inputed GTIN must be in digit -1(remove check digit) format like `1234567` (GTIN-8 Example)
 * @param {String} GTIN18 GTIN Code in 18 Format
 */
num checkDigit(List<num> GTIN18) {
  return ((10 - _multiplyEntries(GTIN18).reduce(_reduceSum) % 10) % 10);
}

/**
 * Multiply num list starting from right to left 
 * (Starting with even number(3) makes possible validate both GTIN 13, GSIN, GTIN-12 with same algorithm)
 * Following Specs from GS1
 * https://www.gs1.org/services/how-calculate-check-digit-manually 
 * */
List<num> _multiplyEntries(List<num> list) {
  for (var pos = 0; pos < list.length; pos++) {
    list[list.length - pos - 1] =
        list[list.length - pos - 1] * ((pos % 2 == 0) ? 3 : 1);
  }
  return list;
}

/**
 * Sum all results 
 */
num _reduceSum(num prev, num cur) {
  return prev + cur;
}
