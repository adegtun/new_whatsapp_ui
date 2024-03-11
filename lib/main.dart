import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Whatsapp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            _globalKey.currentState!.openDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ))
                    ]),
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Messages',
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )),
                    const SizedBox(width: 35),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Online',
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )),
                    const SizedBox(width: 35),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Groups',
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )),
                    const SizedBox(width: 35),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'More',
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )),
                    const SizedBox(width: 35),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                height: 220,
                padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                decoration: const BoxDecoration(
                    color: Color(0xFF27c1a9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Favorite Contacts',
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ))
                      ]),
                  SizedBox(
                    height: 90,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          BuildContactAvatar(
                              filename: 'img1.jpeg', name: 'Alla'),
                          BuildContactAvatar(
                              filename: 'img2.jpeg', name: 'July'),
                          BuildContactAvatar(
                              filename: 'img3.jpeg', name: 'Mikle'),
                          BuildContactAvatar(
                              filename: 'img4.jpg', name: 'Kler'),
                          BuildContactAvatar(
                              filename: 'img5.jpeg', name: 'Moane'),
                          BuildContactAvatar(
                              filename: 'img6.jpeg', name: 'Julie'),
                          BuildContactAvatar(
                              filename: 'img7.jpeg', name: 'Allen'),
                          BuildContactAvatar(
                              filename: 'img8.jpg', name: 'John'),
                        ]),
                  )
                ]),
              )),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                      color: Color(0xFFEFFFFC),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: ListView(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      children: [
                        buildCoversationRow(
                            'Alla', 'How are you', 'img1.jpeg', 0),
                        buildCoversationRow(
                            'July', 'How are you', 'img2.jpeg', 230),
                        buildCoversationRow(
                            'Mikle', 'How are you', 'img3.jpeg', 0),
                        buildCoversationRow(
                            'Kler', 'How are you', 'img4.jpg', 15),
                        buildCoversationRow(
                            'Moane', 'How are you', 'img5.jpeg', 0),
                        buildCoversationRow(
                            'Julie', 'How are you', 'img6.jpeg', 2),
                        buildCoversationRow(
                            'Allen', 'How are you', 'img7.jpeg', 0),
                        buildCoversationRow(
                            'John', 'How are you', 'img8.jpg', 10),
                      ])))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
            backgroundColor: const Color(0xFF27c1a9),
            child: const Icon(
              Icons.edit_outlined,
              size: 30,
            ),
            onPressed: () {}),
      ),
      drawer: Drawer(
          backgroundColor: Colors.black38,
          width: 275,
          elevation: 30,
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(40))),
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xF71F1E1E),
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x3D000000),
                      spreadRadius: 30,
                      blurRadius: 20)
                ]),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back, color: Colors.white, size: 20),
                          SizedBox(width: 56),
                          Text(
                            'Settings',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          UserAvatar(filename: 'img3.jpeg'),
                          SizedBox(width: 12),
                          Text(
                            'Tom Brown',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 35),
                      DrawerItem(title: 'Account', icon: Icons.key),
                      DrawerItem(title: 'Chats', icon: Icons.chat_bubble),
                      DrawerItem(
                          title: 'Notifications', icon: Icons.notifications),
                      DrawerItem(
                          title: 'Data and Storage', icon: Icons.storage),
                      DrawerItem(title: 'Help', icon: Icons.help),
                      Divider(
                        height: 35,
                        color: Colors.green,
                      ),
                      DrawerItem(
                          title: 'Invite a friend', icon: Icons.people_outline),
                    ],
                  ),
                  DrawerItem(title: 'Log out', icon: Icons.logout),
                ],
              ),
            ),
          )),
    );
  }

  Column buildCoversationRow(
      String name, String message, String filename, int msgCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              UserAvatar(filename: filename),
              const SizedBox(width: 15),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 5),
                Text(
                  message,
                  style: const TextStyle(color: Colors.black),
                )
              ]),
            ]),
            Column(
              children: [
                const Text('16:35', style: TextStyle(fontSize: 10)),
                const SizedBox(height: 15),
                if (msgCount > 0) //only show circular avatar if msgCount is > 0
                  CircleAvatar(
                      radius: 7,
                      backgroundColor: const Color(0xFF27c1a9),
                      child: Text(
                        msgCount.toString(),
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white),
                      ))
              ],
            )
          ],
        ),
      ],
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 56),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class BuildContactAvatar extends StatelessWidget {
  final String name;
  final String filename;
  const BuildContactAvatar(
      {super.key, required this.name, required this.filename});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(filename: filename),
          const SizedBox(height: 5),
          Text(name, style: const TextStyle(color: Colors.white, fontSize: 16))
        ],
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({super.key, required this.filename});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
          radius: 29,
          backgroundImage: Image.asset('assets/images/$filename').image),
    );
  }
}
