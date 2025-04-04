import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sementaraawal extends StatelessWidget{
  static const nameroute = "/Sementaraawal";
  final List<Text> mytext = List.generate(
      50,
      (index) => Text(
        "${index + 1}",
        style: TextStyle(
          fontSize: 50
        ),
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: NetworkImage("https://i.pinimg.com/474x/10/3d/96/103d9628474de810a9cb66beac6984f8.jpg"),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )
          ),
        ),
      ),
      body: ListView(
        children: [listContainer2(),...mytext,listContainer1()],
      ),
    );
  }

  Container listContainer1() => Container(height: 100, color: Colors.red,);
  Container listContainer2() => Container(height: 100, color: Colors.yellow,);
}