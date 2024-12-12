import 'package:betatech/appColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bottomBarWidget.dart';
import '../widgets/feedBackWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String activeLink = 'Home'; // Default active link

  void setActiveLink(String title) {
    setState(() {
      activeLink = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xFFE3E3E3), width: 1.0),
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xFFFBFBFB),
                ),
                height: 75,
                width: 1818,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: SizedBox(
                            width: 55,
                            height: 55,
                            child: Center(
                              child: Image.asset(
                                'assets/btsLogoNew.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 224),
                        Wrap(
                          children: [
                            NavLink(
                              title: 'Home',
                              isActive: activeLink == 'Home',
                              onTap: () => setActiveLink('Home'),
                            ),
                            NavLink(
                              title: 'Services',
                              isActive: activeLink == 'Services',
                              onTap: () => setActiveLink('Services'),
                            ),
                            NavLink(
                              title: 'About Us',
                              isActive: activeLink == 'About Us',
                              onTap: () => setActiveLink('About Us'),
                            ),
                            NavLink(
                              title: 'Portfolio',
                              isActive: activeLink == 'Portfolio',
                              onTap: () => setActiveLink('Portfolio'),
                            ),
                            NavLink(
                              title: 'Review',
                              isActive: activeLink == 'Review',
                              onTap: () => setActiveLink('Review'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Container(
                          height: 50,
                          width: 190,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFFEB6F2D), // Updated to #EB6F2D
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text('Contact Us'),
                          ),
                        ),
                        const SizedBox(width: 14),
                        // Search Icon
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: const Color(0xFFEEEEEE),
                          child: IconButton(
                            onPressed: () {
                              // Add search functionality
                            },
                            icon: const Icon(Icons.search),
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(width: 13),
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: const Color(0xFFC4C4C4),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 170.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Transforming ',
                              style: GoogleFonts.poppins(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEB6F2D), // Orange color
                              ),
                            ),
                            TextSpan(
                              text: 'Your Ideas \ninto ',
                              style: GoogleFonts.poppins(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.black, // Black color
                              ),
                            ),
                            TextSpan(
                              text: 'Stunning Designs',
                              style: GoogleFonts.poppins(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEB6F2D), // Orange color
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20), // Space between text and image
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEEEEE),
                            borderRadius:
                                BorderRadius.circular(50), // Rounded edges
                          ),
                          height: 52,
                          width: 271,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Get your design',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black, // Black text color
                                ),
                              ),
                              const SizedBox(
                                width: 55,
                              ),
                              Container(
                                  width: 42,
                                  height: 42,
                                  decoration: const BoxDecoration(
                                    color: Colors
                                        .white, // White background for the icon
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_outward, // Arrow icon
                                    color: Color(
                                        0xFF8F8F8F), // Updated arrow color to #8F8F8F
                                    size: 15, // Icon size
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 52,
                          width: 271,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white, // Background color
                            borderRadius:
                                BorderRadius.circular(50), // Rounded edges
                            border: Border.all(
                              color:
                                  const Color(0xFFE3E3E3), // Light border color
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Text on the left
                              Text(
                                '10k+ Client',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black, // Black text color
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 95.0),
                                        child: Container(
                                          width: 39,
                                          height: 39,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF5F5F5),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.1), // Shadow color
                                                blurRadius:
                                                    5, // Softness of the shadow
                                                spreadRadius:
                                                    1, // Spread radius
                                                offset: const Offset(0,
                                                    3), // Horizontal and vertical offset
                                              ),
                                            ], // Slightly lighter grey color
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.add, // Plus icon
                                              color: Color(
                                                  0xFF8F8F8F), // Grey icon color
                                              size: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // First Circle with Image
                                      Container(
                                        width: 39,
                                        height: 39,
                                        decoration: BoxDecoration(
                                          color: const Color(
                                              0xFFD6D6D6), // Light grey color
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                  0.1), // Shadow color
                                              blurRadius:
                                                  5, // Softness of the shadow
                                              spreadRadius: 1, // Spread radius
                                              offset: const Offset(0,
                                                  3), // Horizontal and vertical offset
                                            ),
                                          ],
                                        ),
                                        child: ClipOval(
                                          child: Image.asset(
                                            'assets/person1.jpg', // Path to your image
                                            fit: BoxFit
                                                .cover, // Ensures the image fills the circle
                                            width: 39,
                                            height: 39,
                                          ),
                                        ),
                                      ),

                                      // Second Circle with Image
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 32.0),
                                        child: Container(
                                          width: 39,
                                          height: 39,
                                          decoration: BoxDecoration(
                                            color: const Color(
                                                0xFFD6D6D6), // Light grey color
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.1), // Shadow color
                                                blurRadius:
                                                    5, // Softness of the shadow
                                                spreadRadius:
                                                    1, // Spread radius
                                                offset: const Offset(0,
                                                    3), // Horizontal and vertical offset
                                              ),
                                            ],
                                          ),
                                          child: ClipOval(
                                            child: Image.asset(
                                              'assets/person1.jpg', // Path to your image
                                              fit: BoxFit
                                                  .cover, // Ensures the image fills the circle
                                              width: 39,
                                              height: 39,
                                            ),
                                          ),
                                        ),
                                      ),

                                      // Third Circle with Image
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 65.0),
                                        child: Container(
                                          width: 39,
                                          height: 39,
                                          decoration: BoxDecoration(
                                            color: const Color(
                                                0xFFD6D6D6), // Light grey color
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.1), // Shadow color
                                                blurRadius:
                                                    5, // Softness of the shadow
                                                spreadRadius:
                                                    1, // Spread radius
                                                offset: const Offset(0,
                                                    3), // Horizontal and vertical offset
                                              ),
                                            ],
                                          ),
                                          child: ClipOval(
                                            child: Image.asset(
                                              'assets/person1.jpg', // Path to your image
                                              fit: BoxFit
                                                  .cover, // Ensures the image fills the circle
                                              width: 39,
                                              height: 39,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // First Card
                        Container(
                          width: 270,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(
                                0xFFF5F5F5), // Light background color
                            borderRadius:
                                BorderRadius.circular(20), // Rounded edges
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Creative Expertise in\nInnovative Design',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                  height: 10), // Space between text and image
                              Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Center(
                                  child: Image.asset(
                                    'assets/flames.png', // Path to your image
                                    height: 80, // Adjust as needed
                                    width: 100, // Adjust as needed
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  height: 10), // Space between image and icon
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_outward,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                            width: 20), // Space between the two cards
                        // Second Card
                        Container(
                          width: 270,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(
                                0xFFF5F5F5), // Light background color
                            borderRadius:
                                BorderRadius.circular(20), // Rounded edges
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tailored Solutions:\nCustomized for You',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                  height: 10), // Space between text and image
                              Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Center(
                                  child: Image.asset(
                                    'assets/swirling.png', // Path to your image
                                    height: 80, // Adjust as needed
                                    width: 100, // Adjust as needed
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  height: 10), // Space between image and icon
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_outward,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image Asset
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Image.asset(
                        'assets/workstation.png',
                        height: 500,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 50),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // "About Us" text
                    Container(
                      padding: const EdgeInsets.all(
                          4), // Optional padding around the text
                      child: const Text(
                        'About Us',
                        style: TextStyle(
                          fontFamily: 'Poppins', // Font family
                          fontSize: 14, // Font size
                          fontWeight: FontWeight.w400, // Font weight
                          height: 1.5, // Line height equivalent to 30px
                        ),
                        textAlign: TextAlign.left, // Align text to the left
                      ),
                    ),
                    const SizedBox(height: 16), // Space between the two texts
                    // "Unleashing the Full Potential..." text
                    const Text(
                      'Unleashing the Full Potential of Your Brand\nwith Creativity and Strategic Vision',
                      style: TextStyle(
                        fontFamily: 'Poppins', // Font family
                        fontSize: 64, // Font size
                        fontWeight: FontWeight.w400, // Font weight
                        height: 1.5, // Line height equivalent to 96px
                        color: Color(0xFF202020), // Text color
                        decoration: TextDecoration.none, // No underline
                      ),
                      textAlign: TextAlign.left, // Align text to the left
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Left: Image Section
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                      child: Image.asset(
                        'assets/maskgroup.png', // Replace with the path to your image
                        fit: BoxFit.cover, // Ensure the image fills the space
                        height: 300, // Adjust height as needed
                      ),
                    ),
                  ),
                  const SizedBox(width: 40), // Space between the image and text
                  // Right: Text Section
                  const Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Heading
                        Text(
                          'CRAFTING BRILLIANCE TOGETHER',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFEB6F2D), // Orange color
                          ),
                        ),
                        SizedBox(height: 10),
                        // Tags Row
                        Wrap(
                          spacing: 8, // Space between tags
                          runSpacing: 8, // Space between rows of tags
                          children: [
                            Chip(
                              label: Text('Innovate'),
                              backgroundColor: Color(0xFFF2F2F2),
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Chip(
                              label: Text('Create'),
                              backgroundColor: Color(0xFFDEDEDE),
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Chip(
                              label: Text('Elevate'),
                              backgroundColor: Color(0xFFDEDEDE),
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Chip(
                              label: Text('Ideas'),
                              backgroundColor: Color(0xFFDEDEDE),
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Chip(
                              label: Text('Imagination'),
                              backgroundColor: Color(0xFFDEDEDE),
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Description Text
                        Text(
                          'Our mission is to unleash the full potential of your brand, combining creativity with strategic vision to achieve extraordinary results.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.5, // Line height
                            color: Color(0xFF202020), // Dark text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Section
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Main Heading
                        RichText(
                          text: const TextSpan(
                            text: 'Services We ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'Provide',
                                style: TextStyle(
                                  color: Color(0xFFEB6F2D), // Orange color
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Subtext
                        const Text(
                          'We offer a wide range of design services to meet all your creative needs:',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            color: Color(0xFF202020),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Image Section with Play Button
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/desk.png', // Replace with your image path
                                fit: BoxFit.cover,
                                height: 200,
                                width: double.infinity,
                              ),
                            ),
                            Positioned(
                              right: -8,
                              bottom: 40,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  // Background white circle
                                  Container(
                                    width:
                                        65, // Larger than the foreground circle
                                    height: 65,
                                    decoration: const BoxDecoration(
                                      color: Colors
                                          .white, // White color for background
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  // Foreground orange circle with icon
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFEB6F2D), // Orange color
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 24,
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
                  const SizedBox(width: 20), // Space between the sections
                  // Right Section
                  Expanded(
                    flex: 5,
                    child: Wrap(
                      spacing: 20, // Space between cards horizontally
                      runSpacing: 20, // Space between cards vertically
                      children: [
                        // Card 1
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 95),
                          child: Container(
                            width: 180,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color:
                                  const Color(0xFFEB6F2D), // Orange background
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.design_services,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Social Media Design and SEO',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Creating compelling visuals for your social media platforms is essential.',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Card 2
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 95),
                          child: ServiceCard(
                            icon: Icons.web,
                            title: 'Web development and UI/UX',
                            description:
                                'Creating user interfaces and experiences that are intuitive and engaging.',
                          ),
                        ),
                        // Card 3
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 95),
                          child: ServiceCard(
                            icon: Icons.cloud,
                            title: 'SaaS-based solutions',
                            description:
                                'Creating eye-catching graphics for your brand identity and target audience.',
                          ),
                        ),
                        // Card 4
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 95),
                          child: ServiceCard(
                            icon: Icons.video_library,
                            title: 'Video Production and Editing',
                            description:
                                'Producing high-quality videos that tell your brand story and engage your audience.',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Left Section: Image
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        // Background Image
                        Padding(
                          padding: const EdgeInsets.only(right: 150.0),
                          child: Image.asset(
                            'assets/rectangle.png', // Replace with your background image path
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Foreground Image
                        Positioned(
                          right: 0, // Adjust the position as needed
                          bottom: 120, // Adjust the position as needed
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20), // Rounded corners for the foreground image
                            child: Image.asset(
                              'assets/bnwNomads.png', // Replace with your foreground image path
                              fit: BoxFit.cover,
                              height: 300, // Adjust height as needed
                              width: 350, // Adjust width as needed
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20), // Space between image and text
                  // Right Section: Text
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 78.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Heading
                          Row(
                            children: [
                              const Text(
                                'Who ',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFEB6F2D), // Orange color
                                ),
                              ),
                              const Text(
                                'We Are ?',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF202020), // Dark text color
                                ),
                              ),
                              const SizedBox(width: 12),
                              Image.asset(
                                'assets/vector.png', // Replace with your background image path
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          // Subtext
                          const Text(
                            'We are committed to delivering comprehensive design solutions that enhance your brand image. Our company has a mission, including:',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xFF202020), // Dark text color
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Mission Points
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MissionPoint(
                                imagePath: "assets/pointer.png",
                                text:
                                    'Inspire brands through creative excellence.',
                              ),
                              SizedBox(height: 10),
                              MissionPoint(
                                imagePath: "assets/pointer.png",
                                text:
                                    'Empower businesses by leveraging the transformative power of design.',
                              ),
                              SizedBox(height: 10),
                              MissionPoint(
                                imagePath: "assets/pointer.png",
                                text:
                                    'Connect with audiences on a deeper level through innovative visual storytelling.',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 150,
            ),

            const Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Spreads items evenly
              children: [
                // First Column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '20',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF202020), // Dark text color
                      ),
                    ),
                    SizedBox(height: 8), // Spacing between number and label
                    Text(
                      'Year Experience',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9E9E9E), // Light grey color
                      ),
                    ),
                  ],
                ),
                // Second Column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '296',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF202020), // Dark text color
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Business',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9E9E9E), // Light grey color
                      ),
                    ),
                  ],
                ),
                // Third Column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '36',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF202020), // Dark text color
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Expert',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9E9E9E), // Light grey color
                      ),
                    ),
                  ],
                ),
                // Fourth Column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '106 K+',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF202020), // Dark text color
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Happy Client',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9E9E9E), // Light grey color
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 150),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Heading
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Recent ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFEB6F2D), // Orange color for "Recent"
                      ),
                      children: [
                        TextSpan(
                          text: 'Project',
                          style: TextStyle(
                            color: Color(0xFF202020), // Dark text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Row with navigation buttons and cards
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Left Navigation Button
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          border: Border.all(
                            color: const Color(0xFFEB6F2D), // Orange border
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xFFEB6F2D), // Orange icon
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    // Cards
                    const Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Center(
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // Center the cards
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(220, 80, 0, 0),
                                child: HoverableProjectCard(
                                  title: 'Social Media Design Solutions',
                                  description:
                                      'We create effective content strategies to attract your target audience...',
                                  gradientStart: Colors.black54,
                                  gradientEnd: Colors.black,
                                ),
                              ),
                              SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 70.0),
                                child: HoverableProjectCard(
                                  title: 'Marketing Design Services',
                                  description:
                                      'Well-designed marketing materials that strengthen your brand...',
                                  gradientStart: Colors.black54,
                                  gradientEnd: Colors.black,
                                ),
                              ),
                              SizedBox(width: 20),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                                child: HoverableProjectCard(
                                  title: 'Website Design Solutions',
                                  description:
                                      'A well-designed website that increases brand credibility...',
                                  gradientStart: Colors.black54,
                                  gradientEnd: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    // Right Navigation Button
                    Padding(
                      padding: const EdgeInsets.only(right: 100.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          border: Border.all(
                            color: const Color(0xFFEB6F2D), // Orange border
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFEB6F2D), // Orange icon
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 100,
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Heading
                  RichText(
                    text: TextSpan(
                      text: 'Best Pricing ',
                      style: GoogleFonts.poppins(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Plan',
                          style: GoogleFonts.poppins(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFEB6F2D), // Orange color
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Pricing Plans Row
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PricingCard(
                        planName: 'Regular',
                        price: '\$49',
                        features: [
                          'Basic Branding Package',
                          'Social Media Management',
                          'Performance Reports'
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70.0),
                        child: PricingCard(
                          planName: 'Gold',
                          price: '\$69',
                          features: [
                            'Comprehensive Branding',
                            'Enhanced Social Media Management',
                            'SEO & Website Optimization'
                          ],
                        ),
                      ),
                      PricingCard(
                        planName: 'Platinum',
                        price: '\$79',
                        features: [
                          'Full Branding Suite',
                          'Advanced Digital Marketing',
                          'Custom Analytics & Reporting'
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 110,
            ),
            const FeedbackWidget(),

            SizedBox(
              height: 110,
            ),
            FooterBar()
          ],
        ),
      ),
    );
  }
}

class NavLink extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap; // Callback to handle tap events

  const NavLink({
    super.key,
    required this.title,
    this.isActive = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
            decorationColor: Colors.black,
            color: isActive
                ? ColorsManager.activeTextColor
                : ColorsManager.inactiveTextColor,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5), // Light grey background
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: const Color(0xFFEB6F2D), // Orange icon color
            size: 30,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF202020),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF202020),
            ),
          ),
        ],
      ),
    );
  }
}

