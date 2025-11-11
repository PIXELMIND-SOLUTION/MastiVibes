// import 'package:dating_app/utils/screen_size.dart';
// import 'package:dating_app/views/Earnings/redeem_screen.dart';
// import 'package:flutter/material.dart';

// class EarningScreen extends StatelessWidget {
//   const EarningScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     SizeConfig.init(context);

//     return Scaffold(
//       backgroundColor: const Color(0xffFFEFF5),
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: const Color(0xffFFEFF5),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: Text(
//           "My Earnings",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: SizeConfig.blockWidth * 4.5,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         centerTitle: false,
//       ),

//       body: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 4),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [

//             // Referral link
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 3),
//               height: SizeConfig.blockHeight * 5,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Text(
//                       "ghesiurhushrfisijsmkjbjhsbzliaoasihkd",
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(fontSize: SizeConfig.blockWidth * 3.5),
//                     ),
//                   ),
//                   SizedBox(width: SizeConfig.blockWidth * 2),
//                   Icon(
//                     Icons.copy,
//                     size: SizeConfig.blockWidth * 4.5,
//                     color: Colors.black.withOpacity(0.7),
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: SizeConfig.blockHeight * 2),

//             // Big Pink Card
//             Container(
//               padding: EdgeInsets.all(SizeConfig.blockWidth * 4),
//               decoration: BoxDecoration(
//                 color: const Color(0xFFFE0A62),
//                 borderRadius: BorderRadius.circular(18),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Refer Your Friends",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: SizeConfig.blockWidth * 4,
//                     ),
//                   ),
//                   SizedBox(height: SizeConfig.blockHeight * 1),
//                   Text(
//                     "Earn ₹100",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: SizeConfig.blockWidth * 7,
//                     ),
//                   ),
//                   SizedBox(height: SizeConfig.blockHeight * 1.5),

//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Image.asset(
//                       "assets/coinsimage.png",
//                       height: SizeConfig.blockHeight * 8,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: SizeConfig.blockHeight * 2),

//             // Reward Cards
//             _rewardCard(
//               context: context,
//               title: "Received Gift 1 Gift = ₹1",
//               amount: "₹100",
//               buttonText: "Redeem",
//               icon: "assets/heart.png",
//             ),

//             SizedBox(height: SizeConfig.blockHeight * 1.5),

//             _rewardCard(
//               context: context,
//               title: "Referral Rewards",
//               amount: "₹100",
//               buttonText: "Redeem",
//               icon: "assets/singlecoin.png",
//             ),

//             SizedBox(height: SizeConfig.blockHeight * 2.5),

//             // Steps
//             _stepItem(Icons.link, "Invite your friend to install the app with the link"),
//             _stepDivider(),
//             _stepItem(Icons.phone_android, "Use this App"),
//             _stepDivider(),
//             _stepItem(Icons.card_giftcard, "You get ₹100 once they complete this process"),

//             SizedBox(height: SizeConfig.blockHeight * 3),

//             Text(
//               "Frequently asked question",
//               style: TextStyle(
//                 fontSize: SizeConfig.blockWidth * 4,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),

//             SizedBox(height: SizeConfig.blockHeight * 1.5),

//             _faqTile("What is the Refer & Earn program?"),
//             _faqTile("How do I refer someone?"),
//             _faqTile("How much can I earn per referral?"),
//             _faqTile("What counts as a valid referral?"),

//             SizedBox(height: SizeConfig.blockHeight * 5),
//           ],
//         ),
//       ),
//     );
//   }

