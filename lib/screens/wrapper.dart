import 'package:flutter/material.dart';
import 'package:login_screen/models/user.dart';
import 'package:login_screen/screens/pages/home_screen.dart';
import 'package:login_screen/screens/sign/sign_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // define what data we wait for.
    final anomUser = Provider.of<AnomUser>(context);
    print(anomUser);

    //return home or auth screen.
    if (anomUser == null) {
      return SignScreen();
    } else {
      return HomeScreen();
    }
  }
}
