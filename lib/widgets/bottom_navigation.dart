// this is the bottom navigation widget that will be applied to different screens
import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/profile.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigation> {

  int _selectedIndex = 0;

  // function when the icon is tapped it takes the selected index and change the screen
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  
  }

 final List<Widget>_children=[
   HomePage(),
   ProfileScreen(),

 ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: _children[_selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff2d438d),
          onTap: _onItemTapped,
          items:const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Exercises',
                style: TextStyle(
                    fontFamily: 'Work Sans/WorkSans-Regular'
                ),)
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin),
              title: Text('Profile',
              style: TextStyle(
                  fontFamily: 'Work Sans/WorkSans-Regular'
              ),)
            ),],
        ));

  }

}


