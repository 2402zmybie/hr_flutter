import 'package:flutter/material.dart';


class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //文字按钮
    final Widget flatButtonDemo = Row(
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('Button'),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          onPressed: () {},
          splashColor: Colors.grey,
          icon: Icon(Icons.add),
          label: Text('Button'),
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  )
              )
          ),
          child: RaisedButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            elevation: 0,
            // color: Theme.of(context).accentColor,
            // textColor: Colors.white,
          ),
        ),
        SizedBox(width: 16,),
        RaisedButton.icon(
          onPressed: () {},
          splashColor: Colors.grey,
          icon: Icon(Icons.add),
          label: Text('Button'),
          elevation: 12,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );


    final outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  )
              )
          ),
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
                color: Colors.black
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // color: Theme.of(context).accentColor,
            // textColor: Colors.white,
          ),
        ),
        SizedBox(width: 16,),
        OutlineButton.icon(
          onPressed: () {},
          splashColor: Colors.grey,
          icon: Icon(Icons.add),
          label: Text('Button'),
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget fixedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 160,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            borderSide: BorderSide(
                color: Colors.black
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.black,
          ),
        )
      ],
    );

    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            borderSide: BorderSide(
                color: Colors.black
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.black,
          ),
        ),
        Expanded(
          flex: 2,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            borderSide: BorderSide(
                color: Colors.black
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.black,
          ),
        )
      ],
    );

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 32)
              )
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                splashColor: Colors.grey,
                borderSide: BorderSide(
                    color: Colors.black
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.black,
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                splashColor: Colors.grey,
                borderSide: BorderSide(
                    color: Colors.black
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.black,
              )
            ],
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
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
                raisedButtonDemo,
                outlineButtonDemo,
                fixedButtonDemo,
                expandedButtonDemo,
                buttonBarDemo
              ],
            )
          ],
        ),
      ),
    );
  }
}