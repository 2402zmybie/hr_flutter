import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverDemo(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        //设置按下的颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        //设置水波纹的颜色
        splashColor: Colors.white70
      )
    );
  }
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search button is pressed'),
              )
            ],
            title: Text("HR"),
            //不设置appbar的阴影
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              // Icon(Icons.change_history, size: 128, color: Colors.black12),
              BasicDemo(),
              // Icon(Icons.directions_bike, size: 128, color: Colors.black12),
              LayoutDemo(),
              ViewDemo()
            ],
          ),
          //左边抽屉视图
          drawer: DrawerDemo(),
          //底部导航栏
          bottomNavigationBar: BottomNaviationBarDemo(),
        )
    );
  }
}
