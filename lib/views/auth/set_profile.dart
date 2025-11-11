// import 'package:flutter/material.dart';

// class SetProfile extends StatefulWidget {
//   const SetProfile({super.key});

//   @override
//   State<SetProfile> createState() => _SetProfileState();
// }

// class _SetProfileState extends State<SetProfile> {
//   String? selectedGender;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text(
//           'Set Profile',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 18,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               _buildTextField(
//                 label: 'Name',
//                 hint: 'Enter your name',
//                 icon: Icons.person_outline,
//               ),
//               const SizedBox(height: 16),
//               _buildTextField(
//                 label: 'Nick Name',
//                 hint: 'Enter Nick name',
//                 icon: Icons.person_outline,
//               ),
//               const SizedBox(height: 16),
//               _buildDropdownField(
//                 label: 'Who are you?',
//                 hint: 'Select',
//                 icon: Icons.transgender,
//               ),
//               const SizedBox(height: 16),
//               _buildDropdownField(
//                 label: 'Date of birth',
//                 hint: 'Select',
//                 icon: Icons.calendar_today_outlined,
//               ),
//               const SizedBox(height: 16),
//               _buildTextField(
//                 label: 'Referral code',
//                 hint: 'Referral code',
//                 icon: Icons.card_giftcard_outlined,
//               ),
//               const SizedBox(height: 32),
//               SizedBox(
//                 width: double.infinity,
//                 height: 56,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     _showGenderSelectionDialog(context);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFFE0A62),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(28),
//                     ),
//                     elevation: 0,
//                   ),
//                   child: const Text(
//                     'Continue',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _showGenderSelectionDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return Dialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Container(
//                 padding: const EdgeInsets.all(24),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Text(
//                       'Select your gender',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 24),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         _buildGenderOption(
//                           'Girl',
//                           'assets/womenicon.png',
//                           Colors.pink.shade100,
//                           Colors.pink,
//                           selectedGender == 'Girl',
//                           () {
//                             setState(() {
//                               selectedGender = 'Girl';
//                             });
//                           },
//                         ),
//                         _buildGenderOption(
//                           'Boy',
//                           'assets/manicon.png',
//                           Colors.blue.shade100,
//                           Colors.blue,
//                           selectedGender == 'Boy',
//                           () {
//                             setState(() {
//                               selectedGender = 'Boy';
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     Container(
//                       padding: const EdgeInsets.all(12),
//                       decoration: BoxDecoration(
//                         color: Colors.yellow.shade50,
//                         borderRadius: BorderRadius.circular(12),
//                         border: Border.all(color: Colors.yellow.shade200),
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.info_outline,
//                             color: Colors.orange.shade400,
//                             size: 20,
//                           ),
//                           const SizedBox(width: 8),
//                           Expanded(
//                             child: Text(
//                               'Select your Original Gender otherwise your account will be block',
//                               style: TextStyle(
//                                 fontSize: 11,
//                                 color: Colors.orange.shade700,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 24),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 50,
//                       child: ElevatedButton(
//                         onPressed: selectedGender != null
//                             ? () {
//                                 Navigator.pop(context);
//                                 // Handle continue action
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(
//                                     content: Text('Selected: $selectedGender'),
//                                   ),
//                                 );
//                               }
//                             : null,
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFFFE0A62),
//                           disabledBackgroundColor: Colors.grey.shade300,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                           elevation: 0,
//                         ),
//                         child: const Text(
//                           'Continue',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
//   Widget _buildGenderOption(
//     String label,
//     String imagePath,
//     Color bgColor,
//     Color iconColor,
//     bool isSelected,
//     VoidCallback onTap,
//   ) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 100,
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         decoration: BoxDecoration(
//           color: bgColor,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: isSelected ? iconColor : Colors.transparent,
//             width: 2,
//           ),
//         ),
//         child: Column(
//           children: [
//             Image.asset(imagePath, width: 48, height: 48),
//             const SizedBox(height: 8),
//             Text(
//               'Iam $label',
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: iconColor,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     required String label,
//     required String hint,
//     required IconData icon,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: Colors.black87,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(color: Colors.grey.shade300),
//           ),
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: hint,
//               hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
//               prefixIcon: Icon(icon, color: Colors.grey.shade400, size: 20),
//               border: InputBorder.none,
//               contentPadding: const EdgeInsets.symmetric(
//                 horizontal: 16,
//                 vertical: 14,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDropdownField({
//     required String label,
//     required String hint,
//     required IconData icon,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: Colors.black87,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(color: Colors.grey.shade300),
//           ),
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//           child: Row(
//             children: [
//               Icon(icon, color: Colors.grey.shade400, size: 20),
//               const SizedBox(width: 12),
//               Text(
//                 hint,
//                 style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
//               ),
//               const Spacer(),
//               Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade400),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:dating_app/views/languages/select_language_screen.dart';
import 'package:flutter/material.dart';

class SetProfile extends StatefulWidget {
  const SetProfile({super.key});

  @override
  State<SetProfile> createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
  String? selectedGender;

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
          'Set Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildTextField(
                label: 'Name',
                hint: 'Enter your name',
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                label: 'Nick Name',
                hint: 'Enter Nick name',
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 16),
              _buildDropdownField(
                label: 'Who are you?',
                hint: 'Select',
                icon: Icons.transgender,
              ),
              const SizedBox(height: 16),
              _buildDropdownField(
                label: 'Date of birth',
                hint: 'Select',
                icon: Icons.calendar_today_outlined,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                label: 'Referral code',
                hint: 'Referral code',
                icon: Icons.card_giftcard_outlined,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    _showGenderSelectionDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFE0A62),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void _showGenderSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Select your gender',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildGenderOption(
                          'Girl',
                          'assets/womenicon.png',
                          Colors.pink.shade100,
                          Colors.pink,
                          selectedGender == 'Girl',
                          () {
                            setState(() {
                              selectedGender = 'Girl';
                            });
                          },
                        ),
                        _buildGenderOption(
                          'Boy',
                          'assets/manicon.png',
                          Colors.blue.shade100,
                          Colors.blue,
                          selectedGender == 'Boy',
                          () {
                            setState(() {
                              selectedGender = 'Boy';
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade50,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.yellow.shade200),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.orange.shade400,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Select your Original Gender otherwise your account will be block',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.orange.shade700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: selectedGender != null
                            ? () {
                                Navigator.pop(context);
                                // Navigate to avatar selection screen with gender
                                _showAvatarSelectionScreen(context);
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFE0A62),
                          disabledBackgroundColor: Colors.grey.shade300,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
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
      },
    );
  }

  void _showAvatarSelectionScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AvatarSelectionScreen(gender: selectedGender!),
      ),
    );
  }

  Widget _buildGenderOption(
    String label,
    String imagePath,
    Color bgColor,
    Color iconColor,
    bool isSelected,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? iconColor : Colors.transparent,
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Image.asset(imagePath, width: 48, height: 48),
            const SizedBox(height: 8),
            Text(
              'Iam $label',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
              prefixIcon: Icon(icon, color: Colors.grey.shade400, size: 20),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField({
    required String label,
    required String hint,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            children: [
              Icon(icon, color: Colors.grey.shade400, size: 20),
              const SizedBox(width: 12),
              Text(
                hint,
                style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
              ),
              const Spacer(),
              Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade400),
            ],
          ),
        ),
      ],
    );
  }
}

