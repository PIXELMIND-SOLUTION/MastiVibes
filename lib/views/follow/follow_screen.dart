
import 'package:flutter/material.dart';

class FollowScreen extends StatelessWidget {
  const FollowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffFFEFF5),
        body: Column(
          children: [
            const SizedBox(height: 50),

            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                labelPadding: EdgeInsets.zero,
                indicator: BoxDecoration(
                  color: const Color(0xffFE0A62),
                  borderRadius: BorderRadius.circular(30),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(
                    child: Center(
                      child: Text(
                        "100 Following",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text(
                        "100 Followers",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: TabBarView(children: [_buildUserList(), _buildUserList()]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: 8,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => _showProfilePopup(context),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            margin: const EdgeInsets.only(bottom: 8),
            color: Colors.white,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/girlimage3.png',
                    width: 55,
                    height: 55,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 15),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "తెలుగు",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),

                const Spacer(),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Offline",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showProfilePopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 50),
                padding: const EdgeInsets.symmetric(vertical: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 40),

                    const Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.location_on, size: 18, color: Colors.grey),
                        SizedBox(width: 4),
                        Text("Hyderabad", style: TextStyle(color: Colors.grey)),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FollowScreen(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                const Text(
                                  '100',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 40,
                            color: Colors.grey[300],
                          ),
                          Column(
                            children: [
                              const Text(
                                '100',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Following',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffFE0A62),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        "Following",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 0,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: const AssetImage('assets/girlimage3.png'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
