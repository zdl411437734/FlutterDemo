import 'package:flutter/material.dart';

/**
 * 用户中心
 */
class UserPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("个人中心")),
      body: Column(

        children: <Widget>[
         Row(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(18.0),
               child: Icon(
                 Icons.account_circle,
                 size: 50,
                 color: Colors.blue,
               ),
             ),
             Column(
               mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text("Flutter McFlutter",style: Theme.of(context).textTheme.headline,),
                 Text("Experienced App Developer")
               ],
             )
           ],
         ),
         SizedBox(height: 8,),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text("123 Main Street"),
                 Text("415-555-0198")
               ],
             )
         )
       ,
         SizedBox(height: 16,),
         Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Icon(Icons.accessibility_new,size: 30),
               Icon(Icons.access_alarms,size: 30),
               Icon(Icons.phone_android,size: 30),
               Icon(Icons.phone_iphone,size: 30),
             ]
         )
      ],
      ),
    );
  }
}