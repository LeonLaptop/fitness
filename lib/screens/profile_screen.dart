import 'package:flutter/material.dart';
import 'package:login_screen/assets/colors.dart';
import 'package:login_screen/components/topbar.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Topbar(
                  title: "Profile ",
                  iconLeft: Icons.arrow_back_ios,
                  iconRight: Icons.settings,
                ),
            
          ],
        ),
      ),
    );
  }
}
