import 'package:flutter/material.dart';
import 'package:login_screen/assets/colors.dart';
import 'package:login_screen/components/topbar.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
               Topbar(
                  title: "Feedback ✨",
                  iconLeft: Icons.arrow_back_ios,
                  iconRight: Icons.bookmark,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
