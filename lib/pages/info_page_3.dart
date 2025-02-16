import 'package:flutter/material.dart';

class InfoPage3 extends StatefulWidget {
  const InfoPage3({super.key});

  @override
  State<InfoPage3> createState() => _InfoPage3State();
}

class _InfoPage3State extends State<InfoPage3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/info_3_pic.png'),
        const SizedBox(
          height: 30,
        ),
        const Text(
          textAlign: TextAlign.center,
          'Engage with Expert Instructors',
          style: TextStyle(
              color: Color(0xFFFF00434C),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          textAlign: TextAlign.center,
          'Connect with knowledgeable tutors for personalized guidance.',
          style: TextStyle(color: Color(0xFF6C6C6C), fontSize: 15),
        )
      ],
    );
  }
}
