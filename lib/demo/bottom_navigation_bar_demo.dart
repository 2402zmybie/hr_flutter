import 'package:flutter/material.dart';

class BottomNaviationBarDemo extends StatefulWidget {
  @override
  _BottomNaviationBarDemoState createState() => _BottomNaviationBarDemoState();
}

class _BottomNaviationBarDemoState extends State<BottomNaviationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      this._currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('List')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('My')
        ),
      ],
    );
  }
}
