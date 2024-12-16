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
        child: Column(
        children: [
          Container(
            height: size.height*.37,
            color: ColorsManager.headerColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchBarWidget(
                context, 
                activeLink, 
                setActiveLink),
                SizedBox(height: size.height*.04,),
                HeaderContent(context, "Contact Us", "Home  >  Contact"),
                SizedBox(height: size.height*.07,),     
        ]),
      ),
                      // Response Form Section
                ResponseFormSection(),
                SizedBox(height: 30),
                // Contact Info Section
                ContactInfoSection(),
                SizedBox(
              height: 110,
            ),
            FooterBar()])
    ));
  }
}