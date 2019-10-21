import 'package:flutter/services.dart';
class Screen {
  Screen(){
    SystemChrome.setPreferredOrientations([ // 强制横屏
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
  }
}