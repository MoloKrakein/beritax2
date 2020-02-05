// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';




class Example extends StatefulWidget {
  _Example createState() => _Example();
}

class _Example extends State<Example> {
  @override
  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Choo choo",
        currentButton: FloatingActionButton(
          heroTag: "train",
          backgroundColor: Colors.redAccent,
          mini: true,
          child: Icon(Icons.train),
          onPressed: () {},
        )));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
          onPressed: () {},
            heroTag: "airplane",
            backgroundColor: Colors.greenAccent,
            mini: true,
            child: Icon(Icons.airplanemode_active))));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
          onPressed: (){},
            heroTag: "directions",
            backgroundColor: Colors.blueAccent,
            mini: true,
            child: Icon(Icons.directions_car))));

    return Scaffold(
        floatingActionButton: UnicornDialer(
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
            parentButtonBackground: Colors.redAccent,
            orientation: UnicornOrientation.VERTICAL,
            parentButton: Icon(Icons.add),
            childButtons: childButtons),
        appBar: AppBar(),
        body: Center(child: RaisedButton(
          onPressed: () {
            setState(() {});
          },
                  )));
  }
}















// class CircleNav extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton:
      
//     );
//   }
// }
      // Stack(children: <Widget>[ SpeedDial(
      //   marginRight: 18,
      //   marginBottom: 20,
      //   animatedIcon: AnimatedIcons.menu_close,
      //   visible: true,
      //   closeManually: false,
      //   curve: Curves.bounceIn,
      //   overlayColor: Colors.black12,
      //   shape: CircleBorder(),
      //   children: [
      //     SpeedDialChild(
      //       child: Icon(Icons.mic),
      //       backgroundColor: Colors.purple,
      //       label: 'Contoh',
      //     )
      //   ],
      // )
      // ],)