import 'package:flutter/material.dart';
import 'package:login_screen/assets/colors.dart';

class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
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
