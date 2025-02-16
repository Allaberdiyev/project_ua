import 'package:flutter/material.dart';
import 'package:project_ua/pages/info_page_2.dart';
import 'package:project_ua/pages/info_page_3.dart';
import 'package:project_ua/pages/info_page_4.dart';
import 'package:project_ua/pages/sign_in_or_up.dart';

class InfoPage1 extends StatefulWidget {
  const InfoPage1({super.key});

  @override
  State<InfoPage1> createState() => _InfoPage1State();
}

class _InfoPage1State extends State<InfoPage1> {
  final PageController _pageController = PageController();
  int currentPage = 0; // Hozirgi sahifa indeksi

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Yuqori qism - Scroll qismi
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                _buildPage1(),
                const InfoPage2(),
                const InfoPage3(),
                const InfoPage4(),
              ],
            ),
          ),

          // Indikator dumaloqlar (4 ta)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPage == index
                      ? const Color(0xFF00707E)
                      : const Color(0xFFC5C5C5), // Aktiv sahifa ko'k bo'ladi
                ),
              );
            }),
          ),

          // Pastki qism - Tugmalar joyida qoladi
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00707E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: Size(screenWidth * 0.8, 70),
                    elevation: 0,
                  ),
                  child: const Text(
                    'CONTINUE',
                    style: TextStyle(
                      color: Color(0xFFD9EFF2),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => const SignInOrUp()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0, shadowColor: Colors.transparent),
                  child: const Text(
                    'SKIP',
                    style: TextStyle(
                      color: Color(0xFF6C6C6C),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage1() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/info_1_pic.png'),
          const SizedBox(height: 30),
          const Text(
            'Enter the World of \nE-Learning',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF00434C),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Begin Your Educational Journey With Access To a Diverse Range Of Courses.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
