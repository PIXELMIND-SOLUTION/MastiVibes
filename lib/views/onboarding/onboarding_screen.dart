import 'package:dating_app/views/auth/login_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingContent> _contents = [
    OnboardingContent(
      image: 'assets/onboardimage.png',
      title: 'Meet Real People. Build\nReal Bonds.',
      description: 'Find genuine friends and connections\nthat go beyond just swipes.',
    ),
    OnboardingContent(
      image: 'assets/onboardlove.png',
      title: '100% Safe & Secure\nSpace',
      description: 'Verified profiles,respectful chats and privacy you can trust',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToLoginScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/splashrectangle.png'),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: _goToLoginScreen,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemCount: _contents.length,
                    itemBuilder: (context, index) {
                      return OnboardingPage(
                        content: _contents[index],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: List.generate(
                            _contents.length,
                            (index) => _buildDotIndicator(index),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFE91E63), Color(0xFFFF1744)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: IconButton(
                            onPressed: () {
                              if (_currentPage == _contents.length - 1) {
                                _goToLoginScreen();
                              } else {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDotIndicator(int index) {
    return Container(
      height: 8,
      width: _currentPage == index ? 24 : 8,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: _currentPage == index
            ? const Color(0xFFE91E63)
            : const Color(0xFFD9D9D9),
      ),
    );
  }
}

class CurvedBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFE91E63)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
      size.width / 2,
      size.height + 30,
      size.width,
      size.height - 30,
    );
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class OnboardingContent {
  final String image;
  final String title;
  final String description;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

class OnboardingPage extends StatelessWidget {
  final OnboardingContent content;

  const OnboardingPage({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // Image container
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Image.asset(
              content.image,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 40),
          // Title
          Text(
            content.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 16),
          // Description
          Text(
            content.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}