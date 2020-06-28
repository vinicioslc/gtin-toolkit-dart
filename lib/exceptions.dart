class GTINInputTypeError extends TypeError {
  String message;
  GTINInputTypeError(
      {this.message = "Invalid GTIN Type (Only allowed String and num )."});
}

class GTINException implements Exception {
  String message;
  GTINException({this.message = "Error in GTIN."});
}

class GTINLengthException extends GTINException {
  String message;
  GTINLengthException({this.message = "GTIN length don't match any type."});
}

class GTINNotNumberException extends GTINException {
  String message;
  GTINNotNumberException({this.message = "GTIN are not a number."});
}
