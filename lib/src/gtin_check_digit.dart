/**
 * Every inputed GTIN must be in digit -1(remove check digit) format like `1234567` (GTIN-8 Example)
 * @param {String} GTIN18 GTIN Code in 18 Format
 */
num checkDigit(List<num> GTIN18) {
  return ((10 - multiplyEntries(GTIN18).reduce(sumCallback) % 10) % 10);
}

num sumCallback(num prev, num cur) {
  return prev + cur;
}

List<num> multiplyEntries(List<num> numb) {
  for (var i = 0; i < numb.length; i++) {
    numb[i] = numb[i] * (i % 2 == 0 ? 3 : 1);
  }
  return numb;
}