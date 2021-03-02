import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {

  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    super.initState();
    _expansionPanelItems = [
      ExpansionPanelItem(
        headerText: 'Pannel A',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('Content for Panel A,'),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
          headerText: 'Pannel B',
          body: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text('Content for Panel B,'),
          ),
          isExpanded: false
      ),
      ExpansionPanelItem(
          headerText: 'Pannel C',
          body: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text('Content for Panel C,'),
          ),
          isExpanded: false
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ExpansionPanelList(
                  expansionCallback: (int panelIndex, bool isExpanded) {
                    setState(() {
                      _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                    });
                  },
                  children: _expansionPanelItems.map(
                      (ExpansionPanelItem item) {
                        return ExpansionPanel(
                          isExpanded: item.isExpanded,
                          body: item.body,
                          headerBuilder:(BuildContext context, bool isExpanded) {
                            return Container(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                item.headerText,
                                style: Theme.of(context).textTheme.title,
                              ),
                            );
                          }
                        );
                      }
                  ).toList(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


class ExpansionPanelItem{
  final String headerText;
  final Widget body;
  bool isExpanded;
  ExpansionPanelItem({this.headerText, this.body, this.isExpanded});
}
