// // ignore_for_file: unused_element_parameter
// import 'package:dating_app/views/connect/connect_screen.dart';
// import 'package:dating_app/views/credits/credits_screen.dart';
// import 'package:dating_app/views/home/chat_screen.dart';
// import 'package:dating_app/views/profile/profile_screen.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         toolbarHeight: 0,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ProfileScreen(),
//                           ),
//                         );
//                       },
//                       child: Image.asset(
//                         'assets/boyimage2.png',
//                         height: 50,
//                         width: 50,
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 12,
//                         vertical: 6,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20),
//                         border: Border.all(color: Colors.grey[300]!),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => CreditsScreen(),
//                                 ),
//                               );
//                             },
//                             child: Container(
//                               width: 22,
//                               height: 22,
//                               decoration: const BoxDecoration(
//                                 color: Colors.orange,
//                                 shape: BoxShape.circle,
//                               ),
//                               child: Image.asset('assets/coin.png'),
//                             ),
//                           ),
//                           const SizedBox(width: 6),
//                           const Text(
//                             '200',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
//                       },
//                       child: Container(
//                         width: 40,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(color: Colors.grey[300]!),
//                         ),
//                         child: const Icon(
//                           Icons.chat,
//                           color: Colors.black,
//                           size: 24,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),

//                 // Connect with nearby friends
//                 const Text(
//                   'Connect with nearby friends',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 12),

//                 // Random button
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => ConnectScreen()),
//                     );
//                   },
//                   child: Container(
//                     width: double.infinity,
//                     padding: const EdgeInsets.symmetric(vertical: 12),
//                     decoration: BoxDecoration(
//                       gradient: const LinearGradient(
//                         colors: [
//                           Color.fromARGB(255, 245, 164, 194), 
//                           Color(0xFFFFFFFF), 
//                         ],
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                       ),
//                       borderRadius: BorderRadius.circular(12),
//                       border: Border.all(color: Colors.grey),
//                     ),
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.shuffle, size: 20),
//                         SizedBox(width: 8),
//                         Text(
//                           'Random',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 12),

//                 // Friend cards (3 in a row)
//                 Container(
//                   padding: const EdgeInsets.all(12),
//                   // decoration: BoxDecoration(
//                   //   border: Border.all(color: Colors.blue, width: 2),
//                   //   borderRadius: BorderRadius.circular(12),
//                   // ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: const [
//                       Expanded(child: _FriendCard()),
//                       SizedBox(width: 6),
//                       Expanded(child: _FriendCard()),
//                       SizedBox(width: 6),
//                       Expanded(child: _FriendCard()),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),

//                 // Discover all Rooms
//                 const Text(
//                   'Discover all Rooms',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 12),

//                 // Room cards
//                 _buildRoomCard(),
//                 const SizedBox(height: 10),
//                 _buildRoomCard(),
//                 const SizedBox(height: 10),
//                 _buildRoomCard(),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Room Card
//   static Widget _buildRoomCard() {
//     return Container(
//       padding: const EdgeInsets.all(14),
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [
//             Color.fromARGB(255, 245, 164, 194), // Pinkish red
//             Color(0xFFFFFFFF), // White
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Colors.grey),
//       ),

//       child: Row(
//         children: [
//           Container(
//             width: 60,
//             height: 60,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Image.asset('assets/homeimage.png', fit: BoxFit.cover),
//             ),
//           ),
//           const SizedBox(width: 16),
//           const Expanded(
//             child: Text(
//               'Random connections',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//             ),
//           ),
//           const Icon(Icons.chevron_right, color: Colors.black),
//         ],
//       ),
//     );
//   }
// }

