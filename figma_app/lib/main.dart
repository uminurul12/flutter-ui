import "package:flutter/material.dart";
import "package:flutter_ui/pages/Furniture/PageHome.dart";
import "package:flutter_ui/pages/PageOne.dart";
import "package:flutter_ui/pages/pageThree.dart";
import "package:flutter_ui/pages/pagetwo.dart";
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numberHalaman = 0;

  final List<Widget> _halaman = [PageHome(), PageOne(), PageTwo(), PageThree()];
  List<Map<String, dynamic>> menuItems = [
    {
      "title": "Home",
      "icon": Icons.home,
    },
    {
      "title": "Chart",
      "icon": Icons.shopping_cart,
    },
    {
      "title": "Favorites",
      "icon": Icons.star_border,
    },
    {
      "title": "Account",
      "icon": Icons.person,
    },
  ];

  void onTabTapped(int index) {
    setState(() {
      _numberHalaman = index;
    });
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        title: Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg'))
        ],
      ),
      drawer: DrawerWidget(),
      body: _halaman[_numberHalaman],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item["icon"]),
                label: item["title"],
                activeIcon: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: Icon(item["icon"]),
                ),
              ),
            )
            .toList(),
        selectedItemColor: Colors.white,
        onTap: onTabTapped,
        currentIndex: _numberHalaman,
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Header of the Drawer
            Material(
              color: Colors.black,
              child: InkWell(
                onTap: () {
                  /// Close Navigation drawer before
                  Navigator.pop(context);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => UserProfile()),
                  // );
                },
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top, bottom: 24),
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 52,
                        backgroundColor: Colors.white,
                        // backgroundImage: NetworkImage(
                        //     ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Reihan',
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      Text(
                        '@Reihan.com',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            /// Header Menu items
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text('Home'),
                  onTap: () {
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomeScreen()),
                    // );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text('Favourites'),
                  onTap: () {
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => ),
                    // );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.workspaces),
                  title: Text('Workflow'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.update),
                  title: Text('Updates'),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
