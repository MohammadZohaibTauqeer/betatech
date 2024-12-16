import 'package:betatech/appColors/colors.dart';
import 'package:betatech/widgets/bottomBarWidget.dart';
import 'package:betatech/widgets/contactInfoSectionWidget.dart';
import 'package:betatech/widgets/headerWidget.dart';
import 'package:betatech/widgets/responseFormWidget.dart';
import 'package:betatech/widgets/searchBar.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  String activeLink = 'Contact'; // Default active link

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
                  HeaderContent(context, "Contact Us", "Home  >  Contact"),
                  SizedBox(
                    height: size.height * .07,
                  ),
                ]),
          ),

          const CustomCard(),

          // Response Form Section
          // ResponseFormSection(),
          // SizedBox(height: 30),
          // // Contact Info Section
          // ContactInfoSection(),
          const SizedBox(
            height: 110,
          ),
          FooterBar()
        ])));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Adjust as needed
      height: 300, // Adjust as needed
      decoration: BoxDecoration(
          color: Color(0xFFC4C4C4),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 10)),
      child: Center(
        child: Container(
            width: 50, // Circle size
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: PlayButton()
            //  const Icon(
            //   Icons.play_arrow,
            //   color: Colors.orangeAccent,
            //   size: 24,
            // ),
            ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80, // Outer circle size
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white, // Inner circle color
        shape: BoxShape.circle,

        border: Border.all(
          color: Color(0xFFFFFFFF), // White color
          width: 8, // Border width
        ),
      ),
      child: Center(
        child: Icon(
          Icons.play_arrow,
          size: 30, // Play icon size
          color: Colors.orange, // Orange play button
        ),
      ),
    );
  }
}
