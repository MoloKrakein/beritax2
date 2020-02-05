import 'package:flutter/material.dart';
import 'package:beritax2/beranda/appbar.dart';
import 'package:beritax2/cari/cari.dart';
import 'package:beritax2/constant.dart';
import 'package:beritax2/data/data.dart';
import 'package:beritax2/details/berita_detail.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:beritax2/beranda/nav/speeddial.dart';
import 'package:beritax2/kategori/kategori.dart';

class Kepencet extends StatefulWidget {
  @override
  _KepencetState createState() => _KepencetState();
}

class _KepencetState extends State<Kepencet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white24,
          appBar: TitleBar(),
          bottomNavigationBar: BottomAppBar(
              child: Container(
            color: ColorPalette.green,
            height: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "BERANDA",
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 24.0,
                )
              ],
            ),
          )),
          body: Container(
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  Container(
                    color: ColorPalette.purplelight,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.trending_up,
                          size: 50.0,
                          color: ColorPalette.green,
                        ),
                        Text("  TREDING",
                            style: TextStyle(
                                color: ColorPalette.green,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(daftar.length, (index) {
                      return newsWidget(daftar[index]);
                    }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    color: ColorPalette.purplemedium,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.fiber_new,
                          size: 50.0,
                          color: ColorPalette.green,
                        ),
                        Text("  TERBARU",
                            style: TextStyle(
                                color: ColorPalette.green,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(daftar.length, (index) {
                      return beritaBaru(daftar[index]);
                    }),
                  ),
                ],
              ),
              ),
          drawer: navBar()),
    
    );
    
  }

  Widget newsWidget(Berita news) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(berita: news)),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Hero(
              tag: 'thumb-${news.id}',
              child: Container(
                width: 350.0,
                height: 150.0,
                margin: EdgeInsets.only(top: 5.0),
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                  image: DecorationImage(
                      image: AssetImage(news.gambar), fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              width: 350.0,
              padding: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: ColorPalette.green,
                      blurRadius: 100.0,
                      offset: Offset(
                        0.0,
                        5.5,
                      ),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(news.judul,
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 17.0)),
                  Text(news.tipe),
                  Container(
                      child: Text(news.waktu, style: TextStyle(fontSize: 10))),
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    decoration: BoxDecoration(
                      color: ColorPalette.green,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: ColorPalette.green),
                    ),
                    child: Text(
                      " LEBIH LANJUT ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Widget navBar() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.only(top: 5, bottom: 1),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "   Trend",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                CarouselSlider(
                  enlargeCenterPage: false,
                  autoPlay: true,
                  height: 130.0,
                  items: [
                    "assets/images/namu.png",
                    "assets/images/macet1.jpg",
                    "assets/images/logo.png",
                  ].map((i) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 0.5),
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                        ),
                      );
                    });
                  }).toList(),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              "Navigation Menu :",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black54,
              ),
              title: Text(
                "Beranda",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                BuildContext context;
                Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => Kepencet()))
                    .then((_) => Kepencet());
              },
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.black54,
              ),
              title: Text(
                "Cari",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cari()));
              },
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(
                Icons.category,
                color: Colors.black54,
              ),
              title: Text(
                "Kategori",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                 Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Kategori()));
              },
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(
                Icons.save_alt,
                color: Colors.black54,
              ),
              title: Text(
                "Simpanan Berita",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black54,
              ),
              title: Text(
                "Pengaturan",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey))),
            child: ListTile(
              leading: Icon(
                Icons.directions_run,
                color: Colors.grey,
              ),
              title: Text(
                "Keluar",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget beritaBaru(Berita news) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(berita: news)),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Slidable(
            delegate: new SlidableDrawerDelegate(),
            actionExtentRatio: 0.25,
            child: Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              width: 350.0,
              padding: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 20.0,
                      offset: Offset(
                        0.0,
                        0.1,
                      ),
                    ),
                  ]),
              child: ListTile(
                  contentPadding: EdgeInsets.only(left: 5, right: 10, top: 4),
                  title: Text(
                    news.judul,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(news.waktu),
                  trailing: Hero(
                    tag: "thum-${news.id}",
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(100),
                      child: Image.asset(news.gambar,
                          height: 150, fit: BoxFit.cover, width: 120),
                    ),
                  )),
            ),
            actions: <Widget>[
              
            ],
            secondaryActions: <Widget>[
new Container(
                margin: EdgeInsets.only(bottom: 5, top: 5),
                width: 350.0,
                padding: EdgeInsets.only(bottom: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    color: ColorPalette.purpledark,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20.0,
                        offset: Offset(
                          0.0,
                          0.1,
                        ),
                      ),
                    ]),
                    child: IconSlideAction(icon: Icons.share,color: Colors.transparent,caption: 'Bagikan',),
              )
            ],
          ),
        ],
      ),
    );
    
  }
}
