import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:machine_task/constant/color.dart';
import 'college_card.dart'; // Import the CollegeCard widget

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRect(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: TextColor.baseColor,
                  ),
                  height: MediaQuery.of(context).size.height * 0.24,
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Search for colleges, schools...',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(left: 15),
                                  prefixIcon: const Icon(Icons.search,
                                      color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white,
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
                              height: 50,
                              width: 50,
                              child: const Icon(Icons.mic,
                                  color: TextColor.baseColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < 5; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10.0), // Adjust as needed
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                        ),
                        child: const Text('MVSH Engineering College',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CollegeCard(),
                    CollegeCard(),
                    CollegeCard(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
