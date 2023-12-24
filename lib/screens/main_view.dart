import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home_screen.dart';
import 'package:wallet_app/screens/income_stats_screen.dart';
import 'package:wallet_app/screens/notification_screen.dart';
import 'package:wallet_app/screens/setting_screen.dart';

import '../themes/colors.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    IncomeStatsView(),
    NotificationView(),
    SettingView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: DotNavigationBar(
          currentIndex: _selectedIndex,
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          selectedItemColor: Colors.white,
          splashBorderRadius: 50,
          paddingR: const EdgeInsets.all(3),
          marginR: const EdgeInsets.all(1),
          backgroundColor: MyColor.darkPurpleColor,
          onTap: _onItemTapped,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Image.asset(
                'assets/icons/wallet.png',
                width: 28,
                height: 28,
              ),
              selectedColor: Colors.white,
            ),

            /// Income Stats
            DotNavigationBarItem(
              icon: Image.asset(
                'assets/icons/stats.png',
                width: 28,
                height: 28,
              ),
              selectedColor: Colors.white,
            ),

            /// Notification
            DotNavigationBarItem(
              icon: Image.asset(
                'assets/icons/notification.png',
                width: 28,
                height: 28,
              ),
              selectedColor: Colors.white,
            ),

            /// Setting
            DotNavigationBarItem(
              icon: Image.asset(
                'assets/icons/setting.png',
                width: 28,
                height: 28,
              ),
              selectedColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
