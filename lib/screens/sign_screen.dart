import 'package:flutter/material.dart';
import 'package:login_screen/assets/buttons.dart';
import 'package:login_screen/assets/colors.dart';
import 'package:login_screen/assets/textstyle.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}

final List<String> header = [
  "Start your 60 second \nchallenge. Every day!",
  "Lorem ipsum dolor sit \namet, consetetur",
  "vero eos et accusam et ?\njusto duo dolores et",
];

final List<String> subHeader = [
  "Lorem ipsum dolor sit amet,\n consetetur sadipscing eli",
  "Lorem ipsum dolor sit amet,\n consetetur sadipscing eli",
  "Lorem ipsum dolor sit amet,\n consetetur sadipscing eli",
];

final List<Icon> icons = [
  Icon(
    Icons.photo,
    size: 50.0,
  ),
  Icon(
    Icons.sports,
    size: 50.0,
  ),
  Icon(
    Icons.food_bank,
    size: 50.0,
  ),
];

class _SignScreenState extends State<SignScreen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: 375.0,
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: [0, 1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Container(
                                height: 200.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  color: ligthGreyColor,
                                  borderRadius: BorderRadius.circular(200.0),
                                ),
                                child: Center(child: icons[i]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, bottom: 15.0),
                                child: Container(
                                  child: Text(header[i],
                                      textAlign: TextAlign.center,
                                      style: signHeader),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: Container(
                                  child: Text(
                                    subHeader[i],
                                    textAlign: TextAlign.center,
                                    style: signSubHeader,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                // Show slider Controll
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: header.map((i) {
                    int index = header.indexOf(i);
                    return Container(
                      width: 9.0,
                      height: 9.0,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? darkBlueColor
                              : ligthGreyColor),
                    );
                  }).toList(),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    child: Column(
                      children: [
                        GoogleSignButton(),
                        Container(
                          margin: EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: SignUpLoginButton(
                                  title: "Sign Up",
                                  printInput: "Sign In",
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: SignUpLoginButton(
                                    title: "Log In", printInput: "Log In"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () => print("Terms of Use"),
                                  child: Text(
                                    "Terms of Use",
                                    style: smallBlueText,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: Container(
                                    height: 12.0,
                                    width: 1.5,
                                    color: darkBlueColor,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => print("Privacy Policy"),
                                  child: Text(
                                    "Privacy Policy",
                                    style: smallBlueText,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
