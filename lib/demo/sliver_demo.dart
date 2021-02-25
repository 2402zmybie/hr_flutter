import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_flutter/utils/FadeInImageWithoutAuth.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("HR"),
//            pinned: true,
            floating: true,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Hr Flutter".toUpperCase(),
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 3,
                  color: Colors.white,
                  fontWeight: FontWeight.w400
                ),
              ),
              background: Image.network(
                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.ktvcd.com%2Fuploads%2Fallimg%2F180409%2F2-1P40922524b17.jpg&refer=http%3A%2F%2Fwww.ktvcd.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616740720&t=e1b9c3d22202d5566530969ca74370dc',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}


class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Material(
                      borderRadius: BorderRadius.circular(12.0),
                      elevation: 14,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      child: Stack(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 16/9,
                            child: FadeInImageWithoutAuth.assetNetwork(
                              placeholder: 'childhood-in-a-picture.jpg',
                              image: posts[index].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 32,
                            left: 32,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  posts[index].title,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                  ),
                                ),
                                Text(
                                  posts[index].author,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
          },
          childCount: posts.length
      ),
    );
  }
}


class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1
      ),
      delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return Container(
              child: FadeInImageWithoutAuth.assetNetwork(
                placeholder: 'childhood-in-a-picture.jpg',
                image: posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            );
          },
          childCount: posts.length
      ),
    );
  }
}

