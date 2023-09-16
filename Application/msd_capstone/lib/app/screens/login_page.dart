import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your password',
            ),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {}
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
