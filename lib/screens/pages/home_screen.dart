import 'package:flutter/material.dart';
import 'package:login_screen/components/topbar.dart';
import 'package:login_screen/services/auth.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Topbar(
                title: "Home",
                iconRight: Icons.settings,
                onTap: () {
                  Navigator.of(context).pushNamed('/home');
                },
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Text("Signed as: ")),
                      ElevatedButton.icon(
                          onPressed: () async {
                            await _auth.signOut();
                          },
                          icon: Icon(Icons.logout),
                          label: Text("Sign out"))
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
