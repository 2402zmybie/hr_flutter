import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      //容器背景颜色, 默认会占满使用的尺寸, 如果要设置宽高,则放在Row或者Column里面
      // color: Colors.grey,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.ktvcd.com%2Fuploads%2Fallimg%2F180409%2F2-1P40922524b17.jpg&refer=http%3A%2F%2Fwww.ktvcd.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616740720&t=e1b9c3d22202d5566530969ca74370dc'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Container(
              child: Icon(Icons.pool, size: 32.0, color: Colors.white),
              // color: Color.fromRGBO(3, 54, 255, 1.0),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid
                ),
                // borderRadius: BorderRadius.circular(16),
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(64),
                //   bottomLeft: Radius.circular(64)
                // ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 16),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 25,
                    spreadRadius: -9
                  )
                ],
                //改变盒子的形状
                shape: BoxShape.circle,
                //渐变效果(镜像渐变)
                // gradient: RadialGradient(
                //   colors: [
                //     Color.fromRGBO(7,102, 255, 1),
                //     Color.fromRGBO(3, 28, 128, 1)
                //   ]
                // ),
                  //渐变效果(线性渐变)
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(7,102, 255, 1),
                    Color.fromRGBO(3, 28, 128, 1)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text:'HeRun',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100
          ),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.pink
                )
            )
          ]
      ),
    );
  }
}



class TextDemo extends StatelessWidget {
  TextStyle _textStyle = TextStyle(
      fontSize: 16.0
  );

  final String _author = '李白';
  final String _title = "将进酒";

  @override
  Widget build(BuildContext context) {
    return Text(
      '<< $_title >>-----$_author. 君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停',
      textAlign: TextAlign.right,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

