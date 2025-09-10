class ValidationMessage {
  ValidationMessage._();

  static String empty(String fieldName) {
    return '$fieldNameを入力してください';
  }

  static String tooLong(String fieldName, int length) {
    return '$fieldNameは$length文字以下で入力してください';
  }

  static String tooShort(String fieldName, int length) {
    return '$fieldNameは$length文字以上で入力してください';
  }
}
