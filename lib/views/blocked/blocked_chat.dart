import 'package:flutter/material.dart';

class BlockedChat extends StatefulWidget {
  const BlockedChat({super.key});

  @override
  State<BlockedChat> createState() => _BlockedChatState();
}

class _BlockedChatState extends State<BlockedChat>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.index = 1; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFEFF5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60),

          Row(
            children: [
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back, size: 20)),
              const SizedBox(width: 8),
              const Text(
                "Blocked Chats",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Container(
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
                    children: [SizedBox(width: 6), Text('Blocked by you')],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SizedBox(width: 6), Text('Blocked you')],
                  ),
                ),
              ],
            ),
          ),

          // const SizedBox(height: 20),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Tab 1
                Center(
                  child: Text(
                    "No blocked users",
                    style: TextStyle(color: Colors.black.withOpacity(.5)),
                  ),
                ),

                // Tab 2 → Exact user tile UI
                ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          // Avatar
                          CircleAvatar(
                            radius: 26,
                            backgroundImage: AssetImage(
                              "assets/girlimage3.png", // replace with your asset
                            ),
                          ),

                          const SizedBox(width: 12),

                          // User details
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "తెలుగు",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),

                          const Spacer(),

                          // Status
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Offline",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
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
  }
}
