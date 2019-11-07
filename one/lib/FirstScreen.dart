import 'package:flutter/material.dart';

/**
 * 第一个界面
 */
class FirstScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个界面"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (conext) {
              return SecondScreen();
            }));
          },
          child: Text("查看商品详情界面"),
        ),
      ),
    );
  }
}

/**
 * 第二个界面
 */
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("返回上一个界面"),
        ),
      ),
    );
  }
}
