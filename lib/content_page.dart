import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: GNav(
                backgroundColor: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.grey.shade800,
                color: Colors.black,
                gap: 8,
                iconSize: 20,
                padding: const EdgeInsets.all(16),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  const GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  const GButton(
                    icon: LineIcons.locationArrow,
                    text: 'Location',
                  ),
                  const GButton(
                    icon: Icons.add_box_outlined,
                    text: 'Add',
                  ),
                  const GButton(
                    icon: LineIcons.heart,
                    text: 'Likes',
                  ),
                  const GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ]),
          ),
        ),
      ),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: false,
        title: const Text(
          'Wanda.S',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 148,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(
                                  'https://img.freepik.com/free-photo/portrait-expressive-young-woman_1258-48167.jpg'),
                            ),
                            Text(
                              'Wanda S.',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Photographer / NewYork',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.red.shade800,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              profileDetails('150', 'Posts'),
                              profileDetails('5k', 'Followers'),
                              profileDetails('100', 'Following'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.blue.shade200)),
                                    onPressed: () {},
                                    child: const Text('Follow'),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blue.shade200),
                                    shape: BoxShape.circle,
                                  ),
                                  child:
                                      const Icon(Icons.arrow_drop_down_rounded),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://img.freepik.com/free-photo/portrait-expressive-young-woman_1258-48167.jpg')),
                            shape: BoxShape.circle,
                            color: Colors.black),
                      ),
                      const Text(
                        'Title',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Divider(),
            Container(
              height: 60,
              child: const DefaultTabController(
                length: 3,
                child: TabBar(tabs: [
                  Tab(
                    text: 'Email',
                  ),
                  Tab(
                    text: 'Site',
                  ),
                  Tab(
                    text: 'Phone',
                  ),
                ]),
              ),
            ),
            Container(
              height: 60,
              child: const DefaultTabController(
                length: 4,
                child: TabBar(tabs: [
                  Icon(Icons.grid_view_rounded),
                  Icon(Icons.tv),
                  Icon(Icons.person_pin_outlined),
                  Icon(Icons.favorite_sharp),
                ]),
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(8),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://boomers-daily.com/wp-content/uploads/2022/01/walking-tour-dublin-ireland-4k-video-january-16-2022.jpg')),
                        color: Colors.black,
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String text1, String text2) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800),
        ),
        Text(
          text2,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.red.shade800),
        ),
      ],
    );
  }
}
