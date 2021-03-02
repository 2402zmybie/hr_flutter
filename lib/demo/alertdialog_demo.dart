import 'package:flutter/material.dart';
import 'dart:async';

enum Action {
  Cancel,
  Ok
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choise = 'Nothing';


   Future _openAlertDialog() async{
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDialog'),
            content: Text('Are you sure about this?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context,Action.Cancel);
                  },
                  child: Text('Cancel')
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context,Action.Ok);
                  },
                  child: Text('Ok')
              )
            ],
          );
      }
    );

    switch(action) {
      case Action.Ok:
        setState(() {
          _choise = 'Ok';
        });
        break;
      case Action.Cancel:
        _choise = 'Cancel';
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is: $_choise'),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Open AlertDialog'),
                  onPressed: _openAlertDialog,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
