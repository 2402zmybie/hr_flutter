import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0,
    backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(
    //     borderRadius: BorderRadius.circular(5)
    // ),
  );

  Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    label: Text('Add'),
    icon: Icon(Icons.add),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          color: Colors.pink,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}