import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:beritax2/cari/cariappbar.dart';
// import 'package:beritax2/beranda/test.dart';
import 'package:beritax2/constant.dart';
import 'package:beritax2/data/data.dart';
import 'package:beritax2/details/berita_detail.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class Cari extends StatefulWidget {
  @override
  _CariState createState() => _CariState();
}

class _CariState extends State<Cari> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 150.0,
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Cari  "),
                  Hero(
                    tag: 'search',
                    child: CircleAvatar(child:
                  Icon(Icons.search),
                  foregroundColor: ColorPalette.green,
                  backgroundColor: Colors.white,
                  maxRadius: 15.0,
                  ),
                  )
                  
                ],
              ),
              floating: true,
              leading: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Opacity(
                        opacity: 0.4,
                        child: Image.asset(
                          "assets/images/bg/bgpurple.jpg",
                          colorBlendMode: BlendMode.color,
                          fit: BoxFit.fill,
                        )),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(left :20.0, right: 20.0,top: 5.0,bottom: 2.0),
                child: Container(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      fillColor: ColorPalette.purpledark,
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorPalette.purplesoft )),
                      focusColor: ColorPalette.purpledark
                    ),
                    autofocus: true,
                    textInputAction: TextInputAction.search,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: <Widget>[
              //     Container(color: ColorPalette.green,
              //     child: Row(
              //       children: <Widget>[
              //         Icon(Icons.search),
              //         Text("Cari")
              //       ],
              //     ),
              //     )
              //     ]),
              InkWell(
                  child: Padding(
                padding: EdgeInsets.only(left: 255.0, top: 15.0, right: 15.0,bottom: 15.0),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(child: Text("Cari",style: TextStyle(color: Colors.deepPurple),)),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.search,color: Colors.deepPurple,),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              )),

              Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(daftar.length, (index) {
                      return beritaBaru(daftar[index]);
                    }),
                  ),
            
            ]))
          ],
        ),
      ),
    );
  
  }
  Widget beritaBaru(Berita news){
    return InkWell(
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailPage(berita:news)));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Slidable(
            delegate: new SlidableDrawerDelegate(),
            actionExtentRatio: 0.25,
            child: Container(
              margin: EdgeInsets.only(bottom : 5,top: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),),
            child: ListTile(
              title: Text(news.judul,
              style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(news.waktu),
              trailing: ClipRect(child: Image.asset(news.gambar,height: 150,fit: BoxFit.cover,width: 120,),),
            ))
          )
        ],
      ),
    );
  }
  
}
