import 'package:flutter/material.dart';
import 'package:top_10z/customClipper.dart';

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
  

  Widget topCard(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 4, bottom: 2, top: 4),
          child: Text(
            ' Top 10 companies', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 150,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final scrnh = MediaQuery.of(context).size.height;
    final scrnw = MediaQuery.of(context).size.height;
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
        ],
      ),
        body: Container(
          padding: EdgeInsets.only(top: 8),
          child: new ListView.separated
            (
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return topCard();
              }
          ),
        )
    );
  }
}
