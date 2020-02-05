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
      padding: EdgeInsets.only(left: 50.0, top: 15.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(),
          IconButton(icon: Icon(Icons.search),
          onPressed: () {})
        ]
        )
        )
        );
  
  }
}