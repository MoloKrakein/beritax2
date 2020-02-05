import 'package:flutter/material.dart';
import 'package:beritax2/constant.dart';
import 'package:beritax2/data/data.dart';

class DetailPage extends StatefulWidget {
  final Berita berita;

  const DetailPage({Key key, this.berita}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Card(
                  color: ColorPalette.back,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(30))),
                  elevation: 10,
                  child: MaterialButton(
                    height: 20,
                    minWidth: 0,
                    elevation: 10,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
              Card(
                color: ColorPalette.purplemedium,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                )),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        widget.berita.tipe,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Container(child: new Center(
              //       child: Hero(
              //         tag: 'thumb-${widget.berita.id}',
              //         child: new Image.asset(
              //           widget.berita.gambar
              //         )
              //       ),
              //     ),)
              //   ],
              // )
            ],
          )),
      body: new SafeArea(
        child: new ListView(
          children: <Widget>[
            Container(
              child: new Center(
                child: Hero(
                  tag: 'thumb-${widget.berita.id}',
                  child: new Image.asset(
                    widget.berita.gambar,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Hero(
                tag: 'judul-${widget.berita.id}',
                child: new Text(
                  widget.berita.judul,
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 4.0),
              child: Text(widget.berita.waktu,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey)),
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 2.5,
                  color: ColorPalette.green,
                  width: 125.0,
                  padding: EdgeInsets.only(left: 45.0),
                  margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: new Text(
                widget.berita.desk,
                style: TextStyle(wordSpacing: 2, fontSize: 16),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 2.5,
                  color: ColorPalette.green,
                  width: 190.0,
                  padding: EdgeInsets.only(left: 45.0),
                  margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left:10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  child: IconButton(
                    onPressed: (){},
                    icon:Icon(Icons.share,color: Colors.white)),
                ),
                ),
                CircleAvatar(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.thumb_up,color: Colors.white)),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: IconButton(icon: Icon(Icons.thumb_down,color: Colors.white,),
                  onPressed: (){},),
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: IconButton(icon: Icon(Icons.whatshot,color: Colors.white,),
                  onPressed: (){},),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(icon: Icon(Icons.report,color: Colors.white,),
                  onPressed: (){},),
                )
              ],
            ),
            Container(
              child: Column(
                children: List.generate(daftar.length, (index) {
                  return newsWidget(daftar[index]);
                }),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget newsWidget(Berita news) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(berita: news)),
        );
      },
      child: ListTile(
        title: Text(
          news.judul,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(news.waktu),
        trailing: Text(news.tipe),
      ),
    );
  }
}
