import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/boyimage2.png',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.person, color: Colors.orange);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFD700),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/coin.png')
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          '200',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 2),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add, color: Colors.pink, size: 28),
                      onPressed: () {
                        // _showConnectDialog(context),
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Grid View
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.68,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const RoomCard();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}

class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  void _showConnectDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Connect with friends',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                        _showAudioCallDialog(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFE0A62),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 0,
                      ),
                      icon: const Icon(Icons.phone),
                      label: const Text(
                        'Voice call',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFE0A62),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 0,
                      ),
                      icon: const Icon(Icons.videocam),
                      label: const Text(
                        'Video call',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAudioCallDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) => const Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: AudioCallDialog(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.pink[100]!,
            Colors.pink[50]!,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.pink[200]!, width: 1),
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Participants avatars
                  SizedBox(
                    height: 70,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Left avatar
                        Positioned(
                          left: 5,
                          top: 15,
                          child: _buildAvatar('assets/girlimage3.png'),
                        ),
                        // Center main avatar
                        Positioned(
                          top: 0,
                          child: _buildAvatar('assets/girlimage3.png', isLarge: true),
                        ),
                        // Right avatar
                        Positioned(
                          right: 5,
                          top: 15,
                          child: _buildAvatar('assets/girlimage3.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Telugu text
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'తెలుగు',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Room name',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          // Join Now button
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _showConnectDialog(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFE0A62),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Join Now',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(String imageUrl, {bool isLarge = false}) {
    final size = isLarge ? 50.0 : 35.0;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: ClipOval(
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            );
          },
        ),
      ),
    );
  }
}

class AudioCallDialog extends StatefulWidget {
  const AudioCallDialog({super.key});

  @override
  State<AudioCallDialog> createState() => _AudioCallDialogState();
}

class _AudioCallDialogState extends State<AudioCallDialog> {
  final List<String> topics = [
    'Love',
    'Breakup',
    'Games',
    'Movies',

  ];

  final Set<String> selectedTopics = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Audio Call',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 10,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: topics.map((topic) => _buildTopicChip(topic)).toList(),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Handle create room
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFFFE0A62),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: const BorderSide(color: Color(0xFFFE0A62), width: 2),
                ),
                elevation: 0,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Create Room',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopicChip(String topic) {
    final isSelected = selectedTopics.contains(topic);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedTopics.remove(topic);
          } else {
            selectedTopics.add(topic);
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? const Color(0xFFFE0A62) : Colors.grey[300]!,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              topic,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isSelected ? const Color(0xFFFE0A62) : Colors.black87,
              ),
            ),
            const SizedBox(width: 6),
            Icon(
              isSelected ? Icons.favorite : Icons.favorite_border,
              size: 16,
              color: const Color(0xFFFE0A62),
            ),
          ],
        ),
      ),
    );
  }
}