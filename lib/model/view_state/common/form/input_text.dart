import 'package:formz/formz.dart';

import 'validation_message.dart';

class InputText extends FormzInput<String, String> {
  const InputText.dirty({
    this.fieldName = '',
    this.isEmpty = false,
    this.maxLength = 0,
    this.minLength = 0,
    String value = '',
  }) : super.dirty(value);

  const InputText.pure({
    this.fieldName = '',
    this.isEmpty = false,
    this.maxLength = 0,
    this.minLength = 0,
    String value = '',
  }) : super.pure(value);

  final String fieldName;
  final bool isEmpty;
  final int maxLength;
  final int minLength;

  @override
  String? validator(String value) {
    final String trimmed = value.trim();
    if (trimmed.isEmpty && isEmpty) {
      return ValidationMessage.empty(fieldName);
    } else if (maxLength > 0 && trimmed.length > maxLength) {
      return ValidationMessage.tooLong(fieldName, maxLength);
    } else if (minLength > 0 && trimmed.length < minLength) {
      return ValidationMessage.tooShort(fieldName, minLength);
    }
    return null;
  }
}
