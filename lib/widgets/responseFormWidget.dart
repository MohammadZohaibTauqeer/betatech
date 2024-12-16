import 'package:flutter/material.dart';

Widget ResponseFormSection() {
  return Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Left Placeholder: Video or Media Box
        Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(2, 4),
              ),
            ],
          ),
          child: Center(
            child: Icon(Icons.play_arrow, color: Colors.white, size: 50),
          ),
        ),
        SizedBox(width: 40),

        // Right Section: Form
        Column(
          children: [
            Text(
              "We'll Respond To You In An Hour.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              width: 500,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    // Row containing two text fields
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 250,
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              filled: true,
                              fillColor: Colors.orange.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 250,
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email Address",
                              filled: true,
                              fillColor: Colors.orange.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: "Write Message . . .",
                        filled: true,
                        fillColor: Colors.orange.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_outward, color: Colors.white),
                        label: Text("SEND MESSAGE"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
