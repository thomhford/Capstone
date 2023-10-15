import 'package:formz/formz.dart';

/// Validation errors for the [Name] [FormzInput].
enum NameValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template name}
/// Form input for a name input.
/// {@endtemplate}
class Name extends FormzInput<String, NameValidationError> {
  /// {@macro password}
  const Name.pure() : super.pure('');

  /// {@macro password}
  const Name.dirty([super.value = '']) : super.dirty();

  static final _passwordRegExp = RegExp(r'^[\x00-\x7F]+$');

  @override
  NameValidationError? validator(String? value) {
    return _passwordRegExp.hasMatch(value ?? '')
        ? null
        : NameValidationError.invalid;
  }
}
