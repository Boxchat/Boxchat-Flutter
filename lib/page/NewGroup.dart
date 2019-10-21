import 'package:flutter/material.dart';
class RouterNewGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新建群组"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}