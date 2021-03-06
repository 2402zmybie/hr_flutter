import 'package:flutter/material.dart';
import 'package:hr_flutter/demo/post_show.dart';
import 'package:hr_flutter/utils/FadeInImageWithoutAuth.dart';
import 'package:hr_flutter/model/post.dart';


class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context,int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              // Image.network(posts[index].imageUrl),
              //支持https请求的图片显示方式
              AspectRatio(
                aspectRatio: 16/9,
                child: FadeInImageWithoutAuth.assetNetwork(placeholder: 'childhood-in-a-picture.jpg', image: posts[index].imageUrl,fit: BoxFit.cover),
              ),
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
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  Navigator.of(context).push(
                    //路由跳转到详情页,利用构造函数传值
                    MaterialPageRoute(builder: (context) => PostShow(post: posts[index]))
                  );
                },
              ),
            ),
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