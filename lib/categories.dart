import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> category = [
    'Movies',
    'sports',
    'Cricket',
    'Politicians',
    'Writers',
    'Actors',
    'Journalists',
    'Scientists'
  ];
  List<String> categoryLink = [
    'http://cdn.collider.com/wp-content/uploads/2018/12/us-movie-poster.jpg',
    'https://thesundevils.com/images/2019/8/22/_PV35143_3.jpg?width=1416&height=797&mode=crop',
    'https://statics.sportskeeda.com/editor/2018/09/05b52-1536819360-800.jpg',
    'https://betanews.com/wp-content/uploads/2014/05/politician-292x300.jpg',
    'https://images.theconversation.com/files/174468/original/file-20170619-12412-1hddlaf.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=496&fit=clip',
    'https://img.buzzfeed.com/buzzfeed-static/static/2018-07/3/12/campaign_images/buzzfeed-prod-web-06/these-actors-threatened-to-quit-mid-movie-and-im--2-14788-1530634332-2_dblbig.jpg',
    'https://indiantelevision.com/sites/default/files/styles/230x230/public/images/tv-images/2019/05/06/arnab.jpg?itok=WCkQUlQ4',
    'https://marketingland.com/wp-content/ml-loads/2015/08/ss-engagement-data-800x450.jpg'
  ];

  Widget gridCard(String title, String link) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(link),
        ),
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.black54,
              Colors.black
            ])),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Categories'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) =>
              gridCard(category[index], categoryLink[index]),
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 3 : 2),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
