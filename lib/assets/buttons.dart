import 'package:flutter/material.dart';
import 'package:login_screen/assets/textstyle.dart';

import 'colors.dart';

class GoogleSignButton extends StatelessWidget {
  const GoogleSignButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("Im Taped"),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20.0),
        child: Container(
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
            color: darkBlueColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.g_translate,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Sign Up with Google",
                  style: whiteBoldText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//===============================================================================\\

class SignUpLoginButton extends StatelessWidget {
  final String title;
  final String printInput;
  final Function onPressed;

  SignUpLoginButton({this.title, this.printInput, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: ligthGreyColor,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            title,
            style: blackBoldText,
          ),
        ),
      ),
    );
  }
}

//===============================================================================\\

class SignUpButton extends StatefulWidget {
  final Key buttonKey;

  SignUpButton({
    this.buttonKey,
  });

  @override
  _SignUpButtonState createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: darkBlueColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Create account",
                style: whiteBoldText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
