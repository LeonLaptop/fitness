import 'package:flutter/material.dart';
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
  Icon(Icons.photo, size: 50.0,),
  Icon(Icons.sports,size: 50.0,),
  Icon(Icons.food_bank,size: 50.0,),
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
            padding: const EdgeInsets.only(top: 60.0),
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
                                child: Center(
                                    child: icons[i]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
                                child: Container(
                                  child: Text(header[i],
                                      textAlign: TextAlign.center,
                                      style: signHeader),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom:30.0),
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
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? darkBlueColor
                            : ligthGreyColor
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
