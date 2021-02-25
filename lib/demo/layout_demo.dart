import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBoxDemo();
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200,
              maxWidth: 200
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1),
            ),
          )
        ],
      ),
    );
  }
}


class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3/2,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1),
            ),
          )
        ],
      ),
    );
  }
}



class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            //设置所有叠加在一起的小部件对其方式
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 300,
                child: Container(
                  alignment: Alignment(0.0, -1),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1.0),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
              //留白
              SizedBox(height: 32),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1.0),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Icon(Icons.brightness_2, color: Colors.white,size: 32,),
                ),
              ),
              Positioned(
                  right: 20,
                  top: 20,
                  child: Icon(Icons.ac_unit, color: Colors.white,size: 32,)
              )
            ],
          )
        ],
      ),
    );
  }
}


class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 250,
            child: Container(
              //设置子部件的对其百分比
              alignment: Alignment(1, 1),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Icon(Icons.ac_unit, color: Colors.white,size: 32,),
            ),
          ),
          //留白
          SizedBox(height: 32,),
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Icon(Icons.brightness_2, color: Colors.white,size: 32,),
            ),
          ),

        ],
      ),
    );
  }
}



class AxisAlignmentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //和css的Flex布局一致, 主轴的对其方式
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //交叉轴的对其方式
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconBadge(Icons.pool),
        IconBadge(Icons.beach_access,size: 64,),
        IconBadge(Icons.airplanemode_active)
      ],
    );
  }
}



class IconBadge extends StatelessWidget {

  IconData icon;
  double size;

  IconBadge(this.icon, {
    this.size = 32
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1),
    );
  }
}

