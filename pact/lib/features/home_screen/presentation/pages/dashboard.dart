import 'package:flutter/material.dart';
import 'package:pact/features/home_screen/presentation/pages/home_screen.dart';
import 'package:pact/features/home_screen/presentation/pages/notification_screen.dart';
import 'package:pact/features/home_screen/presentation/pages/profile_screen.dart';
import 'package:pact/features/home_screen/presentation/widgets/nav_bar_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final notificationNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  
  int selectedTab = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedTab],
      bottomNavigationBar: NavBar(
        pageIndex: selectedTab,
        onTap: (index) {
          if (index == selectedTab) {
          } else {
            setState(() {
              selectedTab = index;
            });
          }
        },
      ),
    );
  }
}