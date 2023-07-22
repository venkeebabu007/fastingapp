import 'package:fastingapp/homepages/bodydetox/detoxchallangehome.dart';
import 'package:fastingapp/homepages/looseyourweight.dart';
import 'package:fastingapp/homepages/meal/mealshome.dart';
import 'package:flutter/material.dart';

class navbarmain extends StatefulWidget {
  const navbarmain({super.key});

  @override
  State<navbarmain> createState() => _navbarmainState();
}

class _navbarmainState extends State<navbarmain> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    looseyourweight(),
    bodydetoxchal(),
    mealshome(),
    Text(
      'we are working on\nthis me  page',
      style: optionStyle,
    ),
    Text(
      'we are working on\nthis  coach page',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navicons/Group 2964.png'),
              size: 30,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navicons/Group 2968.png'),
              size: 30,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navicons/Group 2966.png'),
              size: 35,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navicons/Group 2965.png'),
              size: 35,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navicons/Group_2967.png'),
              size: 35,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Color.fromARGB(0, 164, 158, 158),
        unselectedIconTheme: IconThemeData(color: Colors.green),
        selectedItemColor: Colors.green,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
