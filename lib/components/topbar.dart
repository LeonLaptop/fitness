import 'package:flutter/material.dart';

class Topbar extends StatefulWidget {
  @override
  _TopbarState createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios_outlined,
          ),
          Expanded(
            child: Text("Status ✨"),
          ),
          Icon(Icons.filter_3)
        ],
      ),
    );
  }
}
