import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../store/index.dart';
class BoxBottomNavigationBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    void changeIndexNow(indexTo) {
      Provider.of<DataInfo>(context).changeIndexNow(indexTo);
    }

    return BottomNavigationBar(
      currentIndex: Provider.of<DataInfo>(context).getIndexNow(),
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
      onTap:(index) => changeIndexNow(index)
    );
  }

  setState(Null Function() param0) {}
}