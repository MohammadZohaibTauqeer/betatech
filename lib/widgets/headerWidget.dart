import 'package:betatech/appColors/colors.dart';
import 'package:flutter/material.dart';


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