import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black.withOpacity(0.1),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      // currentIndex: _selectedIndex,
      // onTap: _onItemTapped,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 30,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_outlined,
            size: 30,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline_sharp,
            size: 30,
          ),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_none_outlined,
            size: 30,
          ),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          // icon: ImageIcon(
          //   size: 30,
          //   // AssetImage("assets/img.jpg"),
          //   NetworkImage(
          //       "https://plus.unsplash.com/premium_photo-1677507321948-d3f8b80fe6d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
          //   color: Color(0xFF3A5A98),
          // ),
          icon: Icon(
            Icons.person_3_outlined,
            size: 30,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
