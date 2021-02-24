import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hr_flutter/utils/FadeInImageWithoutAuth.dart';
import 'package:hr_flutter/utils/NetworkImageWithoutAuth.dart';
import 'model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context,int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          // Image.network(posts[index].imageUrl),
          //支持https请求的图片显示方式
          FadeInImageWithoutAuth.assetNetwork(placeholder: 'childhood-in-a-picture.jpg', image: posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HR"),
          //不设置appbar的阴影
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: posts.length,
            itemBuilder: _listItemBuilder,
        )
    );
  }
}


class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      ),
    );
  }
}

