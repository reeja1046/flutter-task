import 'package:flutter/material.dart';
import 'package:machine_task/constant/color.dart';
import 'package:machine_task/view/home/widget/bottomnavbar.dart';
import 'package:machine_task/view/home/widget/bottomsheet.dart';
import 'package:machine_task/view/home/widget/header.dart';
import 'package:machine_task/view/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomHeader(),
          const SizedBox(height: 20),
          Stack(children: [
            Image.asset('assets/Rectangle 141.png'),
            const Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                '+6 colleges',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 20,
              left: 20,
              child: Text(
                'Top colleges',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TextColor.textColor,
                    fontSize: 20),
              ),
            ),
            const Positioned(
              top: 60,
              left: 20,
              child: Text(
                'Search through thousands of accredited colleges \nand universities online to find the right one \nfor you.Apply in 3 min, and connect \nwith your future.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TextColor.textColor,
                    fontSize: 14),
              ),
            )
          ]),
          const SizedBox(height: 20),
          Stack(children: [
            Image.asset('assets/Rectangle 142.png'),
            const Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                '+25 schools',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 20,
              left: 20,
              child: Text(
                'Top Schools',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TextColor.textColor,
                    fontSize: 20),
              ),
            ),
            const Positioned(
              top: 60,
              left: 20,
              child: Text(
                'Search through thousands of accredited \ncolleges and universities online to \nfind the right one for you.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TextColor.textColor,
                    fontSize: 14),
              ),
            )
          ]),
          const SizedBox(height: 20),
          Stack(children: [
            Image.asset('assets/Rectangle 143.png'),
            const Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                '+23 exams',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 20,
              left: 20,
              child: Text(
                'Exams',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TextColor.textColor,
                    fontSize: 20),
              ),
            ),
            const Positioned(
              top: 60,
              left: 20,
              child: Text(
                'Find an end to end information \nabout the exams that are happening in India',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TextColor.textColor,
                    fontSize: 14),
              ),
            )
          ]),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
