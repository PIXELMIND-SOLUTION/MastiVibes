import 'package:dating_app/views/blocked/blocked_chat.dart';
import 'package:dating_app/views/profile/edit_profile.dart';
import 'package:dating_app/views/rateapp/rate_app_screen.dart';
import 'package:dating_app/views/settings/settings_screen.dart';
import 'package:dating_app/views/transactions/transaction_history.dart';
import 'package:dating_app/views/warning/warning_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF5F5),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: MediaQuery.of(context).size.width * 0.65,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfile()),
                );
              },
              child: _buildMenuItem(
                context: context,
                icon: Icons.person_outline,
                title: 'Edit Profile',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionHistory()),
                );
              },
              child: _buildMenuItem(
                context: context,
                icon: Icons.swap_horiz,
                title: 'Transactions',
              ),
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.language,
              title: 'Change Language',
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WarningInfo()),
                );
              },
              child: _buildMenuItem(
                context: context,
                icon: Icons.warning_amber_outlined,
                title: 'Warnings',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BlockedChat()),
                );
              },
              child: _buildMenuItem(
                context: context,
                icon: Icons.block_outlined,
                title: 'Blocked Chats',
              ),
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.account_balance_wallet_outlined,
              title: 'My Earnings',
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.headset_mic_outlined,
              title: 'Contact Us',
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RateAppScreen()),
                );
              },
              child: _buildMenuItem(
                context: context,
                icon: Icons.star_outline,
                title: 'Rate App',
              ),
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.privacy_tip_outlined,
              title: 'Privacy Policy',
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.description_outlined,
              title: 'Terms Of Use',
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
              child: _buildMenuItem(
                context: context,
                icon: Icons.settings_outlined,
                title: 'Settings',
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Main Content Here',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String title,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200, width: 1),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
        leading: Icon(icon, color: Colors.black87, size: 22),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: Colors.black54,
          size: 24,
        ),
      ),
    );
  }
}
