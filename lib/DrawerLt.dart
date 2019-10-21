import 'package:flutter/material.dart';
class DrawerLt extends StatelessWidget{

  final title;
  final leading;

  DrawerLt(this.title, this.leading);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),
      ),
      leading: this.leading,
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}