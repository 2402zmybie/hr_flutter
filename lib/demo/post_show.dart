import 'package:flutter/material.dart';
import '../model/post.dart';
import 'package:hr_flutter/utils/FadeInImageWithoutAuth.dart';

class PostShow extends StatelessWidget {
  final Post post;

  //构造函数
  PostShow({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeInImageWithoutAuth.assetNetwork(
                placeholder: 'childhood-in-a-picture.jpg',
                image: post.imageUrl,
                fit: BoxFit.cover),
            Container(
                padding: EdgeInsets.all(32),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${post.title}',
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      '${post.author}',
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      '${post.description}',
                      style: Theme.of(context).textTheme.body1,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
