import 'package:flutter/material.dart';
class RouterContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("联系人"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}