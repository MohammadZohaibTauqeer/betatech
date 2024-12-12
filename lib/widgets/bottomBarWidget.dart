import 'package:flutter/material.dart';

class FooterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF6F6F6), // Background color for the footer
      // padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo and description section
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 120.0, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/btsFooter.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      ' Some customers indicate that consumer responses\n to marketing have become less\n predictable',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF484848)),
                    ),
                  ],
                ),
              ),
              // Product section
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100.5, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Product',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF202020),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Logo Design\n\nGraphic Design\n\nWebsite Design\n\nMobile Design',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF484848),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              // Company section
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100.5, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Company',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF202020),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Services\n\nAbout Us\n\nProject\n\nCustomer',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF484848),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              // Quick Contact section
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100.5, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Quick Contact',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF202020),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      '+62 896 777 8907\n\nBetatechsolutions.com\n\nContact Us\n\nTerms Of Service',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF484848),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            color: Color(0xFFE0E0E0),
            thickness: 1,
            height: 40,
          ),
          // Footer bottom text
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Copyright @ 2025 Beta tech solutions All rights reserved',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF484848),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
