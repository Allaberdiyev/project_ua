import 'package:flutter/material.dart';
import 'package:project_ua/pages/login_pages/sign_in.dart';
import 'package:project_ua/pages/login_pages/sign_up.dart';

class SignInOrUp extends StatefulWidget {
  const SignInOrUp({super.key});

  @override
  State<SignInOrUp> createState() => _SignInOrUpState();
}

class _SignInOrUpState extends State<SignInOrUp> {
  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/sign_in_up.png'),
          const SizedBox(
            height: 30,
          ),
          const Text(
            textAlign: TextAlign.center,
            'Unlock Your Learning Potential',
            style: TextStyle(
              color: Color(0xFF00434C),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            textAlign: TextAlign.center,
            'Your Gateway To Personalized Courses, And Guidance For Success.',
            style: TextStyle(color: Color(0xFF6C6C6C), fontSize: 15),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00707E),
                  foregroundColor: const Color(0xFFD9EFF2),
                  fixedSize: Size(size_width * 0.4, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('SIGN IN'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFF00434C),
                  side: const BorderSide(
                    color: Color(0xFF00707E),
                    width: 2.8,
                  ),
                  fixedSize: Size(size_width * 0.4, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('SIGN UP'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
