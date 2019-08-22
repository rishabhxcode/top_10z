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

final crick = [dhoni, kohli, raina];
final movies = [threeIdiot, chakde, uristrike];
final singers = [sonu, lataDi, ashaDi];

class Listmodel {
  final String number;
  final String url;

  Listmodel(this.number, this.url);
}

final dhoni = Listmodel('10',
    'https://media3.mensxp.com/media/content/2019/Aug/ms-dhoni-plays-cricket-with-kids-in-leh1400-1566125185_1100x513.jpg');

final kohli = Listmodel('9',
    'https://c.ndtvimg.com/2018-10/bhan6oj8_virat-kohli-pti-10-18_625x300_27_October_18.jpg');

final raina = Listmodel(
    '8', 'https://engcric.b-cdn.net/wp-content/uploads/2019/05/Raina.jpg');

final pandya = Listmodel('7',
    'https://imagevars.gulfnews.com/2019/06/13/Hardik-Pandya_16b501c7e6a_large.jpg');

final threeIdiot = Listmodel('10',
    'https://www.filmibeat.com/img/2017/01/3idiotsposter-17-1484649482.jpg');

final chakde = Listmodel('9',
    'https://i.pinimg.com/originals/47/f0/20/47f020fc25a62b05251da7967903ed0b.jpg');

final uristrike = Listmodel('8',
    'https://images.justwatch.com/backdrop/128719158/s1440/uri-the-surgical-strike');

final sonu = Listmodel('10',
    'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201901/sonu_nigam_1.jpeg?S9T9zhsO5.r7Dqvot__1ePt953qbbCnR');

final lataDi = Listmodel('9',
    'https://images.mid-day.com/images/2018/sep/Lata-Mangeshkar-birthday_d.jpg');

final ashaDi = Listmodel('8',
    'https://m.media-amazon.com/images/M/MV5BMDIwNWYyZDMtZWUyZS00OTc3LWE1OTQtZTJkZTc0NGY5ODRkXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SY1000_CR0,0,715,1000_AL_.jpg');
