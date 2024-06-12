import 'package:flutter/material.dart';
import 'package:machine_task/constant/color.dart';
import 'package:machine_task/view/college_details.dart';

class CollegeCard extends StatelessWidget {
  const CollegeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CollegeDetailScreen()));
        },
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/unsplash_1iuxWsIZ6ko.png',
                  height: MediaQuery.of(context).size.height * 0.14,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'GHJK Engineering college',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.width * 0.16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color.fromARGB(255, 30, 207, 36),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '4.3',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: TextColor.textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 18,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.035,
                            width: MediaQuery.of(context).size.width * 0.22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: TextColor.baseColor),
                            child: const Center(
                              child: Text(
                                'Apply Now',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: TextColor.textColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025),
                      const Divider(
                        height: 0.2,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/like 1.png'),
                          const Text(
                              'More than 1000+ students have been placed',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                          const Row(
                            children: [
                              Icon(
                                Icons.visibility,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Text('468+',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 8.0,
              right: 8.0,
              child: GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Image(
                      image: AssetImage('assets/saved 1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8.0,
              left: 8.0,
              child: GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(Icons.share_outlined)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
