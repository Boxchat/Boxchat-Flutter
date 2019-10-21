import 'package:flutter/material.dart';
class DrawerLt extends StatelessWidget{

  final title;   // 标题
  final leading; // 图标
  final routes; // 路由

  DrawerLt(this.title, this.leading, this.routes);

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
        // Navigator.pop(context);
        Navigator.pushNamed(context, this.routes);
      },
    );
  }
}


// static SlideTransition createTransition( Animation<double> animation, Widget child ) {
//   return new SlideTransition(
//     position: new Tween<Offset>(
//     begin: const Offset(1.0, 0.0),
//     end: const Offset(0.0, 0.0),
//   ).animate(animation),
//     child: child,
//   );
// }