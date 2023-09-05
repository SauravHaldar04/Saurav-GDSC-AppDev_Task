import 'package:flutter/material.dart';
import 'package:task_app/login_form-_content.dart';

void main() {
  runApp(const LoginForm());
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const LoginFormContent(),
    );
  }
}
