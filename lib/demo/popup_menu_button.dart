import 'package:flutter/material.dart';

class PopupMenuDemo extends StatefulWidget {
  @override
  _PopupMenuDemoState createState() => _PopupMenuDemoState();
}

class _PopupMenuDemoState extends State<PopupMenuDemo> {
  String _currentText = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PupupMenuDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentText),
                PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                    setState(() {
                      _currentText = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: 'Home',
                      child: Text("Home"),
                    ),
                    PopupMenuItem(
                      value: 'Discover',
                      child: Text("Discover"),
                    ),
                    PopupMenuItem(
                      value: 'Community',
                      child: Text("Community"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

