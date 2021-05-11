class GTINType {
  const GTINType(this.name, this.tags, this.length);

  final String name;
  final List<String> tags;
  final int length;
}

const GTINTypes = {
  18: GTINType('SSCC', ["SSCC", "GSRN"], 18),
  17: GTINType('GSIN', [], 17),
  14: GTINType(
      'GTIN-14',
      [
        'GTIN-14',
        'EAN',
        'ITF-14',
        'UCC-14',
        'ITF Symbol',
        'SCC-14',
        'DUN-14',
        'UPC Case Code',
        'UPC Shipping Container Code',
        'UCC Code 128',
        'EAN Code 128',
      ],
      14),
  13: GTINType('GTIN-13', ['GTIN-13', 'EAN', 'JAN', 'EAN-13', 'ISBN'], 13),
  12: GTINType('GTIN-12', ['GTIN-12', 'UPC', 'UCC-12'], 12),
  8: GTINType('GTIN-8', ['GTIN-8', 'EAN-8', 'JAN', 'UPC'], 8)
};
