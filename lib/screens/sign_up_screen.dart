import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/assets/buttons.dart';
import 'package:login_screen/assets/colors.dart';
import 'package:login_screen/assets/inputFields.dart';
import 'package:login_screen/assets/textstyle.dart';
import 'package:login_screen/components/topbar.dart';
import 'package:login_screen/screens/sign_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class SignUpScreen extends StatefulWidget {
  final String data;

  SignUpScreen({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool encodedInput = true;
  IconData icon = Icons.visibility;

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
                  onTap: () {
                    Navigator.pop(context);
                  },
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
// =================================== Profile Formfield =================================== \\
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a Username!';
                              }
                              return null;
                            },
                            obscureText: false,
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "Username",
                              hintStyle: TextStyle(fontSize: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.all(20),
                              fillColor: ligthGreyColor,
                            ),
                          ),
                        ),
// =================================== Email Formfield =================================== \\
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            validator: Validators.compose([
                              Validators.email("Inalid email address."),
                              Validators.required(
                                  "Please enter a email address.")
                            ]),
                            obscureText: false,
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: "Email",
                              hintStyle: TextStyle(fontSize: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.all(20),
                              fillColor: ligthGreyColor,
                            ),
                          ),
                        ),
// =================================== Password Formfield =================================== \\
                        TextFormField(
                          validator: Validators.compose([
                            Validators.minLength(
                                8, 'Characters are less than 8'),
                            Validators.required(
                                "Please enter a valid password."),
                          ]),
                          autofocus: false,
                          obscureText: encodedInput,
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: _showPW,
                              child: Icon(icon),
                            ),
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Password",
                            hintStyle: TextStyle(fontSize: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.all(20),
                            fillColor: ligthGreyColor,
                          ),
                        ),
                        PasswordRules(),
// =================================== Password Formfield =================================== \\
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Account is created."),
                                ),
                              );
                            }
                          },
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
                        )
                      ],
                    ),
                  ),
                ),
                SignUpPolicyTermsOfUse(),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: RichText(
                      text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                        TextSpan(
                            text: "Already have an account?",
                            style: smallText12),
                        TextSpan(text: " Sign in", style: smallBlackBoldText)
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpPolicyTermsOfUse extends StatelessWidget {
  const SignUpPolicyTermsOfUse({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
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
    );
  }
}

class PasswordRules extends StatelessWidget {
  const PasswordRules({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20.0),
      child: Container(
        width: 300.0,
        child: Text("Your password must be 8 or more characters long",
            style: smallText, textAlign: TextAlign.center),
      ),
    );
  }
}
