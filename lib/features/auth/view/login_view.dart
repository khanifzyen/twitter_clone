import 'package:flutter/material.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import '../../../constants/constants.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final appBar = UIConstants.appBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                AuthField(controller: emailController, hintText: 'Email'),
                const SizedBox(height: 25.0),
                AuthField(controller: passwordController, hintText: 'Password'),
                const SizedBox(height: 25.0),
                //Button(),
                //TextSpan()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
