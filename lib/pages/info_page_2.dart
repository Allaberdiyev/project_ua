import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfoPage2 extends StatefulWidget {
  const InfoPage2({super.key});

  @override
  State<InfoPage2> createState() => _InfoPage2State();
}

class _InfoPage2State extends State<InfoPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/info_2_pic.png'),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Embark on Your Learning Adventure',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF00434C),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            textAlign: TextAlign.center,
            'Explore Interactive Lessons, Quizzes, And Multimedia Content To Enhance Your Understanding.',
            style: TextStyle(
                color: Color(0xFF6C6C6C),
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
