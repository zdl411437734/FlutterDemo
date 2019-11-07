import 'package:flutter/material.dart';
import 'package:one/FirstScreen.dart';
import 'package:one/ProductModule.dart';
void main() {
  runApp(MaterialApp(
    home: ProductList(products: List.generate(20, (i)=> Product("商品$i", "这是一个商品详情 $i"))),
    title: '屏幕跳转',
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
  ));
}

