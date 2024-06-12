import 'package:flutter/material.dart';
import 'package:machine_task/constant/color.dart';

class CollegeDetailTab extends StatelessWidget {
  final String title;
  final int index;
  final int selectedIndex;
  final VoidCallback onTap;

  const CollegeDetailTab({
    super.key,
    required this.title,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color:
                  selectedIndex == index ? TextColor.baseColor : Colors.black,
            ),
          ),
          Container(
            height: 2,
            width: 60,
            color: selectedIndex == index
                ? TextColor.baseColor
                : Colors.transparent,
          ),
        ],
      ),
    );
  }
}

class CollegeDetailTabContent extends StatelessWidget {
  final int selectedIndex;

  const CollegeDetailTabContent({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        return _buildDescriptionTab();
      case 1:
        return _buildHostelFacilityTab(context);
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
      const SizedBox(height: 10),
      const Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
      const SizedBox(height: 10),
      const Text(
        'Location',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      const SizedBox(height: 10),
      const Image(
        image: AssetImage('assets/Background.png'),
        fit: BoxFit.contain,
      ),
      const SizedBox(height: 10),
      const Text(
        'Student Review',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          Image.asset('assets/student.png'),
          const SizedBox(width: 10),
          Image.asset('assets/student.png'),
          const SizedBox(width: 10),
          Image.asset('assets/student.png'),
          const SizedBox(width: 10),
          Image.asset('assets/student.png'),
          const SizedBox(width: 10),
          Image.asset('assets/student.png'),
        ],
      ),
      
    ]);
  }

  Widget _buildHostelFacilityTab(context) {
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
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset('assets/Room1.png'),
              const SizedBox(width: 10),
              Image.asset('assets/Room2.png'),
              const SizedBox(width: 10),
              Image.asset('assets/Room1.png'),
              const SizedBox(width: 10),
              Image.asset('assets/Room2.png')
            ],
          ),
        ),
        const SizedBox(height: 20),
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
            const Text('College in 400 mtrs'),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Image.asset('assets/bath (1) 1.png'),
            const SizedBox(width: 10),
            const Text('Bathrooms : 2'),
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