//   // ---------------- Reward Card ----------------
//   Widget _rewardCard({
//     required BuildContext context,
//     required String title,
//     required String amount,
//     required String buttonText,
//     required String icon,
//   }) {
//     return Container(
//       padding: EdgeInsets.all(SizeConfig.blockWidth * 3),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//       ),
//       child: Row(
//         children: [
//           Image.asset(icon, height: SizeConfig.blockHeight * 5),
//           SizedBox(width: SizeConfig.blockWidth * 3),
//           Expanded(
//             child: Text(
//               title,
//               style: TextStyle(
//                 fontSize: SizeConfig.blockWidth * 3.5,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           Text(
//             amount,
//             style: TextStyle(
//               fontSize: SizeConfig.blockWidth * 5,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(width: SizeConfig.blockWidth * 3),
//           GestureDetector(
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: (_) => RedeemScreen()));
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(
//                 horizontal: SizeConfig.blockWidth * 3,
//                 vertical: SizeConfig.blockHeight * 0.8,
//               ),
//               decoration: BoxDecoration(
//                 color: const Color(0xffFE0A62),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Text(
//                 buttonText,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: SizeConfig.blockWidth * 3,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Step Item
//   Widget _stepItem(IconData icon, String title) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Icon(icon, color: const Color(0xffFE0A62), size: SizeConfig.blockWidth * 5),
//         SizedBox(width: SizeConfig.blockWidth * 3),
//         Expanded(
//           child: Text(
//             title,
//             style: TextStyle(fontSize: SizeConfig.blockWidth * 3.2),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _stepDivider() {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: SizeConfig.blockHeight * 1.3),
//       child: Container(
//         height: 1,
//         width: double.infinity,
//         color: Colors.black.withOpacity(0.1),
//       ),
//     );
//   }

//   // FAQ Tile
//   Widget _faqTile(String title) {
//     return Container(
//       margin: EdgeInsets.only(bottom: SizeConfig.blockHeight * 1.2),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: ExpansionTile(
//         title: Text(
//           title,
//           style: TextStyle(
//             fontSize: SizeConfig.blockWidth * 3.5,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }











import 'package:dating_app/utils/screen_size.dart';
import 'package:dating_app/views/Earnings/redeem_screen.dart';
import 'package:flutter/material.dart';

class EarningScreen extends StatelessWidget {
  const EarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: const Color(0xffFFEFF5),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFEFF5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "My Earnings",
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.blockWidth * 4.9,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockWidth * 4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Referral Link
            Container(
              height: SizeConfig.blockHeight * 5.5,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "ghesiurhushrfisijsmkjbjhsbzliaoasihkd",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: SizeConfig.blockWidth * 3.9,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.copy,
                    size: SizeConfig.blockWidth * 4.8,
                  ),
                ],
              ),
            ),

            SizedBox(height: SizeConfig.blockHeight * 2),

            // Refer Your Friends - Stack Card
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(SizeConfig.blockWidth * 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFE0A62),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Refer Your Friends",
                        style: TextStyle(
                          fontSize: SizeConfig.blockWidth * 4,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockHeight * 1),
                      Text(
                        "Earn ₹100",
                        style: TextStyle(
                          fontSize: SizeConfig.blockWidth * 7,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: SizeConfig.blockHeight * 5),
                    ],
                  ),
                ),

                Positioned(
                  right: 8,
                  top: 10,
                  child: Image.asset(
                    "assets/coinsimage.png",
                    height: SizeConfig.blockHeight * 10,
                  ),
                ),
              ],
            ),

            SizedBox(height: SizeConfig.blockHeight * 2),

            // Reward Card 1
            _rewardCard(
              context: context,
              title: "Received Gift 1 Gift = ₹1",
              amount: "₹100",
              icon: "assets/heart.png",
            ),

            SizedBox(height: SizeConfig.blockHeight * 1.5),

            // Reward Card 2
            _rewardCard(
              context: context,
              title: "Referral Rewards",
              amount: "₹100",
              icon: "assets/singlecoin.png",
            ),

            SizedBox(height: SizeConfig.blockHeight * 3),

            // Steps with icons
            _stepItem(Icons.link, "Invite your friend to install the app with the link"),
            _divider(),
            _stepItem(Icons.phone_android, "Use this App"),
            _divider(),
            _stepItem(Icons.card_giftcard, "You get ₹100 once they complete this process"),

            SizedBox(height: SizeConfig.blockHeight * 3),

            // FAQ
            Text(
              "Frequently asked question",
              style: TextStyle(
                fontSize: SizeConfig.blockWidth * 4,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: SizeConfig.blockHeight * 1.5),

            _faqTile("What is the Refer & Earn program?"),
            _faqTile("How do I refer someone?"),
            _faqTile("How much can I earn per referral?"),
            _faqTile("What counts as a valid referral?"),

            SizedBox(height: SizeConfig.blockHeight * 5),
          ],
        ),
      ),
    );
  }

  // Reward Card
  Widget _rewardCard({
    required BuildContext context,
    required String title,
    required String amount,
    required String icon,
  }) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.blockWidth * 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(icon, height: SizeConfig.blockHeight * 5),
          SizedBox(width: SizeConfig.blockWidth * 3),

          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: SizeConfig.blockWidth * 3.5,
              ),
            ),
          ),

          Text(
            amount,
            style: TextStyle(
              fontSize: SizeConfig.blockWidth * 5,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(width: SizeConfig.blockWidth * 3),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const RedeemScreen()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockWidth * 3,
                vertical: SizeConfig.blockHeight * 1,
              ),
              decoration: BoxDecoration(
                color: const Color(0xffFE0A62),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Redeem",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.blockWidth * 3.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _stepItem(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xffFE0A62), size: SizeConfig.blockWidth * 6),
        SizedBox(width: SizeConfig.blockWidth * 3),
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontSize: SizeConfig.blockWidth * 3.5),
          ),
        ),
      ],
    );
  }

  Widget _divider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockHeight * 1.3),
      child: Container(height: 1, color: Colors.black.withOpacity(0.1)),
    );
  }

  Widget _faqTile(String title) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.blockHeight * 1.2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockWidth * 4,
        ),
        childrenPadding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockWidth * 4,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: SizeConfig.blockWidth * 3.6,
          ),
        ),
      ),
    );
  }
}
