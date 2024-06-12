import 'package:flutter/material.dart';
import 'package:machine_task/constant/color.dart';
import 'package:machine_task/view/home/widget/bottomnavbar.dart';
import 'package:machine_task/view/home/widget/bottomsheet.dart';
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
      body: ClipRect(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: TextColor.baseColor,
              ),
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08,
                  left: MediaQuery.of(context).size.width * 0.10,
                  right: MediaQuery.of(context).size.width * 0.10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Find your own way',
                      style: TextStyle(
                        color: TextColor.textColor,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.017,
                    ),
                    const Text(
                      'Search in 600 colleges around !',
                      style: TextStyle(
                        color: TextColor.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SearchScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: TextColor.textColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Search colleges, schools...',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.12,
                          child:
                              const Icon(Icons.mic, color: TextColor.baseColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.06,
              right: MediaQuery.of(context).size.width * 0.08,
              child: IconButton(
                icon: const Icon(Icons.notifications, color: Colors.white),
                onPressed: () {
                  MyBottomSheet.show(context);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
