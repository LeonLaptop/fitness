import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/assets/colors.dart';
import 'package:login_screen/assets/textstyle.dart';
import 'package:login_screen/components/topbar.dart';
import 'package:login_screen/screens/sign_up_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
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
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Topbar(
                onTap: () {
                  Navigator.pop(context);
                },
                title: "",
                iconLeft: CupertinoIcons.back,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text("Oh, hey You."),
              ),
              Text(
                "Welcome back 👋",
                style: signHeader,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
// =================================== Email Formfield =================================== \\
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: TextFormField(
                          validator: Validators.compose([
                            Validators.email("Inalid email address."),
                            Validators.required("Please enter a email address.")
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
                          Validators.minLength(8, 'Characters are less than 8'),
                          Validators.required("Please enter a valid password."),
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
            ],
          ),
        ),
      ),
    );
  }
}
