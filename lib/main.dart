import 'package:flutter/material.dart';
import 'package:beritax2/lancher/launcher.dart';
import 'package:beritax2/constant.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Push-ing News',
      theme : new ThemeData(
        fontFamily: 'Monseratt',
        primaryColor: ColorPalette.green,
        accentColor: ColorPalette.green,
        
      ),
      home: new LauncherPage(),
      
    );
  }
}
