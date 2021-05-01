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
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xffedf0f5),
          child: Column(
            children: [
              Topbar(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                height: 200.0,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
