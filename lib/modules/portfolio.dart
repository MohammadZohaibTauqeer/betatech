import 'package:betatech/appColors/colors.dart';
import 'package:betatech/modules/home.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  String activeLink = 'Portfolio'; // Default active link

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
                SearchBar(
                context, 
                activeLink, 
                setActiveLink),
                SizedBox(height: size.height*.04,),
                HeaderContent(context, "Our Portfolio", "Home  >  Portfolio"),
                SizedBox(height: size.height*.07,),     
        ]),
      ),
      
      
      // Centered Uneven Grid Section
        Center(
          child: Container(
            margin: const EdgeInsets.all(50.0),
            width: size.width * .65,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.grey, Color(0XFFEB6F2D)],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Generation Of Wealth",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Marketing",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white24,
                                  child: Icon(
                                    Icons.arrow_outward,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ])
    ));
  }
}


Widget SearchBar(BuildContext context, String activeLink, Function(String) setActiveLink){
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

Widget HeaderContent(BuildContext context, String header, String content){
  return Column(
                  children: [
                    Center(child: Text(header, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)),),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(colors: [ Color(0XFFBF20FC), Color(0XFF077EEC)
                    ]),
                    //color: Colors.transparent,
                  ),
                  height:25,
                  width: 115,
                  child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: ColorsManager.headerColor),
                  height:25,
                  width: 115,
                    child: Center(
                      child: Text(
                        content, 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9
                          )
                                        ),
                    )
                  ),
                ),
              )
                ),
                  ],
                );
}