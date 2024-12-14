import 'package:flutter/material.dart';

class FeedbackWidget extends StatelessWidget {
  const FeedbackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Color(0xFFF6F6F6),
      ),
      height: 370,
      width: 1200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left Section: Text and Form
          Expanded(
            flex: 5,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Subscribe Now
                  const Text(
                    'Subscribe Now',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFEB6F2D),
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Subscriber to Our Newsletter
                  RichText(
                    text: const TextSpan(
                      text: 'Subscriber To ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Our',
                          style: TextStyle(
                            color: Color(0xFFEB6F2D), //
                          ),
                        ),
                        TextSpan(text: '\nNewsletter'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Email Input and Subscribe Button
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 400,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(top: 33),
                            border: InputBorder.none,
                            hintText: 'Email Address',
                            hintStyle: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                            // Add button inside the text field
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 22.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your functionality
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFEB6F2D),
                                  // padding: const EdgeInsets.symmetric(
                                  //     horizontal: 24, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: const Text(
                                  'Subscribe',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Already a member? Sign in
                  Row(
                    children: [
                      const Text(
                        'Already a member? ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigate to Sign-In page
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFEB6F2D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Right Section: Image
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/woman.png', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
