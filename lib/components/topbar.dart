import 'package:flutter/material.dart';
import 'package:login_screen/assets/textstyle.dart';

class Topbar extends StatelessWidget {
  final String title;
  final IconData iconLeft;
  final IconData iconRight;
  final Function onTap;

  Topbar({this.title, this.iconLeft, this.iconRight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 25.0,
        right: 25.0,
      ),
      height: 60.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 25.0,
              child: Icon(iconLeft),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: topbarHeader,
              ),
            ),
          ),
          Icon(iconRight)
        ],
      ),
    );
  }
}
