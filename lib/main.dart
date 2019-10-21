import 'package:flutter/material.dart';
import 'screen.dart';

import 'NewGroup.dart';
import 'DrawerLt.dart';




void main() {
 
  runApp(MyApp());
}

// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  MyApp() {
    Screen(); // 屏幕设置
  }
  
  static const String _title = 'Boxchat';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Home> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boxchat'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('用户点击了Menu按钮');
            NewGroup();
            // Scaffold.of(context).showSnackBar(SnackBar(
            //   content: Text('Hello!'),
            // ));
            // _drawer.currentState.open();

          },
        ),
      ),
      drawer: _drawer(context),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

   Drawer _drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            accountName: Text(
              "Mathon",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            accountEmail: Text(
              "+86 150-8840-3722",
              style: TextStyle(
                color: Colors.purple[100],
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("asset/images/Mathon.jpg"),
            ),
          ),

          DrawerLt('新建群组', Icon(Icons.group)),
          DrawerLt('新建电台', Icon(Icons.radio)),

          Divider(), // 横线
          
          DrawerLt('联系人', Icon(Icons.contact_phone)),
          DrawerLt('收藏夹', Icon(Icons.turned_in)),
          DrawerLt('邀请朋友', Icon(Icons.weekend)),
          DrawerLt('设置', Icon(Icons.settings)),
          DrawerLt('软件声明', Icon(Icons.info)),

        ],
      ),
      

    );
  }


}


// 抽屉
class HomePageState extends StatefulWidget {
  HomePageState({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar,
      drawer: _drawer,
    );
  }

  get _appbar=>AppBar(
    title: Text('Drawer Test'),
  );

  get _drawer =>Drawer(
    child: Text('This is Drawer'),
  );

}
