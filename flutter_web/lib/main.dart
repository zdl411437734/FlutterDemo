import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder()
        )
      ),
      home: Scaffold(

        body: Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

/**
 * 我的主页
 */
class MyHomePage extends StatefulWidget{
  MyHomePage({Key key}) : super(key:key);
  @override
  _MyHomePageState createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }

}

class _MyHomePageState extends State<MyHomePage>{
  int _selectedIndex = 1;//当前选中项的索引
  final _widgetOptions = [
    Text("Index 0: 信息"),
    Text("Index 1: 通讯录"),
    Text("Index 2: 发现"),
    Text("Index 3: 我的")
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar示例"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),//居中显示某个文本
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text("信息",style: TextStyle(),)),
            BottomNavigationBarItem(icon: Icon(Icons.contacts),title: Text("通讯录")),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("发现")),
            BottomNavigationBarItem(icon: Icon(Icons.local_activity),title: Text("我的"))
          ],
        currentIndex: _selectedIndex,//当前选中项的索引
        fixedColor: Colors.deepOrange,//选中项的颜色
        unselectedItemColor: Colors.blue,
        onTap: _onItemTapped,//选择按下处理
      ),

//      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

//选择按下处理，设置当前索引
  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
