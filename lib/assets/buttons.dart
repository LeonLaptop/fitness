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
        padding: const EdgeInsets.only(
            left: 25.0, right: 25.0, bottom: 20.0),
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
                padding: const EdgeInsets.only(left:20.0),
                child: Text("Sign Up with Google", style: whiteBoldText,),
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

  SignUpLoginButton({this.title,this.printInput});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(printInput),
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

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
              padding: const EdgeInsets.only(left:20.0),
              child: Text("Create account", style: whiteBoldText,),
            )
          ],
        ),
      ),
    );
  }
}

