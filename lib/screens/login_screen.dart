import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/assets/textstyle.dart';
import 'package:login_screen/components/topbar.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  IconData icon = Icons.visibility;
  bool encodedInput = true;

  void _showPW() {
    setState(() {
      encodedInput = !encodedInput;
      if (encodedInput == true) {
        icon = Icons.visibility;
      } else {
        icon = Icons.visibility_off;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Topbar(
              onTap: () {
                Navigator.pop(context);
              },
              title: "",
              iconLeft: CupertinoIcons.back,
            ),
            Text("Oh Hey you."),
            Text(
              "Welcome back",
              style: signHeader,
            ),
          ],
        ),
      ),
    );
  }
}
