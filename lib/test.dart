import 'package:advance_flutter/app/app.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  void updateAppState() {
    MyApp.instance.appState = 10;
  }
  void getAppState(){
    debugPrint(MyApp.instance.appState.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
