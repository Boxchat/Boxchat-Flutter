import 'package:flutter/material.dart';
class BoxAppBar extends StatelessWidget with PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Boxchat'),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          print('用户点击了Menu按钮');
          // Scaffold.of(context).showSnackBar(SnackBar(
          //   content: Text('Hello!'),
          // ));
          // _drawer.currentState.open();
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}