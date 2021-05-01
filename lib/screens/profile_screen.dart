import 'package:flutter/material.dart';
import 'package:login_screen/assets/colors.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Screen"),
        backgroundColor: darkBlackColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 50,
          bottom: 40.0,
        ),
        color: Color(0xffedf0f5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          height: 80.0,
          width: double.infinity,
        ),
      ),
    );
  }
}
