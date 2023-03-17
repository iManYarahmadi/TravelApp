import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constants.dart';
import '../../config/route/scale_route.dart';
import '../view/home/profile/edit_profile.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 3) {
        Navigator.push(context, ScaleRoute(page: const EditProfile()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset(
                    'assets/svg/Home.svg',
                    color: activeColorIndicator,
                  )
                : SvgPicture.asset(
                    'assets/svg/Home.svg',
                    color: Colors.black,
                  ),
            label: 'Home',
            tooltip: 'Home'),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
              ? SvgPicture.asset(
                  'assets/svg/Calendar.svg',
                  color: activeColorIndicator,
                )
              : SvgPicture.asset(
                  'assets/svg/Calendar.svg',
                ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
              ? SvgPicture.asset(
                  'assets/svg/Chat.svg',
                  color: activeColorIndicator,
                )
              : SvgPicture.asset(
                  'assets/svg/Chat.svg',
                ),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 3
              ? SvgPicture.asset(
                  'assets/svg/Icon.svg',
                  color: activeColorIndicator,
                )
              : SvgPicture.asset(
                  'assets/svg/Icon.svg',
                ),
          label: 'Settings',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xFFF6925C),
      onTap: _onItemTapped,
      backgroundColor: Colors.transparent,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    );
  }
}
