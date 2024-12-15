import 'package:betatech/modules/home.dart';
import 'package:flutter/material.dart';

Widget SearchBarWidget(BuildContext context, String activeLink, Function(String) setActiveLink){
  return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
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
            );
}

