import 'package:ad_exam_1/appRoutes/app_routes.dart';
import 'package:ad_exam_1/controllers/signUp_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ad_exam_1/helpers/signUp_helper.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Enter your email' : null,
              ),
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Enter your username' : null,
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Enter your password' : null,
              ),
              SizedBox(
                height: s.height * 0.02,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    context.read<UserController>().signup(
                          emailController.text,
                          usernameController.text,
                          passwordController.text,
                        );
                    Navigator.pushReplacementNamed(
                      context,
                      AppRoutes.instance.logInPage,
                    );
                  }
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
