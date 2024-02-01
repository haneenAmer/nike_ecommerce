import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:nike_ecommerce/screens/home_screen.dart';
import 'package:nike_ecommerce/screens/search.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // int _selectedIndex = 0;
  // final List<Widget> _widgetOptions = <Widget>[
  //   const HomeScreen(),
  //   const SearchScreen(),
  //   const HomeScreen(),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: HomeScreen(),
        // child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(
            icon: Icons.home,
            title: 'Home',
          ),
          TabItem(
            icon: Icons.search,
            title: 'search',
          ),
          TabItem(
            icon: Icons.favorite,
            title: 'favorite',
          ),
          TabItem(
            icon: Icons.person,
            title: 'person',
          )
        ],
        backgroundColor: Colors.white,
        activeColor: const Color(0xffFFB301),
        color: Colors.grey,
      ),
    );
  }
}
