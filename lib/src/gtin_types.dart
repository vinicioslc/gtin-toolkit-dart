const GTINTypes = {
  "SSCC": {"name": 'SSCC', "know_as": [], "digits": 18},
  "GSIN": {"name": 'GSIN', "know_as": [], "digits": 17},
  "GTIN14": {
    "name": 'GTIN-14',
    "know_as": [
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
    "digits": 14,
  },
  "GTIN13": {
    "name": 'GTIN-13',
    "know_as": ['EAN', 'JAN', 'EAN-13', 'ISBN'],
    "digits": 13,
  },
  "GTIN12": {
    "name": 'GTIN-12',
    "know_as": ['UPC', 'UCC-12'],
    "digits": 12
  },
  "GTIN8": {
    "name": 'GTIN-8',
    "know_as": ['EAN-8', 'JAN', 'UPC'],
    "digits": 8
  },
};
