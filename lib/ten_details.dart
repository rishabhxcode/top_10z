class TopList {
  final String top10;
  final topHorizontalList;
  TopList(this.top10, this.topHorizontalList);
}

final TopListvariable = [
  TopList('Top 10 Cricketers', crick),
  TopList('Top 10 Singers', singers),
  TopList('Top 10 Movies', movies)
];

final crick = [dhoni, kohli, raina,pandya,yuvraj];
final movies = [threeIdiot, chakde, uristrike,tare,milkha];
final singers = [sonu, lataDi, ashaDi,shreya,arijit];

class Listmodel {
  final String number;
  String name;
  final String url;

  Listmodel(this.number,this.name, this.url);
}

final dhoni = Listmodel('10','MS\nDhoni',
    'https://media3.mensxp.com/media/content/2019/Aug/ms-dhoni-plays-cricket-with-kids-in-leh1400-1566125185_1100x513.jpg');

final kohli = Listmodel('9','Virat\nKohli',
    'https://c.ndtvimg.com/2018-10/bhan6oj8_virat-kohli-pti-10-18_625x300_27_October_18.jpg');

final raina = Listmodel(
    '8','Suresh\nRaina', 'https://engcric.b-cdn.net/wp-content/uploads/2019/05/Raina.jpg');

final pandya = Listmodel('7','Hardik\nPandya',
    'https://imagevars.gulfnews.com/2019/06/13/Hardik-Pandya_16b501c7e6a_large.jpg');

final yuvraj = Listmodel('6','Yuvraj\nSingh','https://www.aljazeera.com/mritems/imagecache/mbdxxlarge/mritems/Images/2019/6/10/f98a7c0423c94666abb4578197c885ae_18.jpg');


final tare = Listmodel('7','Taare\nZameen Par','http://www.gstatic.com/tv/thumb/v22vodart/175247/p175247_v_v8_ab.jpg');


final threeIdiot = Listmodel('10','3 Idiots',
    'https://www.filmibeat.com/img/2017/01/3idiotsposter-17-1484649482.jpg');

final chakde = Listmodel('9','Chak De\nIndia',
    'https://i.pinimg.com/originals/47/f0/20/47f020fc25a62b05251da7967903ed0b.jpg');

final uristrike = Listmodel('8','Uri \nThe Surgical Strike',
    'https://images.justwatch.com/backdrop/128719158/s1440/uri-the-surgical-strike');

final milkha = Listmodel('6','Bhaag\nMilkha Bhaag','http://www.gstatic.com/tv/thumb/v22vodart/10041195/p10041195_v_v8_an.jpg');


final sonu = Listmodel('10','Sonu\nNigam',
    'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201901/sonu_nigam_1.jpeg?S9T9zhsO5.r7Dqvot__1ePt953qbbCnR');

final lataDi = Listmodel('9','Lata\nMangeshkar',
    'https://images.mid-day.com/images/2018/sep/Lata-Mangeshkar-birthday_d.jpg');

final ashaDi = Listmodel('8','Asha\nBhosle',
    'https://m.media-amazon.com/images/M/MV5BMDIwNWYyZDMtZWUyZS00OTc3LWE1OTQtZTJkZTc0NGY5ODRkXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SY1000_CR0,0,715,1000_AL_.jpg');

final shreya = Listmodel('7','Shreya\nGhoshal', 'http://www.gstatic.com/tv/thumb/persons/1042549/1042549_v9_ba.jpg');

final arijit = Listmodel('6','Arijit\nSingh','https://www.bizasialive.com/wp-content/uploads/2018/04/ariitsingh001.jpg');