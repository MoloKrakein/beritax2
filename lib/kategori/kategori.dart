import 'package:flutter/material.dart';
import 'package:beritax2/beranda/appbar.dart';
// import 'package:beritax2/constant.dart';

class Kategori extends StatefulWidget {
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(),
      body: Container(
        child: Column(
          children: <Widget>[
 Container(
            child: ListTile(
              leading: Icon(
                Icons.drive_eta,
                color: Colors.black54,
              ),
              title: Text(
                "Lalu Lintas",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black26)
              )
            ),
          ),
           Container(
            child: ListTile(
              leading: Icon(
                Icons.restaurant,
                color: Colors.black54,
              ),
              title: Text(
                "Kuliner",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black26)
              )
            ),
          ),

           Container(
            child: ListTile(
              leading: Icon(
                Icons.person_pin_circle,
                color: Colors.black54,
              ),
              title: Text(
                "Artis",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black26)
              )
            ),
          ),
          ]
        ),
      ),
    );
  }
  
}