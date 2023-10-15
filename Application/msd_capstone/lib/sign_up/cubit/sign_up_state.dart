part of 'sign_up_cubit.dart';

enum ConfirmPasswordValidationError { invalid }

final class SignUpState extends Equatable {
  const SignUpState({
    this.firstName = const Name.pure(),
    this.lastName = const Name.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmedPassword = const ConfirmedPassword.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.errorMessage,
  });

  final Name firstName;
  final Name lastName;
  final Email email;
  final Password password;
  final ConfirmedPassword confirmedPassword;
  final FormzSubmissionStatus status;
  final bool isValid;
  final String? errorMessage;

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        email,
        password,
        confirmedPassword,
        status,
        isValid,
        errorMessage,
      ];

  SignUpState copyWith({
    Name? firstName,
    Name? lastName,
    Email? email,
    Password? password,
    ConfirmedPassword? confirmedPassword,
    FormzSubmissionStatus? status,
    bool? isValid,
    String? errorMessage,
  }) {
    return SignUpState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
