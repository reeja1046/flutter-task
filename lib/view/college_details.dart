import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:machine_task/constant/color.dart';

class CollegeDetailScreen extends StatefulWidget {
  const CollegeDetailScreen({Key? key}) : super(key: key);

  @override
  _CollegeDetailScreenState createState() => _CollegeDetailScreenState();
}

class _CollegeDetailScreenState extends State<CollegeDetailScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TextColor.baseColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage('assets/unsplash_e7eqKQkpk_8.png'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'GHJK Engineering college',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.129,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color.fromARGB(255, 30, 207, 36)),
                        child: const Column(
                          children: [
                            Text(
                              '4.3',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: TextColor.textColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(height: 1),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTabItem('About College', 0),
                      _buildTabItem('Hostel Facility', 1),
                      _buildTabItem('Q & A', 2),
                      _buildTabItem('Events', 3),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildTabContent(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: TextColor.baseColor),
                onPressed: () {},
                child: const Text(
                  'Apply Now',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color:
                  _selectedIndex == index ? TextColor.baseColor : Colors.black,
            ),
          ),
          Container(
            height: 2,
            width: 60,
            color: _selectedIndex == index
                ? TextColor.baseColor
                : Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent() {
    switch (_selectedIndex) {
      case 0:
        return _buildDescriptionTab();
      case 1:
        return _buildHostelFacilityTab();
      case 2:
        return _buildQATab();
      case 3:
        return _buildEventsTab();
      default:
        return const SizedBox();
    }
  }

  Widget _buildDescriptionTab() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'Description',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      const Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
      const Text(
        'Location',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      Container(
        child: const Image(
          image: AssetImage('assets/Background.png'),
          fit: BoxFit.contain,
        ),
      ),
      const Text(
        'Student Review',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ]);
  }

  Widget _buildHostelFacilityTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              height: 35,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: TextColor.baseColor),
                  backgroundColor: TextColor.baseColor,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset('assets/bed (3).png'),
                    const SizedBox(width: 10),
                    const Text(
                      '4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            SizedBox(
              height: 35,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: TextColor.baseColor),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/bed (3).png',
                      color: TextColor.baseColor,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      '3',
                      style: TextStyle(
                        color: TextColor.baseColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            SizedBox(
              height: 35,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: TextColor.baseColor),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/bed (3).png',
                      color: TextColor.baseColor,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      '2',
                      style: TextStyle(
                        color: TextColor.baseColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            SizedBox(
              height: 35,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: TextColor.baseColor),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/bed (3).png',
                      color: TextColor.baseColor,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '1',
                      style: TextStyle(
                        color: TextColor.baseColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                child: Image.asset('assets/Room1.png'),
              ),
              SizedBox(width: 10),
              Container(
                child: Image.asset('assets/Room2.png'),
              ),
              SizedBox(width: 10),
              Container(
                child: Image.asset('assets/Room3.png'),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'GHJK Engineering Hostel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Image.asset('assets/location 1.png'),
            const SizedBox(width: 10),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 10),
        const Text(
          'Facilities',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Image.asset('assets/university 1.png'),
            const SizedBox(width: 10),
            Text('College in 400 mtrs'),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Image.asset('assets/bath (1) 1.png'),
            const SizedBox(width: 10),
            Text('Bathrooms : 2'),
          ],
        )
      ],
    );
  }

  Widget _buildQATab() {
    return const Text('Q & A Content');
  }

  Widget _buildEventsTab() {
    return const Text('Events Content');
  }
}
