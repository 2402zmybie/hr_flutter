import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState.showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(width: 16,),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text('Fix you - Goldplay', textAlign: TextAlign.right,),
              )
            ],
          ),
        ),
      );
    });
  }

  Future _openModelBottomSheet() async{
     final option = await showModalBottomSheet(context: context, builder: (BuildContext context) {
      return Container(
        height: 200,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Option A'),
              onTap: () {
                Navigator.pop(context, 'A');
              },
            ),
            ListTile(
              title: Text('Option B'),
              onTap: () {
                Navigator.pop(context, 'B');
              },
            ),
            ListTile(
              title: Text('Option C'),
              onTap: () {
                Navigator.pop(context, 'C');
              },
            )
          ],
        ),
      );
    });

     debugPrint(option);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
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
                FlatButton(onPressed: _openBottomSheet, child: Text('Open BottomSheet')),
                FlatButton(onPressed: _openModelBottomSheet, child: Text('Model BottomSheet'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
