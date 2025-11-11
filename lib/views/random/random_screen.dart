// import 'package:flutter/material.dart';

// class RandomScreen extends StatefulWidget {
//   const RandomScreen({super.key});

//   @override
//   State<RandomScreen> createState() => _RandomScreenState();
// }

// class _RandomScreenState extends State<RandomScreen> with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFFF0F5),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFFF0F5),
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         title: Container(
//           margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(25),
//           ),
//           child: TabBar(
//             controller: _tabController,
//             indicator: BoxDecoration(
//               color: const Color(0xFFFE0A62),
//               borderRadius: BorderRadius.circular(25),
//             ),
//             labelColor: Colors.white,
//             unselectedLabelColor: Colors.grey,
//             labelStyle: const TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w600,
//             ),
//             dividerColor: Colors.transparent,
//             tabs: const [
//               Tab(
//                 icon: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(Icons.check, size: 16),
//                     SizedBox(width: 4),
//                     Text('All'),
//                   ],
//                 ),
//               ),
//               Tab(
//                 icon: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(Icons.call_missed, size: 16),
//                     SizedBox(width: 4),
//                     Text('Missed'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 _buildCallList(),
//                 _buildCallList(isMissed: true),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Container(
//               width: double.infinity,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: const Color(0xFFFFD6E8),
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(25),
//                   onTap: () {},
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.shuffle, size: 20),
//                       SizedBox(width: 8),
//                       Text(
//                         'Random',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCallList({bool isMissed = false}) {
//     return ListView.builder(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       itemCount: 4,
//       itemBuilder: (context, index) {
//         return Container(
//           margin: const EdgeInsets.only(bottom: 8),
//           padding: const EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Row(
//             children: [
//               CircleAvatar(
//                 radius: 24,
//                 // backgroundColor: const Color(0xFFFFB347),
//                 child: Image.asset('assets/girlimage3.png')
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Name',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     const SizedBox(height: 2),
//                     Row(
//                       children: [
//                         Icon(
//                           isMissed ? Icons.call_missed : Icons.call_received,
//                           size: 14,
//                           color: Colors.grey,
//                         ),
//                         Text('తెలుగు',style: TextStyle(color: Colors.grey),),
//                         const SizedBox(width: 5),

//                         Text(
//                           '2 AM',
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: isMissed ? const Color(0xFFFF1493) : Colors.grey,
//                             fontWeight: isMissed ? FontWeight.w600 : FontWeight.normal,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _showCallOptionsDialog() {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Voice Call Button
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFE0A62), Color(0xFFFE0A62)],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () {
                        Navigator.pop(context);
                        // Add voice call logic here
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, color: Colors.white, size: 20),
                          SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Voice call',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '10 coins/min',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Video Call Button
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFE0A62), Color(0xFFFE0A62)],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () {
                        Navigator.pop(context);
                        // Add video call logic here
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.videocam, color: Colors.white, size: 20),
                          SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Video call',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '15 coins/min',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF0F5),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          height: 48,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
          ),
          child: TabBar(
            controller: _tabController,
            labelPadding: EdgeInsets.zero,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,

            indicator: BoxDecoration(
              color: const Color(0xFFFE0A62),
              borderRadius: BorderRadius.circular(25),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),

            tabs: const [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check, size: 16),
                    SizedBox(width: 6),
                    Text('All'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.call_missed, size: 16),
                    SizedBox(width: 6),
                    Text('Missed'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [_buildCallList(), _buildCallList(isMissed: true)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFFFD6E8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: _showCallOptionsDialog,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shuffle, size: 20),
                      SizedBox(width: 8),
                      Text(
                        'Random',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCallList({bool isMissed = false}) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                child: Image.asset('assets/girlimage3.png'),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Icon(
                          isMissed ? Icons.call_missed : Icons.call_received,
                          size: 14,
                          color: Colors.grey,
                        ),
                        const Text(
                          'తెలుగు',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '2 AM',
                          style: TextStyle(
                            fontSize: 12,
                            color: isMissed
                                ? const Color(0xFFFF1493)
                                : Colors.grey,
                            fontWeight: isMissed
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
