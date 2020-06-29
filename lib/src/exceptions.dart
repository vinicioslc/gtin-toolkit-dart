class GTINException implements Exception {
  String message;
  GTINException({this.message = "Error in GTIN."});
}

class GTINTypeError extends TypeError {
  String message;

  GTINTypeError(
      {this.message = "Invalid GTIN Type (Only allowed String and int)."});
}

class GTINLengthException extends GTINException {
  String message;
  GTINLengthException({this.message = "GTIN length don't match any type."});
}

class GTINNotNumberException extends GTINException {
  String message;
  GTINNotNumberException({this.message = "GTIN are not a int."});
}
