import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon'
  ];

  String _action = 'Nothing';
  List<String> _selected = [];
  String _choice = 'Lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //包裹小部件,超出可自动换行
              Wrap(
                //相邻间隔
                spacing: 8,
                //行与行的间隔
                runSpacing: 8,
                children: <Widget>[
                  Chip(
                    label: Text('Life'),
                  ),
                  SizedBox(width: 8,),
                  Chip(
                    label: Text('Sunset'),
                    backgroundColor: Colors.orange,
                  ),
                  Chip(
                    label: Text('HR'),
                    avatar: CircleAvatar(
                      backgroundImage: NetworkImage('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.ktvcd.com%2Fuploads%2Fallimg%2F180409%2F2-1P40922524b17.jpg&refer=http%3A%2F%2Fwww.ktvcd.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616740720&t=e1b9c3d22202d5566530969ca74370dc'),
                    ),
                  ),
                  Chip(
                    label: Text('HR'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Text('闰'),
                    ),
                  ),
                  Chip(
                    label: Text('City'),
                    onDeleted: () {},
                    deleteIcon: Icon(Icons.delete),
                    deleteIconColor: Colors.redAccent,
                    deleteButtonTooltipMessage: 'Remove this tag',
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 32,
                    //左边缩进
                    indent: 32,
                  ),
                  Wrap(
                      spacing: 8,
                      children: _tags.map((tag) {
                        return Chip(
                          label: Text(tag),
                          onDeleted: () {
                            setState(() {
                              _tags.remove(tag);
                            });
                          },
                        );
                      }).toList()
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 32,
                    //左边缩进
                    indent: 32,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('ActionChip: $_action'),
                  ),
                  Wrap(
                      spacing: 8,
                      children: _tags.map((tag) {
                        return ActionChip(
                          label: Text(tag),
                          onPressed: () {
                            setState(() {
                              _action = tag;
                            });
                          },
                        );
                      }).toList()
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 32,
                    //左边缩进
                    indent: 32,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('FilterChip: ${_selected.toString()}'),
                  ),
                  Wrap(
                      spacing: 8,
                      children: _tags.map((tag){
                        return FilterChip(
                            label: Text(tag),
                            //是否被选中
                            selected: _selected.contains(tag),
                            onSelected: (value) {
                              setState(() {
                                if(_selected.contains(tag)) {
                                  _selected.remove(tag);
                                }else {
                                  _selected.add(tag);
                                }
                              });
                            }
                        );
                      }).toList()
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 32,
                    //左边缩进
                    indent: 32,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('ChoiceChip: $_choice'),
                  ),
                  Wrap(
                      spacing: 8,
                      children: _tags.map((tag){
                        return ChoiceChip(
                            label: Text(tag),
                            selectedColor: Colors.black,
                            //是否被选中
                            selected: _choice == tag,
                            onSelected: (flag) {
                              setState(() {
                                _choice = tag;
                              });
                            }
                        );
                      }).toList()
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = [
              'Apple',
              'Banana',
              'Lemon'
            ];
            _selected = [];
            _choice = 'Lemon';
          });
        },
      ),
    );
  }
}
