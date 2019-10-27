// import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
class DataInfo with ChangeNotifier {
  int _indexNow = 0;

  get indexNow => _indexNow;

  // 传参
  final indexTo;
  
  DataInfo({this.indexTo});

  getIndexNow() {
    return indexNow;
  }

  changeIndexNow(indexTo) {
    _indexNow = indexTo;
    notifyListeners();
  }
  
}
