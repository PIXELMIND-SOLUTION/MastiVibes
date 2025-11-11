// import 'package:dating_app/views/home/chat_screen.dart';
// import 'package:dating_app/views/home/connect_friends_screen.dart';
// import 'package:dating_app/views/home/home_screen.dart';
// import 'package:dating_app/views/home/interact_screen.dart';
// import 'package:dating_app/views/home/room_screen.dart';
// import 'package:flutter/material.dart';

// class MainNavigationScreen extends StatefulWidget {
//   const MainNavigationScreen({Key? key}) : super(key: key);

//   @override
//   State<MainNavigationScreen> createState() => _MainNavigationScreenState();
// }

// class _MainNavigationScreenState extends State<MainNavigationScreen> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = [
//     const HomeScreen(),
//     InteractScreen(),
//     RoomScreen(),
//     ConnectFriendsScreen(),
//     ChatScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           gradient: const LinearGradient(
//             colors: [Color(0xFF1D1E33), Color(0xFF0A0E21)],
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.purple.withOpacity(0.3),
//               blurRadius: 20,
//               offset: const Offset(0, -5),
//             ),
//           ],
//         ),
//         child: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: (index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: Colors.purple.shade300,
//           unselectedItemColor: Colors.grey.shade600,
//           selectedLabelStyle: const TextStyle(
//             fontWeight: FontWeight.w600,
//             fontSize: 12,
//           ),
//           unselectedLabelStyle: const TextStyle(
//             fontSize: 12,
//           ),
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home_outlined, size: 28),
//               activeIcon: Icon(Icons.home, size: 28),
//               label: 'Home',
//             ),

//               BottomNavigationBarItem(
//               icon: Icon(Icons.grid_view_rounded, size: 28),
//               activeIcon: Icon(Icons.grid_view, size: 28),
//               label: 'Interact',
//             ),
//                   BottomNavigationBarItem(
//               icon: Icon(Icons.edit_outlined, size: 28),
//               activeIcon: Icon(Icons.edit, size: 28),
//               label: 'Room',
//             ),
//          BottomNavigationBarItem(
//   icon: Icon(Icons.nightlight_round, size: 28), // 🌙 spooky night
//   activeIcon: Icon(Icons.nightlight, size: 28),
//   label: 'Friends',
// ),


//              BottomNavigationBarItem(
//               icon: Icon(Icons.group_outlined, size: 28),
//               activeIcon: Icon(Icons.group, size: 28),
//               label: 'Messages',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }











import 'package:dating_app/views/home/chat_screen.dart';
import 'package:dating_app/views/home/connect_friends_screen.dart';
import 'package:dating_app/views/home/home_screen.dart';
import 'package:dating_app/views/home/interact_screen.dart';
import 'package:dating_app/views/home/room_screen.dart';
import 'package:flutter/material.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    InteractScreen(),
    RoomScreen(),
    ConnectFriendsScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  index: 0,
                  icon: Icons.home_outlined,
                  activeIcon: Icons.home,
                  label: 'Home',
                ),
                _buildNavItem(
                  index: 1,
                  icon: Icons.call_outlined,
                  activeIcon: Icons.call,
                  label: 'Interact',
                ),
                _buildNavItem(
                  index: 2,
                  icon: Icons.grid_view_outlined,
                  activeIcon: Icons.grid_view,
                  label: 'Room',
                ),
                _buildNavItem(
                  index: 3,
                  icon: Icons.people_outline,
                  activeIcon: Icons.people,
                  label: 'Friends',
                ),
                _buildNavItem(
                  index: 4,
                  icon: Icons.chat_bubble_outline,
                  activeIcon: Icons.chat_bubble,
                  label: 'Messages',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    required IconData activeIcon,
    required String label,
  }) {
    final isSelected = _currentIndex == index;
    final color = isSelected ? const Color(0xFFE91E63) : Colors.grey.shade400;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isSelected ? activeIcon : icon,
              color: color,
              size: 24,
            ),
            if (isSelected) ...[
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: color,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
