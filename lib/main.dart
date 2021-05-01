import 'package:flutter/material.dart';
import 'package:login_screen/components/navbar.dart';

void main() {
  runApp(MyApp());
}

MaterialColor myColor = MaterialColor(0xff3677ff, colorCodes);

Map<int, Color> colorCodes = {
  50: Color.fromRGBO(54, 119, 255, .1),
  100: Color.fromRGBO(54, 119, 255, .2),
  200: Color.fromRGBO(54, 119, 255, .3),
  300: Color.fromRGBO(54, 119, 255, .4),
  400: Color.fromRGBO(54, 119, 255, .5),
  500: Color.fromRGBO(54, 119, 255, .6),
  600: Color.fromRGBO(54, 119, 255, .7),
  700: Color.fromRGBO(54, 119, 255, .8),
  800: Color.fromRGBO(54, 119, 255, .9),
  900: Color.fromRGBO(54, 119, 255, 1),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: myColor,
      ),
      home: NavbarScreen(),
    );
  }
}

class MainBody extends StatefulWidget {
  MainBody({Key key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}
