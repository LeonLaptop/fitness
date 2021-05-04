import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/assets/buttons.dart';
import 'package:login_screen/assets/inputFields.dart';
import 'package:login_screen/assets/textstyle.dart';
import 'package:login_screen/components/topbar.dart';
import 'package:login_screen/screens/sign_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Topbar(
                  title: "",
                  iconLeft: CupertinoIcons.back,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Sign Up",
                    style: signHeader,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15.0, bottom: 40.0),
                  width: 300.0,
                  child: Text(
                    "Create an account to start your own 60 second challenge!",
                    style: signSubHeader,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: GreyTextField(
                            hintTitle: "Username",
                            encodedInput: false,
                            icon: Icons.person,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: GreyTextField(
                              hintTitle: "Email",
                              encodedInput: false,
                              icon: Icons.mail),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: GreyTextPWField(
                            hintTitle: "Password",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            width: 300.0,
                            child: Text(
                                "Your password must be 8 or more characters long & contain a mix of upper & lower case letters; numbers or symbols.",
                                style: smallText,
                                textAlign: TextAlign.center),
                          ),
                        ),
                        SignUpButton()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Container(
                    width: 240.0,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(text: "By signing up, you're agree to our"),
                          TextSpan(
                            text: " Terms of Use",
                            style: smallBlackBoldText,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => print("Terms of Use"),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy.",
                            style: smallBlackBoldText,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => print("Privacy Policy"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
