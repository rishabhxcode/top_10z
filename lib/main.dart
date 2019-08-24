import 'package:flutter/material.dart';
import 'package:top_10z/categories.dart';
import 'package:top_10z/commonWidget/TopCard.dart';

import 'ten_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin{
var scrnh;
var scrnw;
  @override
  Widget build(BuildContext context) {
    scrnh = MediaQuery.of(context).size.height;
    scrnw = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(

          child: Container(
            color: Colors.deepPurple,
            height: scrnh,
            width: scrnw/1.5,
          ),

      ),
      appBar: AppBar(
        title: Text('Top 10z'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(icon: Icon(Icons.category),
            onPressed: () {
              Route route = MaterialPageRoute(
                  builder: (context) => Categories());
              Navigator.push(context, route);
            },)
        ],
      ),
        body: Container(
          padding: EdgeInsets.only(top: 8),
          child: new ListView.separated
            (
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return TopCard(topList: TopListvariable[index]);
              }
          ),
        )
    );
  }
}
