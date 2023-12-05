import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/sign_up/cubit/sign_up_cubit.dart';
import 'package:formz/formz.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          Navigator.of(context).pop();
        } else if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Sign Up Failure')),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.account_circle,
                size: 100,
                color: theme.colorScheme.onPrimary,
              ),
              const SizedBox(height: 20),
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              const SizedBox(height: 40),
              _FirstNameInput(),
              _LastNameInput(),
              _EmailInput(),
              _PasswordInput(),
              _SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _FirstNameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.firstName != current.firstName,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextField(
              key: const Key('signUpForm_firstNameInput_textField'),
              onChanged: (firstName) =>
                  context.read<SignUpCubit>().firstNameChanged(firstName),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'First Name',
                helperText: '',
                errorText: state.firstName.displayError != null
                    ? 'Invalid First Name'
                    : null,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: theme.colorScheme.outline),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: theme.colorScheme.outlineVariant,),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: theme.colorScheme.error),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: theme.colorScheme.error),
                ),
                fillColor: theme.colorScheme.primary,
                filled: true,
                hintStyle:
                    TextStyle(color: theme.colorScheme.onPrimary),
              ),
              cursorColor: theme.colorScheme.outlineVariant,
              textInputAction: TextInputAction.next,
            ),
          ),
        );
      },
    );
  }
}

class _LastNameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.lastName != current.lastName,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextField(
              key: const Key('signUpForm_lastNameInput_textField'),
              onChanged: (lastName) =>
                  context.read<SignUpCubit>().lastNameChanged(lastName),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Last Name',
                helperText: '',
                errorText: state.lastName.displayError != null
                    ? 'Invalid Last Name'
                    : null,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: theme.colorScheme.outline),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: theme.colorScheme.outlineVariant),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: theme.colorScheme.error),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: theme.colorScheme.error),
                ),
                fillColor: theme.colorScheme.primary,
                filled: true,
                hintStyle:
                    TextStyle(color: theme.colorScheme.onPrimary),
              ),
              cursorColor: theme.colorScheme.outlineVariant,
              textInputAction: TextInputAction.next,
            ),
          ),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextField(
              key: const Key('signUpForm_emailInput_textField'),
              onChanged: (email) =>
                  context.read<SignUpCubit>().emailChanged(email),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                helperText: '',
                errorText:
                    state.email.displayError != null ? 'Invalid Email' : null,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: theme.colorScheme.outline),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: theme.colorScheme.outlineVariant),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: theme.colorScheme.error),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: theme.colorScheme.error),
                ),
                fillColor: theme.colorScheme.primary,
                filled: true,
                hintStyle:
                    TextStyle(color: theme.colorScheme.onPrimary),
              ),
              cursorColor: theme.colorScheme.outlineVariant,
              textInputAction: TextInputAction.next,
            ),
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<_PasswordInput> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        BlocBuilder<SignUpCubit, SignUpState>(
          buildWhen: (previous, current) =>
              previous.password != current.password,
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: TextField(
                  key: const Key('signUpForm_passwordInput_textField'),
                  onChanged: (password) =>
                      context.read<SignUpCubit>().passwordChanged(password),
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    helperText: '',
                    errorText: state.password.displayError != null
                        ? 'Invalid Password'
                        : null,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: theme.colorScheme.onPrimary,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: theme.colorScheme.outline),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: theme.colorScheme.outlineVariant),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: theme.colorScheme.error),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: theme.colorScheme.error),
                    ),
                    fillColor: theme.colorScheme.primary,
                    filled: true,
                    hintStyle: TextStyle(
                        color: theme.colorScheme.onPrimary),
                  ),
                  cursorColor: theme.colorScheme.outlineVariant,
                  textInputAction: TextInputAction.next,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 8),
        BlocBuilder<SignUpCubit, SignUpState>(
          buildWhen: (previous, current) =>
              previous.password != current.password ||
              previous.confirmedPassword != current.confirmedPassword,
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                key: const Key('signUpForm_confirmedPasswordInput_textField'),
                onChanged: (confirmPassword) => context
                    .read<SignUpCubit>()
                    .confirmedPasswordChanged(confirmPassword),
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  helperText: '',
                  errorText: state.confirmedPassword.displayError != null
                      ? 'passwords do not match'
                      : null,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: theme.colorScheme.outline),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: theme.colorScheme.outlineVariant),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: theme.colorScheme.error),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: theme.colorScheme.error),
                  ),
                  fillColor: theme.colorScheme.primary,
                  filled: true,
                  hintStyle:
                      TextStyle(color: theme.colorScheme.onPrimary),
                ),
                cursorColor: theme.colorScheme.outlineVariant,
                textInputAction: TextInputAction.done,
              ),
            );
          },
        ),
      ],
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : GestureDetector(
                key: const Key('signUpForm_continue_raisedButton'),
                onTap: state.isValid
                    ? () => context.read<SignUpCubit>().signUpFormSubmitted()
                    : null,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: state.isValid
                        ? theme.colorScheme.primary
                        : theme.colorScheme.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: state.isValid
                            ? theme.colorScheme.onPrimary
                            : theme.colorScheme.onPrimary.withOpacity(0.2),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
