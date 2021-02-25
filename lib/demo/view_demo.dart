import 'package:flutter/material.dart';
import '../model/post.dart';
import 'package:hr_flutter/utils/FadeInImageWithoutAuth.dart';

class ViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context,int index) {
    return Container(
      child: FadeInImageWithoutAuth.assetNetwork(
        placeholder: 'childhood-in-a-picture.jpg',
        image: posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8
      ),
    );
  }
}



class GridViewExtentDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text(
          'Item $index',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      //竖向滚动,横向每个单元的最大宽度
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text(
          'Item $index',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}


class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: FadeInImageWithoutAuth.assetNetwork(
            placeholder: 'childhood-in-a-picture.jpg',
            image: posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  posts[index].author
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}


class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //拖动一半自动滑动
      // pageSnapping: false,
      //反转
      // reverse: true,
      //上下滑动
      // scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
        //初始页面显示, 默认是0
          initialPage: 0,
          keepPage: false,
          viewportFraction: 0.85
      ),
      children: <Widget>[
        Container(
          alignment: Alignment(0, 0),
          color: Colors.brown[900],
          child:Text(
            'One',
            style: TextStyle(fontSize: 32,color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment(0, 0),
          color: Colors.grey[900],
          child:Text(
            'Two',
            style: TextStyle(fontSize: 32,color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment(0, 0),
          color: Colors.blueGrey[900],
          child:Text(
            'Three',
            style: TextStyle(fontSize: 32,color: Colors.white),
          ),
        )
      ],
    );
  }
}

