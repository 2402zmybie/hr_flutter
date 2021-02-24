import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          /*DrawerHeader(
                  child: Text('header'.toUpperCase()),
                  decoration: BoxDecoration(
                    color: Colors.grey[100]
                  )
                ),*/
          UserAccountsDrawerHeader(
            accountName: Text('HR', style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('HR@gmail.com'),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/24271811?s=460&u=f640aa53336d2d9007bfebad7739775b3c0fedba&v=4')
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.ktvcd.com%2Fuploads%2Fallimg%2F180409%2F2-1P40922524b17.jpg&refer=http%3A%2F%2Fwww.ktvcd.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616740720&t=e1b9c3d22202d5566530969ca74370dc'),
                    fit: BoxFit.cover,
                    //设置图片的混合模式
                    // colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight)
                )
            ),
          ),
          ListTile(
              title: Text('Message',textAlign: TextAlign.right),
              //leading: Icon(Icons.message, color: Colors.black12,size: 22.0)是在一行的前面显示
              //trailing: 在后面显示
              trailing: Icon(Icons.message, color: Colors.black12,size: 22.0),
              onTap: () => Navigator.pop(context)
          ),
          ListTile(
              title: Text('Favorite',textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite, color: Colors.black12,size: 22.0),
              onTap: () => Navigator.pop(context)
          ),
          ListTile(
              title: Text('Settings',textAlign: TextAlign.right),
              trailing: Icon(Icons.settings, color: Colors.black12,size: 22.0),
              onTap: () => Navigator.pop(context)
          )
        ],
      ),
    );
  }
}
