import 'package:flutter/material.dart';
import 'package:machine_task/constant/color.dart';

class MyBottomSheet {
  static void show(BuildContext context) {
    int selectedRadioIndex = 0;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Image.asset('assets/education.png'),
                    title: const Text(
                      'Bachelor of Technology',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    trailing: Radio<int>(
                      value: 0,
                      groupValue: selectedRadioIndex,
                      activeColor: TextColor.baseColor,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadioIndex = value!;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        selectedRadioIndex = 0;
                      });
                    },
                  ),
                  ListTile(
                    leading: Image.asset('assets/sketch.png'),
                    title: const Text(
                      'Bachelor of Architecture',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    trailing: Radio<int>(
                      value: 1,
                      groupValue: selectedRadioIndex,
                      activeColor: TextColor.baseColor,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadioIndex = value!;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        selectedRadioIndex = 1;
                      });
                    },
                  ),
                  ListTile(
                    leading: Image.asset('assets/pharmacy.png'),
                    title: const Text(
                      'Pharmacy',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    trailing: Radio<int>(
                      value: 2,
                      groupValue: selectedRadioIndex,
                      activeColor: TextColor.baseColor,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadioIndex = value!;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        selectedRadioIndex = 2;
                      });
                    },
                  ),
                  ListTile(
                    leading: Image.asset('assets/balance.png'),
                    title: const Text(
                      'Law',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    trailing: Radio<int>(
                      value: 3,
                      groupValue: selectedRadioIndex,
                      activeColor: TextColor.baseColor,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadioIndex = value!;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        selectedRadioIndex = 3;
                      });
                    },
                  ),
                  ListTile(
                    leading: Image.asset('assets/management.png'),
                    title: const Text(
                      'Management',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    trailing: Radio<int>(
                      value: 4,
                      groupValue: selectedRadioIndex,
                      activeColor: TextColor.baseColor,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadioIndex = value!;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        selectedRadioIndex = 4;
                      });
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
