import 'package:flutter/material.dart';

class WarningInfo extends StatelessWidget {
  const WarningInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Warning",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),

            const Text(
              "Continued violation of our terms\n    may result in a permanent\n               account block.",
              style: TextStyle(
                fontSize: 20,
                height: 1.4,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                      "00/05",
                      style: TextStyle(
                        color: Color(0xFFFE0A62),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
              ],
            ),

            // Progress Bar Section
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFE0A62),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE0E0E0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                
                const SizedBox(height: 4),
                const Text(
                  "Current warnings",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "To avoid warnings",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15,),
            Divider(),
            const SizedBox(height: 15),

            // Rules List
            ruleItem(
              number: 1,
              text: "Talk to everyone with respect",
            ),
            ruleItem(
              number: 2,
              text: "Do not ask anyone for Instagram or WhatsApp details",
            ),
            ruleItem(
              number: 3,
              text: "Do not use abusive language and be polite",
            ),
            ruleItem(
              number: 4,
              text: "Do not report anyone incorrectly",
            ),
          ],
        ),
      ),
    );
  }

  Widget ruleItem({required int number, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12),
        ),
      ),
      child: Text(
        "$number. $text",
        style: const TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    );
  }
}
