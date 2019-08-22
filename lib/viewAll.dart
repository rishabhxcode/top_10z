import 'package:flutter/material.dart';
import 'package:top_10z/customClipper.dart';

class ViewAll extends StatefulWidget {
  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  var scrnh;
  var scrnw;

  @override
  Widget build(BuildContext context) {
    scrnh = MediaQuery.of(context).size.height;
    scrnw = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      height: scrnh / 1.6,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,

                              //image: NetworkImage('https://media3.mensxp.com/media/content/2019/Aug/ms-dhoni-plays-cricket-with-kids-in-leh1400-1566125185_1100x513.jpg')

                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/7/7f/Emma_Watson_2013.jpg'))),
                      child: Container(
                        height: scrnh / 6.5,
                        width: scrnw,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Colors.transparent,
                              Colors.black54,
                              Colors.black87,
                              Colors.black
                            ])),
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            'Emma\nWatson',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Literata',
                                fontSize: 24,
                                color: Color(0xffd9d2ba)),
                          ),
                        ),
                      )),
                  clipper: CustomShapeClipper(),
                ),
                Positioned(
                  top: 20,
                  left: 0,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Container(
              height: scrnh - scrnh / 1.6,
              width: scrnw,
              color: Colors.grey.shade300,
              child: Column(
                children: <Widget>[
                  Text('Description: '),
                  ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
