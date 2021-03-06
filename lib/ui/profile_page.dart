import 'package:flutter/material.dart';
import 'package:nft_marketplace_app/ui/detail_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_left),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 44,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/01/25/06/12/beijing-opera-1160109_960_720.jpg'),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Hello World',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('@unknown'),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(0, 0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,'
                    ' quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'hello@world.com',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TabBar(
                    tabs: [
                      Tab(text: 'Creations'),
                      Tab(text: 'Collections'),
                    ],
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                    indicatorWeight: 1,
                  ),
                ),
                Expanded(
                  child: TabBarView(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: List.generate(
                          8,
                          (index) => GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => DetailPage())),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2018/03/30/15/11/deer-3275594_960_720.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.pink,
                              ),
                            ),
                          ),
                        ),
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: List.generate(
                          8,
                          (index) => Container(
                            color: Colors.red,
                          ),
                        ),
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
