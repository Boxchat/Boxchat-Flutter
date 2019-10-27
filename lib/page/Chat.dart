import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../store/index.dart';


class RouteChat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // print('开始');
    // print(Provider.of<DataInfo>(context).changeIndex(2));
    // // Provider.of<Index>(context).addCount();
    // print('结束');
    // print(Provider.of<Index>(context).getIndexNow());
    return Center(
      child: Text('Chat'),
    );
  }
}