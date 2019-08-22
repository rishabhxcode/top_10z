import 'package:flutter/material.dart';

import '../ten_details.dart';

class TopCard extends StatefulWidget {
final  TopList topList;

 TopCard({Key key, this.topList}) : super(key: key);

  @override
  _TopCardState createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  var scrnh;

  var scrnw;

  @override
  Widget build(BuildContext context) {
   String topname = widget.topList.top10;
    scrnh = MediaQuery.of(context).size.height;
    scrnw = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 4, bottom: 2, top: 4),
          child: Text(
            '$topname', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: scrnh / 3.75,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              singleItem(widget.topList.topHorizontalList[0]),
              singleItem(widget.topList.topHorizontalList[1]),
              singleItem(widget.topList.topHorizontalList[2]),

              more(),
            ],
          ),
        ),
      ],
    );
  }

  Widget singleItem(Listmodel toplist){
    final Listmodel model = toplist;
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
                  image: NetworkImage(model.url),
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
            child: Text('${model.number}', style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white70
            ),),
          )
        ],
      ),
    );
  }

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
}
