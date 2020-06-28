List<int> fromStringToIntArray(String gtinString) =>
    gtinString.split('').map(int.parse);

List<int> fromNumToIntArray(num gtinString) =>
    fromStringToIntArray(gtinString.toString());
