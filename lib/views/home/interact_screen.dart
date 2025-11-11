import 'package:flutter/material.dart';

class InteractScreen extends StatelessWidget {
  const InteractScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/7c4a78dbdc1142c15d075beeedd6e088924587c8.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom,
              child: Column(
                children: [
                  // Top Bar
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Profile Image
                        Container(
                          width: 40,
                          height: 40,
                          // decoration: BoxDecoration(
                          //   shape: BoxShape.circle,
                          //   color: Colors.white,
                          //   border: Border.all(color: Colors.white, width: 2),
                          // ),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/boyimage2.png'),
                          ),
                        ),
                        // Coins
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  shape: BoxShape.circle,
                                ),
                               child: Image.asset('assets/coin.png')
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                '200',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Menu Icon
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Title
                  const Text(
                    'Random connections',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // User Cards Grid
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildUserCard(),
                              _buildUserCard(),
                            ],
                          ),
                          const SizedBox(height: 15),
                          _buildUserCard(),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildUserCard(),
                              _buildUserCard(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Bottom Buttons
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: _buildActionButton(
                            icon: Icons.phone,
                            label: 'Random',
                            subtitle: '10 coins/min',
                            color: const Color(0xFFE91E63),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: _buildActionButton(
                            icon: Icons.videocam,
                            label: 'Random',
                            subtitle: '10 coins/min',
                            color: const Color(0xFFE91E63),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserCard() {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 70,
              height: 70,
              // decoration: BoxDecoration(
              //   shape: BoxShape.circle,
              //   border: Border.all(color: Colors.white, width: 3),
              // ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/girlimage3.png'),
              ),
            ),
            Positioned(
              top: -3,
              right: -3,
              child:Icon(Icons.call,color: Colors.red,)
            ),
          ],
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'తెలుగు',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 3),
        const Text(
          'name',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required String subtitle,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}