class MissionPoint extends StatelessWidget {
  final String imagePath; // Path to the image
  final String text; // Text to display

  const MissionPoint({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image
        ClipRRect(
          borderRadius:
              BorderRadius.circular(20), // Rounded corners for the image
          child: Image.asset(
            imagePath, // Path to your image
            height: 30, // Adjust height as needed
            width: 30, // Adjust width as needed
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10), // Space between image and text
        // Text
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 1.5, // Line height
              color: Color(0xFF202020), // Dark text color
            ),
          ),
        ),
      ],
    );
  }
}

class HoverableProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final Color gradientStart;
  final Color gradientEnd;

  const HoverableProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.gradientStart,
    required this.gradientEnd,
  }) : super(key: key);

  @override
  _HoverableProjectCardState createState() => _HoverableProjectCardState();
}

class _HoverableProjectCardState extends State<HoverableProjectCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovered = true;
          _controller.forward();
        });
      },
      onExit: (event) {
        setState(() {
          _isHovered = false;
          _controller.reverse();
        });
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _animation.value,
            child: Container(
              width: 250,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  colors: [widget.gradientStart, widget.gradientEnd],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: _isHovered
                    ? [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ]
                    : [],
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    widget.description,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PricingCard extends StatelessWidget {
  final String planName;
  final String price;
  final List<String> features;

  const PricingCard({
    Key? key,
    required this.planName,
    required this.price,
    required this.features,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFE3E3E3), // Light border color
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Plan Name
          Row(
            children: [
              Container(
                width:
                    50, // Adjust container width to match the icon's original size
                height:
                    50, // Adjust container height to match the icon's original size
                child: Image.asset(
                  'assets/newthing.png', // Replace with your image asset path
                  fit: BoxFit
                      .contain, // Ensures the image fits within the container
                ),
              ),
              const SizedBox(width: 10),
              Text(
                planName,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Price
          RichText(
            text: TextSpan(
              text: price,
              style: GoogleFonts.poppins(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: '/Monthly',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Features
          ...features.map(
            (feature) => Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 30, // Adjust circle size as needed
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(
                            0xFFE0E0E0), // Light grey color for border
                        width: 1.5, // Border thickness
                      ),
                      color: Colors.white, // Background color of the circle
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.check, // Checkmark icon
                        color: Colors.black, // Black color for the icon
                        size: 18, // Adjust icon size
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    feature,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Button
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEB6F2D), // Orange color
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'CHOOSE PACKAGE',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
