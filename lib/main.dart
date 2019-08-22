import 'package:flutter/material.dart';

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

Widget more(){
  return Container(
    margin: EdgeInsets.only(left: 6),
    child: InkWell(
      onTap: () {

      },
      child: Container(
        alignment: Alignment.center,
        height: scrnh / 4.5,
        width: scrnw / 4.5,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.all(Radius.circular(35)),
            border: Border.all(color: Colors.blueGrey)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('View \n All', style: TextStyle(fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
              textAlign: TextAlign.center,
            ),
            Icon(Icons.arrow_forward, size: 36, color: Colors.deepPurple,)
          ],
        ),
      ),
    ),
  );
}

Widget singleItem(String network){
  return Container(
    margin: EdgeInsets.only(right: 6, left: 6),
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: scrnh / 2,
          width: scrnh / 4.5,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(network),
                fit: BoxFit.cover
            ),
            color: Colors.greenAccent,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Container(
          height: scrnh / 10,
          width: scrnh / 4.5,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                    Colors.black
                  ]
              )

          ),
        ),
        Positioned(
          bottom: 6,
          left: 4,
          child: Text('10', style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white70
          ),),
        )
      ],
    ),
  );
}

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
          height: scrnh / 3.75,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              singleItem('https://media3.mensxp.com/media/content/2019/Aug/ms-dhoni-plays-cricket-with-kids-in-leh1400-1566125185_1100x513.jpg'),
              singleItem('https://c.ndtvimg.com/2019-07/d3doq9qo_virat-kohli-afp_625x300_10_July_19.jpg'),
              singleItem('https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2018%2F12%2Ftop-10-movies-2018-categories-002.jpg?w=1600&cbr=1&q=90&fit=max'),
             more(),
            ],
          ),
        ),
      ],
    );
  }

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
