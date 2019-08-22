import 'package:flutter/material.dart';
import 'package:top_10z/customClipper.dart';
import 'package:top_10z/ten_details.dart';

class ViewAll extends StatefulWidget {
  final  TopList topList;

  const ViewAll({Key key, this.topList}) : super(key: key);
  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  var scrnh;
  var scrnw;
  Listmodel curr_model;
int ind =0;
  @override
  Widget build(BuildContext context) {
    curr_model = widget.topList.topHorizontalList[ind];
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
                              '${curr_model.url}'),
                        ),
                      ),
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
                            '${curr_model.name}',
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
              height: scrnh / 3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return SingleChild(widget.topList.topHorizontalList[index],index);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget SingleChild(Listmodel topmodel, int index) {
    final Listmodel model = topmodel;
    return Container(

      margin: EdgeInsets.only(left: 8, right: 8, top: 15),
      child: InkWell(
        onTap: (){
          setState(() {
             ind= index;
          });
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: scrnh / 1.5,
              width: scrnh / 4,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      '${model.url}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: scrnh / 10,
              width: scrnh / 4,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.transparent,
                    Colors.black54,
                    Colors.black,
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              right: 20,
              child: Text(
                '${model.number}',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
