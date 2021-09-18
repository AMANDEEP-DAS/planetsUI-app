import 'package:flutter/material.dart';
import 'package:planets_app/screens/cat_screen.dart';
import 'package:planets_app/screens/home_screen.dart';
import 'package:planets_app/screens/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final screens =[
    HomeScreen(),
    Center(child: Text('chat'),),
    CatScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade800,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat,size: 30,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.category,size: 30,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle,size: 30,),label: ''),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: screens[_currentIndex],
    );
  }
}
