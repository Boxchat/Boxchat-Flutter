import 'package:flutter/material.dart';
class BoxBottomNavigationBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text('聊天'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.radio),
          title: Text('电台'),
        ),
      ],
      onTap: (index) {
        print(index);
      },
    );
  }
}