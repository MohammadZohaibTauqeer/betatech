import 'package:betatech/appColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE3E3E3), width: 1.0),
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFFBFBFB),
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
                        Row(
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
                    Row(
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
            SizedBox(
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
                                color: Color(0xFFEB6F2D), // Orange color
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
                                color: Color(0xFFEB6F2D), // Orange color
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20), // Space between text and image
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
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
                              SizedBox(
                                width: 55,
                              ),
                              Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // White background for the icon
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.arrow_outward, // Arrow icon
                                    color: Color(
                                        0xFF8F8F8F), // Updated arrow color to #8F8F8F
                                    size: 15, // Icon size
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 52,
                          width: 271,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white, // Background color
                            borderRadius:
                                BorderRadius.circular(50), // Rounded edges
                            border: Border.all(
                              color: Color(0xFFE3E3E3), // Light border color
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
                              SizedBox(
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
                                            color: Color(0xFFF5F5F5),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.1), // Shadow color
                                                blurRadius:
                                                    5, // Softness of the shadow
                                                spreadRadius:
                                                    1, // Spread radius
                                                offset: Offset(0,
                                                    3), // Horizontal and vertical offset
                                              ),
                                            ], // Slightly lighter grey color
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
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
                                          color: Color(
                                              0xFFD6D6D6), // Light grey color
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                  0.1), // Shadow color
                                              blurRadius:
                                                  5, // Softness of the shadow
                                              spreadRadius: 1, // Spread radius
                                              offset: Offset(0,
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
                                            color: Color(
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
                                                offset: Offset(0,
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
                                            color: Color(
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
                                                offset: Offset(0,
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
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // First Card
                        Container(
                          width: 270,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), // Light background color
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
                              SizedBox(
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
                              SizedBox(
                                  height: 10), // Space between image and icon
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.arrow_outward,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20), // Space between the two cards
                        // Second Card
                        Container(
                          width: 270,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), // Light background color
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
                              SizedBox(
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
                              SizedBox(
                                  height: 10), // Space between image and icon
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
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
                      decoration: BoxDecoration(
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
            SizedBox(height: 50),

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
                      padding:
                          EdgeInsets.all(4), // Optional padding around the text
                      child: Text(
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
                    SizedBox(height: 16), // Space between the two texts
                    // "Unleashing the Full Potential..." text
                    Text(
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
            SizedBox(height: 60),
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
                  SizedBox(width: 40), // Space between the image and text
                  // Right: Text Section
                  Expanded(
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
                          text: TextSpan(
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
                        SizedBox(height: 10),
                        // Subtext
                        Text(
                          'We offer a wide range of design services to meet all your creative needs:',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            color: Color(0xFF202020),
                          ),
                        ),
                        SizedBox(height: 20),
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
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .white, // White color for background
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  // Foreground orange circle with icon
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEB6F2D), // Orange color
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
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
                  SizedBox(width: 20), // Space between the sections
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
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xFFEB6F2D), // Orange background
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 95),
                          child: ServiceCard(
                            icon: Icons.web,
                            title: 'Web development and UI/UX',
                            description:
                                'Creating user interfaces and experiences that are intuitive and engaging.',
                          ),
                        ),
                        // Card 3
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 95),
                          child: ServiceCard(
                            icon: Icons.cloud,
                            title: 'SaaS-based solutions',
                            description:
                                'Creating eye-catching graphics for your brand identity and target audience.',
                          ),
                        ),
                        // Card 4
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 95),
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
                  SizedBox(width: 20), // Space between image and text
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
                              Text(
                                'Who ',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFEB6F2D), // Orange color
                                ),
                              ),
                              Text(
                                'We Are ?',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF202020), // Dark text color
                                ),
                              ),
                              SizedBox(width: 12),
                              Image.asset(
                                'assets/vector.png', // Replace with your background image path
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          // Subtext
                          Text(
                            'We are committed to delivering comprehensive design solutions that enhance your brand image. Our company has a mission, including:',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xFF202020), // Dark text color
                            ),
                          ),
                          SizedBox(height: 20),
                          // Mission Points
                          Column(
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
            )
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
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5), // Light grey background
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Color(0xFFEB6F2D), // Orange icon color
            size: 30,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF202020),
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
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
        SizedBox(width: 10), // Space between image and text
        // Text
        Expanded(
          child: Text(
            text,
            style: TextStyle(
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


          // Row(
          //           children: [
          //             Text.rich(
          //               TextSpan(
          //                 children: [
          //                   TextSpan(
          //                     text: 'Transforming ',
          //                     style: GoogleFonts.poppins(
          //                       fontSize: 50,
          //                       fontWeight: FontWeight.w700,
          //                       color: Color(
          //                           0xFFEB6F2D), // Color for "Transforming"
          //                     ),
          //                   ),
          //                   TextSpan(
          //                     text: 'Your Ideas \ninto ',
          //                     style: GoogleFonts.poppins(
          //                       fontSize: 50,
          //                       fontWeight: FontWeight.w700,
          //                       color: Colors.black,
          //                     ),
          //                   ),
          //                   TextSpan(
          //                     text: 'Stunning Designs',
          //                     style: GoogleFonts.poppins(
          //                       fontSize: 50,
          //                       fontWeight: FontWeight.w700,
          //                       color:
          //                           Color(0xFFEB6F2D), // Color for "Stunning"
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             const SizedBox(width: 10),
          //           ],
          //         ),