// // Reusable Friend Card widget
// class _FriendCard extends StatelessWidget {
//   const _FriendCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [
//             Color.fromARGB(255, 245, 164, 194), // Pinkish red
//             Color(0xFFFFFFFF), // White
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Colors.grey),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ClipOval(
//             child: Image.asset(
//               'assets/girlimage3.png',
//               height: 50,
//               width: 50,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(height: 6),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: const Text(
//               'తెలుగు',
//               style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
//             ),
//           ),
//           const SizedBox(height: 3),
//           const Text(
//             'name',
//             style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//           ),
//           const SizedBox(height: 6),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
//             decoration: BoxDecoration(
//               color: Color(0xFFFE0A62),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: const Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(Icons.phone, color: Colors.white, size: 11),
//                 SizedBox(width: 3),
//                 Text(
//                   'Call Now',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 10,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }













// ignore_for_file: unused_element_parameter

import 'package:dating_app/utils/screen_size.dart';
import 'package:dating_app/views/connect/connect_screen.dart';
import 'package:dating_app/views/credits/credits_screen.dart';
import 'package:dating_app/views/home/chat_screen.dart';
import 'package:dating_app/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.blockWidth * 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ---------------- TOP BAR ----------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/boyimage2.png',
                        height: SizeConfig.blockHeight * 6,
                        width: SizeConfig.blockHeight * 6,
                      ),
                    ),

                    // Coins Box
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockWidth * 3,
                        vertical: SizeConfig.blockHeight * 1,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CreditsScreen(),
                                ),
                              );
                            },
                            child: Container(
                              width: SizeConfig.blockWidth * 6,
                              height: SizeConfig.blockWidth * 6,
                              decoration: const BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset('assets/coin.png'),
                            ),
                          ),
                          SizedBox(width: SizeConfig.blockWidth * 2),
                          Text(
                            '200',
                            style: TextStyle(
                              fontSize: SizeConfig.blockWidth * 4,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Chat Icon
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: SizeConfig.blockWidth * 10,
                        height: SizeConfig.blockWidth * 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: Icon(
                          Icons.chat,
                          color: Colors.black,
                          size: SizeConfig.blockWidth * 6,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: SizeConfig.blockHeight * 2),

                // ---------------- TITLE ----------------
                Text(
                  'Connect with nearby friends',
                  style: TextStyle(
                    fontSize: SizeConfig.blockWidth * 5,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: SizeConfig.blockHeight * 2),

                // ---------------- RANDOM BUTTON ----------------
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConnectScreen()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockHeight * 1.8,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 245, 164, 194),
                          Color(0xFFFFFFFF),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shuffle, size: SizeConfig.blockWidth * 5),
                        SizedBox(width: SizeConfig.blockWidth * 2),
                        Text(
                          'Random',
                          style: TextStyle(
                            fontSize: SizeConfig.blockWidth * 4,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: SizeConfig.blockHeight * 2),

                // ---------------- FRIEND CARDS ----------------
                Container(
                  padding: EdgeInsets.all(SizeConfig.blockWidth * 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Expanded(child: _FriendCard()),
                      SizedBox(width: 6),
                      Expanded(child: _FriendCard()),
                      SizedBox(width: 6),
                      Expanded(child: _FriendCard()),
                    ],
                  ),
                ),

                SizedBox(height: SizeConfig.blockHeight * 3),

                // ---------------- ROOMS TITLE ----------------
                Text(
                  'Discover all Rooms',
                  style: TextStyle(
                    fontSize: SizeConfig.blockWidth * 5,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: SizeConfig.blockHeight * 2),

                // ---------------- ROOM CARDS ----------------
                _buildRoomCard(),
                SizedBox(height: SizeConfig.blockHeight * 1.5),
                _buildRoomCard(),
                SizedBox(height: SizeConfig.blockHeight * 1.5),
                _buildRoomCard(),
                SizedBox(height: SizeConfig.blockHeight * 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ---------------- ROOM CARD ----------------
  static Widget _buildRoomCard() {
    return Container(
      padding: EdgeInsets.all(SizeConfig.blockWidth * 4),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 245, 164, 194),
            Color(0xFFFFFFFF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Container(
            width: SizeConfig.blockWidth * 15,
            height: SizeConfig.blockWidth * 15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/homeimage.png', fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: SizeConfig.blockWidth * 4),
          Expanded(
            child: Text(
              'Random connections',
              style: TextStyle(
                fontSize: SizeConfig.blockWidth * 4,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.black,
            size: SizeConfig.blockWidth * 7,
          ),
        ],
      ),
    );
  }
}

// ================= FRIEND CARD =================
class _FriendCard extends StatelessWidget {
  const _FriendCard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.blockHeight * 1.5,
        horizontal: SizeConfig.blockWidth * 2,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 245, 164, 194),
            Color(0xFFFFFFFF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              'assets/girlimage3.png',
              height: SizeConfig.blockWidth * 12,
              width: SizeConfig.blockWidth * 12,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: SizeConfig.blockHeight * 1),

          Container(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockWidth * 2,
              vertical: SizeConfig.blockHeight * 0.5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'తెలుగు',
              style: TextStyle(
                fontSize: SizeConfig.blockWidth * 2.8,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          SizedBox(height: SizeConfig.blockHeight * 0.5),

          Text(
            'name',
            style: TextStyle(
              fontSize: SizeConfig.blockWidth * 3.2,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),

          SizedBox(height: SizeConfig.blockHeight * 1),

          Container(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockWidth * 3,
              vertical: SizeConfig.blockHeight * 0.8,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFFE0A62),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: SizeConfig.blockWidth * 2.8,
                ),
                SizedBox(width: SizeConfig.blockWidth * 1),
                Text(
                  'Call Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.blockWidth * 3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
