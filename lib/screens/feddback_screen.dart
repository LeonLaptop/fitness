import 'package:flutter/material.dart';
import 'package:login_screen/assets/colors.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Screen"),
        backgroundColor: darkBlackColor,
      ),
      body: Container(
        child: Column(),
      ),
    );
  }
}
