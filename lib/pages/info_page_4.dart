import 'package:flutter/material.dart';

class InfoPage4 extends StatefulWidget {
  const InfoPage4({super.key});

  @override
  State<InfoPage4> createState() => _InfoPage4State();
}

class _InfoPage4State extends State<InfoPage4> {
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
          'Personalize Your Learning Path',
          style: TextStyle(
            color: Color(0xFF00434C),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          textAlign: TextAlign.center,
          'Customize Your Learning With Progress Tracking, And Interactive Activities.',
          style: TextStyle(
            color: Color(0xFF6C6C6C),
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
