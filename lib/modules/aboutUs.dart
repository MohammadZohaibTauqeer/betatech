import 'package:betatech/appColors/colors.dart';
import 'package:betatech/modules/home.dart';
import 'package:betatech/modules/portfolio.dart';
import 'package:betatech/widgets/bottomBarWidget.dart';
import 'package:betatech/widgets/feedBackWidget.dart';
import 'package:betatech/widgets/headerContent.dart';
import 'package:betatech/widgets/navLink.dart';
import 'package:betatech/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  String activeLink = 'About Us'; // Default active link

  void setActiveLink(String title) {
    setState(() {
      activeLink = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ColorsManager.backgroundColor,
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            height: size.height * .37,
            color: ColorsManager.headerColor,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  searchBar(context, activeLink, setActiveLink),
                  SizedBox(
                    height: size.height * .04,
                  ),
                  HeaderContent(context, "About Us", "Home  >  About Us"),
                  SizedBox(
                    height: size.height * .07,
                  ),
                ]),
          ),
          Stack(
            children: [
              Positioned(
                left: 200,
                top: -200,
                child: Image.asset(
                  'assets/orangegradient.png', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              // Text Overlay
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 391, vertical: 195),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ABOUT US",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFEB6F2D), // Orange color
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We’re Strategic Digital \nMarketing Agency",
                          style: GoogleFonts.poppins(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF17012C), // Dark color
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "In order to scale new customer acquisition and retention for\n"
                          "e-commerce brands, we work across the entire customer journey.\n"
                          "Our team has a successful track record of helping brands scale.",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF504E4E), // Subtle text color
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 570, // Set the width of the divider
                            height:
                                1, // Set the height (thickness) of the divider
                            color: const Color(
                                0xFFEAF3F8), // Set the divider color
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // SMS Marketing
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Icon Container
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/smsLogo.png', // Replace with your image path
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "94%",
                                      style: GoogleFonts.poppins(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(
                                            0xFF17012C), // Dark purple
                                      ),
                                    ),
                                    Text(
                                      "SMS MARKETING",
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: const Color(0xFF504E4E),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/coverMarketing.png', // Replace with your image path
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "65%",
                                      style: GoogleFonts.poppins(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(
                                            0xFF17012C), // Dark purple
                                      ),
                                    ),
                                    // Description Text
                                    Text(
                                      "COVER MARKETING",
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: const Color(0xFF504E4E),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 570, // Set the width of the divider
                                height:
                                    1, // Set the height (thickness) of the divider
                                color: const Color(
                                    0xFFEAF3F8), // Set the divider color
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 625.0),
                            child: Column(
                              children: [
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
                                                  color: Colors.black
                                                      .withOpacity(
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
                                                  color: Colors.black
                                                      .withOpacity(
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
                                                  color: Colors.black
                                                      .withOpacity(
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
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "1.5k Happy Clients",
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(
                                            0xFF17012C), // Text color
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // "ABOUT US" Button
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color(
                                0xFFEAF3F8), // Light blue background
                            borderRadius:
                                BorderRadius.circular(30), // Rounded corners
                          ),
                          child: Text(
                            "ABOUT US",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF17012C), // Text color
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        // Circular Button with Arrow
                        Container(
                          padding:
                              const EdgeInsets.all(12), // Padding for the arrow
                          decoration: const BoxDecoration(
                            color: Colors.black, // Dark purple background
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_outward, // Arrow icon
                            size: 20,
                            color: Colors.white, // White arrow color
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              // Background Gradient (Optional)

              // Text Content
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Smaller "WORK PROCESS" Text
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "W ",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFF6D2D)
                                  .withOpacity(0.1), // Faded orange color
                            ),
                          ),
                          TextSpan(
                            text: "O ",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFF6D2D)
                                  .withOpacity(0.2), // Faded orange color
                            ),
                          ),
                          TextSpan(
                            text: "R ",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFF6D2D)
                                  .withOpacity(0.3), // Faded orange color
                            ),
                          ),
                          TextSpan(
                            text: "K  ",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFF6D2D)
                                  .withOpacity(0.4), // Faded orange color
                            ),
                          ),
                          TextSpan(
                            text: "PROCESS",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFF6D2D)
                                  .withOpacity(0.6), // Faded orange color
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8), // Spacing between lines
                    // Larger "Our Working Process" Text
                    Text(
                      "Our Working Process",
                      style: GoogleFonts.poppins(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF17012C), // Dark purple
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                left: 450,
                top: -50,
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    'assets/orangegradient.png', // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 391, vertical: 195),
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/workingProcess.PNG', // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              // Background Image

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Positioned(
                    child: Image.asset(
                      'assets/RectangleGrey.png', // Replace with your image path
                      fit: BoxFit.cover,
                      width: 1500, // Set your desired width
                      height: 750, // Set your desired height
                    ),
                  ),
                ],
              ),

              // Overlay Content
              Padding(
                padding: const EdgeInsets.fromLTRB(391, 230, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Content
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // WHY CHOOSE US Header
                        Text(
                          "WHY CHOOSE US",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFF6D2D), // Orange color
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Main Title
                        Text(
                          "Why Choose Us",
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF17012C), // Dark purple
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Description
                        Text(
                          "It is a long established fact that a reader will be distracted\n"
                          "by the readable content of a page when looking at layout the\n"
                          "point of using lorem the is ipsum less normal.",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color(0xFF504E4E), // Subtle text color
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Features Section
                        Row(
                          children: [
                            // Feature 1
                            Column(
                              children: [
                                const Icon(
                                  Icons.bar_chart,
                                  color: Color(0xFF421C52),
                                  size: 36,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Business\nGrowth",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF17012C),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 24),
                            // Feature 2
                            Column(
                              children: [
                                const Icon(
                                  Icons.settings,
                                  color: Color(0xFF421C52),
                                  size: 36,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Technology\nConsultancy",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF17012C),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        // Contact Section
                        Row(
                          children: [
                            // Founder Info
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xFFEAF3F8),
                              child: Icon(
                                Icons.person,
                                color: Color(0xFF421C52),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ronald Richards",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF17012C),
                                  ),
                                ),
                                Text(
                                  "Co, Founder",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: const Color(0xFF504E4E),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 24),
                            // Call Us Section
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(0xFFEAF3F8),
                                  child: Icon(
                                    Icons.phone,
                                    color: Color(0xFF421C52),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Call Us Now",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xFF504E4E),
                                      ),
                                    ),
                                    Text(
                                      "+208-555-0112",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF17012C),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 150),
          Stack(
            children: [
              // Background with dots
              Container(
                height: 500,
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F8FF), // Light blue background
                ),
                child: const Stack(
                  children: [
                    // Dots
                    Positioned(
                      top: 50,
                      left: 30,
                      child: CircleAvatar(
                        radius: 2,
                        backgroundColor: Color(0xFFEB6F2D),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      right: 60,
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: Color(0xFFEB6F2D),
                      ),
                    ),

                    Positioned(
                      top: 200,
                      left: 100,
                      child: CircleAvatar(
                        radius: 2,
                        backgroundColor: Color(0xFFEB6F2D),
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      right: 150,
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: Color(0xFFEB6F2D),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 200,
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0xFFEB6F2D),
                      ),
                    ),
                  ],
                ),
              ),
              // Content
              Container(
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Section Header
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 65, 30, 0),
                      child: Text(
                        "TESTIMONIALS",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFF6D2D), // Orange color
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                      child: Text(
                        "People Say About Us",
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF17012C), // Dark purple
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    // Testimonial Cards
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _testimonialCard(
                          rating: 5,
                          feedback:
                              "When an unknown printer took away galley of type awver awnd there are scrambled it to make a type many but also the leap into",
                          name: "Kristin Watson",
                          role: "Web Designer",
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: _testimonialCard(
                            rating: 5,
                            feedback:
                                "When an unknown printer took away galley of type awver awnd there are scrambled it to make a type many but also the leap into",
                            name: "Kristin Watson",
                            role: "Web Designer",
                          ),
                        ),
                        _testimonialCard(
                          rating: 5,
                          feedback:
                              "When an unknown printer took away galley of type awver awnd there are scrambled it to make a type many but also the leap into",
                          name: "Kristin Watson",
                          role: "Web Designer",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 110,
          ),
          const FeedbackWidget(),
          const SizedBox(
            height: 110,
          ),
          FooterBar()
        ])));
  }
}

Widget _testimonialCard({
  required int rating,
  required String feedback,
  required String name,
  required String role,
}) {
  return Container(
    width: 300,
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          blurRadius: 6,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Rating Stars
        Row(
          children: List.generate(
            rating,
            (index) => const Icon(
              Icons.star,
              color: Colors.orange,
              size: 20,
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Feedback
        Text(
          feedback,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: const Color(0xFF504E4E), // Subtle text color
            height: 1.5,
          ),
        ),
        const SizedBox(height: 16),
        // Quote Icon
        const Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.format_quote,
            size: 32,
            color: Color(0xFFFF6D2D), // Orange color
          ),
        ),
        const SizedBox(height: 16),
        // User Information
        Row(
          children: [
            // Profile Circle
            const CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFFEAF3F8), // Light grey
              child: Icon(
                Icons.person,
                size: 24,
                color: Color(0xFF504E4E),
              ),
            ),
            const SizedBox(width: 12),
            // User Name and Role
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF17012C), // Dark purple
                  ),
                ),
                Text(
                  role,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xFF504E4E), // Subtle text color
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
