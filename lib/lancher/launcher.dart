import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beritax2/beranda/test.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override

  void initState(){
    super.initState();
    startLaunching();
  }
  startLaunching() async{
    var duration = const Duration(seconds: 6);
    return new Timer(duration, (){
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        return new Kepencet();
      }
      ));
    return new Kepencet();
    });
  }

  Widget build(BuildContext context) {
   return Scaffold(
    body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg/bgpurple.jpg"),fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children : <Widget>[
                    CircleAvatar(
                      backgroundColor : Colors.white,
                      radius: 75.0,
                      child: Image.asset('assets/images/logo.png')
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    )
                    ,Text(
                      "Push-ink",style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.bold,),
                    ),
                    Text("Portal Berita Terpercaya Dan Up-to-Date",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))
                  ]
                ),
              )
            )
            ,Expanded(flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(backgroundColor: Colors.yellow),
                Padding(padding: EdgeInsets.only(top: 20.0),
                ),
              Text("Harap Tunggu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,)
              )],
            ) ,)

          ],)
        )]
    )
    );
  }
}