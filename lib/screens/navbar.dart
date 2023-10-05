import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:nike_ecommerce/screens/home_screen.dart';
import 'package:nike_ecommerce/screens/search.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: ConvexAppBar(
          items: const [
            TabItem(
              icon: Icons.home,
              title: 'Home',
            ),
            // TabItem(icon: Icons.search, title: 'Search'),
            TabItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            TabItem(
                icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            )),
            TabItem(
                icon: Icon(
              Icons.person,
              color: Colors.grey,
            )),
          ],
          backgroundColor: Colors.white,
          activeColor: Color(0xffFFB301),
        ),
      ),
    );
  }
}
