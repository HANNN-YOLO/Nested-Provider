import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try_nested/screens/afterawal.dart';
import 'package:try_nested/screens/sementaraawal.dart';
import './screens/awal.dart';
import 'package:provider/provider.dart';
import './providers/barangku.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Barangku(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Awal(),
        // Sementaraawal(),
        routes: {
          Awal.nameroute: (ctx) => Awal(),
          Afterawal.nameroute: (ctx) => Afterawal(),
          Sementaraawal.nameroute: (ctx) => Sementaraawal(),
        },
      ),
    );
  }
}