import 'package:flutter/material.dart';
import 'button_demo.dart';
import 'floating_action_button_demo.dart';
import 'popup_menu_button.dart';
import 'from_demo.dart';
import 'checkbox_demo.dart';
import 'radio_demo.dart';
import 'switch_demo.dart';
import 'slider_demo.dart';
import 'datetime_demo.dart';
import 'simpledialog_demo.dart';
import 'alertdialog_demo.dart';
import 'bottomsheet_demo.dart';
import 'snack_bar_demo.dart';
import 'expansion_panel_demo.dart';
import 'chip_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'ChipDemo',
            page: ChipDemo(),
          ),
          ListItem(
            title: 'ExpansionPanelDemo',
            page: ExpansionPanelDemo(),
          ),
          ListItem(
            title: 'SnackBarDemo',
            page: SnackBarDemo(),
          ),
          ListItem(
            title: 'BottomSheet',
            page: BottomSheetDemo(),
          ),
          ListItem(
            title: 'AlertDialog',
            page: AlertDialogDemo(),
          ),
          ListItem(
            title: 'SimpleDialog',
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: 'DateTime',
            page: DateTimeDemo(),
          ),
          ListItem(
            title: 'Slider',
            page: SliderDemo(),
          ),
          ListItem(
            title: 'Switch',
            page: SwitchDemo(),
          ),
          ListItem(
            title: 'Radio',
            page: RadioDemo(),
          ),
          ListItem(
            title: 'Checkbox',
            page: CheckboxDemo(),
          ),
          ListItem(
            title: 'Form',
            page: FormDemo(),
          ),
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: 'ButtonDemo',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'PopupMenuButton',
            page: PopupMenuDemo(),
          )
        ],
      ),
    );
  }
}



class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}



class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
