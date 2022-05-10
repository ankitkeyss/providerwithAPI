import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:new_provider/model/data_model.dart';

class App_State extends ChangeNotifier {
  var temp = 0000;
  void updateData(int num) {
    this.temp = num;
    notifyListeners();
  }

  var start = 0;
  void timers(int t) {
    this.start = t;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      timers(timer.tick);
    });
  }
  List<DataModel>datalist=[];
  void updateDataModel(List<DataModel>datalist){
    this.datalist=datalist;
    notifyListeners();
  }
}
