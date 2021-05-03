import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_screen/assets/colors.dart';
import 'package:login_screen/assets/textstyle.dart';

class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  color: darkBlackColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Text(
                    "FIT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.0),
                  ),
                ),
              ),
              Container(child: Text("60fit.io")),
              Container(
                  width: 275.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      "Start you 60 second challenge, every day!",
                      textAlign: TextAlign.center,
                      style: signHeader,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
