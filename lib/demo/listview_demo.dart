import 'package:flutter/material.dart';
import 'package:hr_flutter/utils/FadeInImageWithoutAuth.dart';
import 'package:hr_flutter/model/post.dart';


class ListViewDemo extends StatelessWidget {
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
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}