// Avatar Selection Screen
class AvatarSelectionScreen extends StatefulWidget {
  final String gender;

  const AvatarSelectionScreen({super.key, required this.gender});

  @override
  State<AvatarSelectionScreen> createState() => _AvatarSelectionScreenState();
}

class _AvatarSelectionScreenState extends State<AvatarSelectionScreen> {
  int? selectedAvatarIndex;

  List<String> get avatarPaths {
    if (widget.gender == 'Girl') {
      return [
        'assets/girlimage1.png',
        'assets/girlimage2.png',
        'assets/girlimage3.png',
        'assets/girlimage4.png',
      ];
    } else {
      return [
        'assets/boyimage1.png',
        'assets/boyimage2.png',
        'assets/boyimage3.png',
        'assets/boyimage1.png',
      ];
    }
  }

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
          'Select your Avatar',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1,
                  ),
                  itemCount: avatarPaths.length,
                  itemBuilder: (context, index) {
                    return _buildAvatarOption(index);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: selectedAvatarIndex != null
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectLanguageScreen(),
                            ),
                          );
                          // Handle avatar selection
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   SnackBar(
                          //     content: Text(
                          //       'Selected: ${widget.gender} Avatar ${selectedAvatarIndex! + 1}',
                          //     ),
                          //   ),
                          // );
                          // Navigate to next screen or save data
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFE0A62),
                    disabledBackgroundColor: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatarOption(int index) {
    final isSelected = selectedAvatarIndex == index;
    final isGirl = widget.gender == 'Girl';

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAvatarIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected
                ? (isGirl ? Colors.pink : Colors.pink)
                : Colors.transparent,
            width: 3,
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade100,
              ),
              child: Center(
                child: Image.asset(avatarPaths[index], fit: BoxFit.cover),
              ),
            ),
            if (isSelected)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: isGirl ? Colors.pink : Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Icon(Icons.check, size: 14, color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
