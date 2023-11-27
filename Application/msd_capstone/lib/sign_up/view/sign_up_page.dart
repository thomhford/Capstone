import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/sign_up/sign_up.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      // appBar: AppBar(title: const Text('Sign Up')),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: BlocProvider<SignUpCubit>(
                create: (_) =>
                    SignUpCubit(context.read<AuthenticationRepository>()),
                child: const SignUpForm(),
              ),
            ),
            const Row(
              children: [
                SizedBox(width: 25),
                BackButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
