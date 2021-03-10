import 'package:flutter/material.dart';
import 'package:shopisan_dev/screens/FavoriteScreen.dart';

import 'package:shopisan_dev/theme/style.dart';
import 'package:shopisan_dev/theme/colors.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'package:shopisan_dev/screens/MapScreen.dart';
import 'package:shopisan_dev/screens/StoreListScreen.dart';
import 'package:shopisan_dev/screens/SettingsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopisan',
      theme: CustomTheme.lightTheme,
      home: MainScreen(title: 'Shopisan'),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> _buildScreens() {
    return [
      StoreListScreen(),
      MapScreen(),
      FavoriteScreen(),
      SettingsScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_basket),
        title: ("Store"),
        activeColor: CustomColors.activeBlue,
        inactiveColor: CustomColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.map),
        title: ("Map"),
        activeColor: CustomColors.activeBlue,
        inactiveColor: CustomColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        title: ("Favorite"),
        activeColor: CustomColors.activeBlue,
        inactiveColor: CustomColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: ("Settings"),
        activeColor: CustomColors.activeBlue,
        inactiveColor: CustomColors.systemGrey,
      ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears.
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
    curve: Curves.ease,
    ),
    screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
    animateTabTransition: true,
    curve: Curves.ease,
    duration: Duration(milliseconds: 200),
    ),
    navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
    );

  }
}
