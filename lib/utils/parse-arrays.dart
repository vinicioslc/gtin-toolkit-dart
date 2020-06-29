List<int> fromStringToArray(String gtinString) {
  return gtinString.split('').map(int.parse).toList();
}

List<int> fromNumToArray(int gtinString) =>
    fromStringToArray(gtinString.toString());
