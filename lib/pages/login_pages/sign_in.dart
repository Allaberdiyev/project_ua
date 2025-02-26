import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_rounded)),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'SIGN IN',
              style: TextStyle(
                  color: Color(0xFF00434C),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            textAlign: TextAlign.center,
            'Sign In to Access Your Personalized Learning Journey',
            style: TextStyle(
              color: Color(0xFF6C6C6C),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
