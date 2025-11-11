import 'package:flutter/material.dart';

class CreditsScreen extends StatelessWidget {
  CreditsScreen({super.key});

  final List<Map<String, dynamic>> creditPacks = [
    {"coins": 100, "price": 120},
    {"coins": 200, "price": 200},
    {"coins": 300, "price": 320},
    {"coins": 400, "price": 420},
    {"coins": 500, "price": 520},
    {"coins": 600, "price": 620},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF3F8),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFF3F8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Add Credits",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: creditPacks.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            
            // FIX: increase height to avoid overflow
            childAspectRatio: 0.78,
          ),
          itemBuilder: (context, index) {
            final pack = creditPacks[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xffFF9ECF)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/coin.png', height: 22),
                      const SizedBox(width: 4),
                      Text(
                        "${pack['coins']}",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "₹ ${pack['price']}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Container(
                    height: 32,
                    width: 70,
                    decoration: BoxDecoration(
                      color: index == 0 ? const Color(0xFFFE0A62) : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: const Color(0xffFF2C89)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Buy",
                      style: TextStyle(
                        color: index == 0
                            ? Colors.white
                            : const Color(0xFFFE0A62),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
