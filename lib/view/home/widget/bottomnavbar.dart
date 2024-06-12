import 'package:flutter/material.dart';
import 'package:machine_task/constant/color.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MyBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.save),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.save_as),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: TextColor.baseColor,
      onTap: onItemTapped,
    );
  }
}
