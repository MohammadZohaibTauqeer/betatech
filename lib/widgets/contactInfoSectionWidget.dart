import 'package:flutter/material.dart';

Widget ContactInfoSection() {
  return Container(
    margin: EdgeInsets.only(top: 40),
    padding: EdgeInsets.all(20),
    color: Colors.grey.shade200,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 250,
          width: 400,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(right: 30),
          decoration: BoxDecoration(
            color: Colors.orange.shade400,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Contact Info",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.location_pin, color: Colors.white),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Gregory Cartwright, 4059 Carling Avenue, Ugglebarnby",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.phone, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "+6108-666-0112",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "info@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}