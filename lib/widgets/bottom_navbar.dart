import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label: 'Back'),
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
      
      currentIndex: 1, 
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        if (index == 1) {
          
          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
        } else if (index == 0) {
          
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      },
    );
  }
}
