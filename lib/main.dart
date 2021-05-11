import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/services/route_generator.dart';
import 'package:login_screen/models/user.dart';
import 'package:login_screen/screens/wrapper.dart';
import 'package:login_screen/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
    return StreamProvider<AnomUser>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: myColor,
        ),
        initialRoute: "/",
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
