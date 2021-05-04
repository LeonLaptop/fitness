import 'package:flutter/material.dart';
import 'package:login_screen/components/topbar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Topbar(
                title: "Home",
                iconLeft: Icons.arrow_back_ios,
                iconRight: Icons.settings,
              ),
          ],
        ),
      ),
    );
  }
}
