import 'package:flutter/material.dart';
import 'package:beritax2/constant.dart';


class TitleBar extends AppBar {
  TitleBar()
      : super(
            elevation: 1,
            backgroundColor: ColorPalette.green,
            flexibleSpace: _buildGojekAppBar());

  static Widget _buildGojekAppBar() {
    return new SafeArea(
      child:Container(
      padding: EdgeInsets.only(left: 50.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
      new Text("PORTAL BERITA", style: TextStyle(
        color:Colors.white,
        fontSize: 25.0,
        fontWeight: FontWeight.w700) ,),
       new Image.asset("assets/images/logo.png")
        ]
        )
        )
        );
  
  }
}