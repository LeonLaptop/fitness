import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/assets/colors.dart';
import 'package:login_screen/screens/home_screen.dart';
import 'package:login_screen/screens/profile_screen.dart';
import 'package:login_screen/screens/feddback_screen.dart';
import 'package:login_screen/screens/sign_screen.dart';
import 'package:login_screen/screens/sign_up_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

PersistentTabController myController = PersistentTabController(initialIndex: 0);

List<Widget> _buildScreens() {
  return [SignScreen(),SignUpScreen(), HomeScreen(), ProfileScreen(), FeedbackScreen()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.app_badge_fill),
      title: ("Sign"),
      activeColorPrimary: darkBlackColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.app_badge_fill),
      title: ("Signup"),
      activeColorPrimary: darkBlackColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: darkBlackColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: ("Settings"),
      activeColorPrimary: darkBlackColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.signature),
      title: ("feedback"),
      activeColorPrimary: darkBlackColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: myController,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}
