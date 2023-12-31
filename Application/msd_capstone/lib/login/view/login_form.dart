import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/login/cubit/login_cubit.dart';
import 'package:msd_capstone/sign_up/view/sign_up_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Authentication Failure'),
              ),
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
                'Login',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              const SizedBox(height: 40),
              _EmailInput(),
              Stack(children: [
                _PasswordInput(),
                Positioned(
                  right: 20,
                  bottom: -15,
                  child: _ForgotPassword(),
                ),
              ]),
              const SizedBox(height: 16),
              _LoginButton(),
              const SizedBox(height: 25),
              _ContinueWith(),
              const SizedBox(height: 25),
              _GoogleLoginButton(),
              const SizedBox(height: 4),
              _SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContinueWith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 0.5,
              color: Colors.grey[400],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Or continue with',
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 0.5,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextField(
              key: const Key('loginForm_emailInput_textField'),
              onChanged: (email) =>
                  context.read<LoginCubit>().emailChanged(email),
              keyboardType: TextInputType.emailAddress,
              cursorColor: Theme.of(context).colorScheme.outlineVariant,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: 'Email',
                helperText: '',
                errorText:
                    state.email.displayError != null ? 'Invalid Email' : null,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: theme.colorScheme.outline),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.colorScheme.outlineVariant,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: theme.colorScheme.error),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: theme.colorScheme.error),
                ),
                fillColor: theme.colorScheme.primary,
                filled: true,
                hintStyle: TextStyle(color: theme.colorScheme.onPrimary),
              ),
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
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextField(
              key: const Key('loginForm_passwordInput_textField'),
              onChanged: (password) =>
                  context.read<LoginCubit>().passwordChanged(password),
              obscureText: _obscureText,
              textInputAction: TextInputAction.done,
              cursorColor: theme.colorScheme.outlineVariant,
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
            ),
          ),
        );
      },
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      key: const Key('loginForm_forgotPassword_flatButton'),
      onPressed: () => context.read<LoginCubit>().sendPasswordResetEmail(),
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: theme.colorScheme.onPrimary),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : GestureDetector(
                key: const Key('loginForm_continue_raisedButton'),
                onTap: state.isValid
                    ? () => context.read<LoginCubit>().logInWithCredentials()
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
                      'LOGIN',
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

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 400,
      height: 50,
      child: ElevatedButton.icon(
        key: const Key('loginForm_googleLogin_raisedButton'),
        label: Text(
          'SIGN IN WITH GOOGLE',
          style: TextStyle(color: theme.colorScheme.onPrimary),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: theme.colorScheme.primary,
        ),
        icon: Icon(FontAwesomeIcons.google, color: theme.colorScheme.onPrimary),
        onPressed: () => context.read<LoginCubit>().logInWithGoogle(),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      key: const Key('loginForm_createAccount_flatButton'),
      onPressed: () => Navigator.of(context).push<void>(SignUpPage.route()),
      child: Text(
        'CREATE ACCOUNT',
        style: TextStyle(color: theme.colorScheme.onPrimary),
      ),
    );
  }
}
